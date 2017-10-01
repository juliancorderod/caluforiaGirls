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
			transform.localEulerAngles = new Vector3(14.29f + ((viewIndex / HoloPlay.Config.numViews) * -25), -80.02801f + ((viewIndex / HoloPlay.Config.numViews) * -70), 20.61f + ((viewIndex / HoloPlay.Config.numViews) * 1));

	}
}
}
