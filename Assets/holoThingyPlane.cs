﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using HoloPlaySDK;

public class holoThingyPlane : MonoBehaviour {

    int val;
    MeshRenderer m;
    cubeTest cubeTestScript;

    private void Start()
    {
         val = Random.Range(0, 5);

        print(val);

        m = GetComponent<MeshRenderer>();

        cubeTestScript = GameObject.Find("Cube").GetComponent<cubeTest>();
    }

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

        if (val == 0)
        {
            m.material.color = Color.HSVToRGB((((viewIndex / HoloPlay.Config.numViews) * 10) + 200) / 255f, 0.7f, 0.7f);
            transform.localPosition = new Vector3((viewIndex / HoloPlay.Config.numViews) * 10, 0, 0);
        }
		if (val == 1)
		{
            m.material.color = Color.HSVToRGB(((viewIndex / HoloPlay.Config.numViews) * 200) / 255f, 0.7f,0.7f);
            transform.localEulerAngles = new Vector3((viewIndex / HoloPlay.Config.numViews) * 45, (viewIndex / HoloPlay.Config.numViews) * 45, 0);
		}
		if (val == 2)
		{
            m.material.color = Color.HSVToRGB((((viewIndex / HoloPlay.Config.numViews) * 100) + 100) / 255f, 0.7f, 0.7f);
			transform.localEulerAngles = new Vector3((viewIndex / HoloPlay.Config.numViews) * -45, (viewIndex / HoloPlay.Config.numViews) * -45, 0);
		}
		if (val == 3)
		{
			m.material.color = Color.HSVToRGB((((viewIndex / HoloPlay.Config.numViews) * 50) + 80) / 255f, 0.7f, 0.7f);
			transform.localEulerAngles = new Vector3(0, (viewIndex / HoloPlay.Config.numViews) * -90, 0);
		}
		if (val == 4)
		{
			m.material.color = Color.HSVToRGB((((viewIndex / HoloPlay.Config.numViews) * 100) + 100) / 255f, 0.7f, 0.7f);
			transform.localEulerAngles = new Vector3(0,0, (viewIndex / HoloPlay.Config.numViews) * -45);
		}
	

	}

    private void Update()
    {
        if(cubeTestScript.godStart)
        transform.position += new Vector3(0, Mathf.Sin(Time.time * 0.1f) * Time.deltaTime * (val * 0.1f), 0);
    }

}
