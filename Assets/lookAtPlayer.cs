using System.Collections;
using System.Collections.Generic;
using HoloPlaySDK;
using UnityEngine;

namespace HoloPlaySDK_Tests
{
	public class lookAtPlayer : MonoBehaviour {
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
			transform.localEulerAngles = new Vector3(-10f + ((viewIndex / HoloPlay.Config.numViews) * 25), -150f + ((viewIndex / HoloPlay.Config.numViews) * 70), 21f + ((viewIndex / HoloPlay.Config.numViews) * -1));

	}
}
}
