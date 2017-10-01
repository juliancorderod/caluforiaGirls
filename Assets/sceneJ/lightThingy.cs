using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using HoloPlaySDK;

public class lightThingy : MonoBehaviour {

    Light l;

    private void Start()
    {
        l = GetComponent<Light>();
    }


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
		
     //   transform.localEulerAngles = new Vector3(0,20+((viewIndex / HoloPlay.Config.numViews) * 60), 0);
        l.intensity = (viewIndex / HoloPlay.Config.numViews) * 10;

	}

}
