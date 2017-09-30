using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using HoloPlaySDK;

public class InputManager : depthTouchTarget {

	static InputManager instance;
	public static InputManager Instance
	{
		get
		{
			return instance;
		}
		private set
		{
			instance = value;
		}
	}

	//Allowing certain touches only
	List<int> validTouchIndexes = new List<int>();

	/// <summary>
	/// The current touch count.
	/// </summary>
	[HideInInspector] public int touchCount;

	[SerializeField]
	Vector3 detectionRange = new Vector3(5f, 5f, 5f);
	Vector3 startDetectionRange;

	float hpStartSize;

	int lastFrameTouchCount = 0;

	// Use this for initialization
	void Awake () {
		if (Instance == null)
			Instance = this;
		else
			Destroy (gameObject);
		
		hpStartSize = HoloPlay.Main.size;
		startDetectionRange = detectionRange;
		StartCoroutine (SetLastTouchPos ());
	}

	//Reset the last frame touch count at the end of each frame
	IEnumerator SetLastTouchPos(){
		while (true) {
			yield return new WaitForEndOfFrame ();
			lastFrameTouchCount = validTouchIndexes.Count;
		}
	}

	/// <summary>
	/// Checks if a valid input began this frame at a specified index (default 0).
	/// </summary>
	/// <returns><c>true</c>, if input initially occured in this frame, <c>false</c> otherwise.</returns>
	/// <param name="touchIndex">Touch index to check has begun.</param>
	public bool InputBegan(int touchIndex = 0){
	
		bool newTouch = false;

		if (lastFrameTouchCount == touchIndex && validTouchIndexes.Count > touchIndex)
			newTouch = true;

		return newTouch;
	}

	/// <summary>
	/// Checks if there is currently valid input.
	/// </summary>
	/// <returns><c>true</c>, if is there is input, <c>false</c> otherwise.</returns>
	public bool ThereIsInput(){
		if (validTouchIndexes.Count > 0)
			return true;
		else
			return false;
	}

	/// <summary>
	/// There is no longer valid input at specified index (default 0).
	/// </summary>
	/// <returns><c>true</c>, if there are no longer any valid touches this frame, <c>false</c> otherwise.</returns>
	/// <param name="touchIndex">Touch index to check has ended.</param>
	public bool InputEnded(int touchIndex = 0){
		if (lastFrameTouchCount > touchIndex && validTouchIndexes.Count <= touchIndex) {
			return true;
		}

		return false;
	}

	/// <summary>
	/// Gets the touch position for the specified index.
	/// </summary>
	/// <returns>The touch position.</returns>
	/// <param name="index">Index.</param>
	/// <param name="space">Space.</param>
	public Vector3 GetTouchPosition(int index, Space space = Space.World){
		if (ThereIsInput ()) {
			if (space == Space.World)
                return RealsenseCalibrator.Instance.GetWorldPos (validTouchIndexes [0]);
			else
				return RealsenseCalibrator.Instance.GetLocalizedPos (validTouchIndexes [0]);
		}

		Debug.LogError ("No valid touches! Make sure you're only requesting when ThereIsInput() is true.");
		return Vector3.zero;
		
	}

	/// <summary>
	/// Gets the average position of the touches.
	/// </summary>
	/// <returns>The average position.</returns>
	/// <param name="worldSpace">If set to <c>world</c>, returns world space coordinates.</param>
	public Vector3 GetAveragePosition(Space space = Space.World)
	{
		Vector3 pos = Vector3.zero;

		for(int i = 0; i < validTouchIndexes.Count; i++)
		{
			if (space == Space.World)
                pos += RealsenseCalibrator.Instance.GetWorldPos(validTouchIndexes[i]);
			else
				pos += RealsenseCalibrator.Instance.GetLocalizedPos(validTouchIndexes[i]);
		}

		pos /= validTouchIndexes.Count;

		return pos;
	}

	//Setting valid touches any time there are touches picked up by the RealSense
	public override void onDepthTouch(List<depthTouch> touches)
	{
		SetValidTouches(touches);
	}

	//Set the list of valid touches and the end count by checking touches against the detection range
	void SetValidTouches(List<depthTouch> touchList)
	{
		validTouchIndexes.Clear();
		for (int i = 0; i < touchList.Count; i++)
		{
			if (InRange(RealsenseCalibrator.Instance.GetWorldPos(i)))
				validTouchIndexes.Add(i);
		}

		touchCount = validTouchIndexes.Count;
	}

	/// <summary>
	/// Updates the detection range when the HoloPlay size is changed.
	/// </summary>
	public void UpdateDetectionRange(){
		detectionRange = startDetectionRange * HoloPlay.Main.size / hpStartSize;
	}

	/// <summary>
	/// Checks if a position is in range.
	/// </summary>
	/// <returns><c>true</c>, if position is in the detection range, <c>false</c> otherwise.</returns>
	/// <param name="pos">Position.</param>
	bool InRange(Vector3 pos)
	{
		pos = HoloPlay.Main.transform.InverseTransformPoint (pos);

		if (Mathf.Abs(pos.x) > detectionRange.x
			|| Mathf.Abs(pos.y) > detectionRange.y
			|| Mathf.Abs(pos.z) > detectionRange.z)
			return false;

		return true;
	}

	/// <summary>
	/// Checks if a position is in range.
	/// </summary>
	/// <returns><c>true</c>, if position is in the provided detection range around the provided center, <c>false</c> otherwise.</returns>
	/// <param name="pos">Position.</param>
	/// <param name="yourCenter">Your center.</param>
	/// <param name="yourDetectionRange">Your detection range.</param>
	bool InRange(Vector3 pos, Vector3 yourCenter, Vector3 yourDetectionRange)
	{
		pos -= yourCenter;

		if (Mathf.Abs(pos.x) > yourDetectionRange.x
			|| Mathf.Abs(pos.y) > yourDetectionRange.y
			|| Mathf.Abs(pos.z) > yourDetectionRange.z)
			return false;

		return true;
	}
}
