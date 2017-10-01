using System.Collections;
using System.Collections.Generic;
using HoloPlaySDK;
using UnityEngine;

public class lookAtPlayer : MonoBehaviour {
	public Animation headTurn;
	//Make sure to subscribe when enabled and unsubscribe to prevent memory leaks
	void OnEnable()
	{
		HoloPlay.onViewRender += FlipCubeOnView;
	}

	void OnDisable()
	{
		HoloPlay.onViewRender -= FlipCubeOnView;
	}

	void FlipCubeOnView(int viewIndex)
	{
		headTurn["HeadAnimation"].normalizedTime = (viewIndex / HoloPlay.Config.numViews);
		//transform.localEulerAngles = new Vector3((viewIndex / HoloPlay.Config.numViews), (viewIndex / HoloPlay.Config.numViews), 0);

	}
}
