using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using HoloPlaySDK;

public class roomHoloPlayThingy : MonoBehaviour {



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
		
        transform.localEulerAngles = new Vector3(0,20+((viewIndex / HoloPlay.Config.numViews) * 60), 0);
       

	}

}
