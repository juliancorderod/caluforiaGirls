﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

using HoloPlaySDK;


public class cubeTest : MonoBehaviour {

   // public Transform fingerPos;
    //bool initTouch = false;
    public Vector3 posOld, posNew;

    public bool turnNow;

    public bool canMove = false;
    Rigidbody r;

	// Use this for initialization
	void Start () {
        r = GetComponent<Rigidbody>();

	}
	
	// Update is called once per frame
	void Update () {

        if (InputManager.Instance.ThereIsInput())
        {
           posNew = InputManager.Instance.GetTouchPosition(0, Space.Self);
           // posNew = InputManager.Instance.GetAveragePosition(Space.Self);
        }


        //this is movementstuff
        if (posOld.z < posNew.z)
            canMove = true;
        else
            canMove = false;
        
        if (canMove)
            //	transform.position += new Vector3(0, 0, (posOld.z - posNew.z) * Time.deltaTime * 10);
            r.velocity += new Vector3(0, 0, (posNew.z - posOld.z) * Time.deltaTime * 100);
        else if (r.velocity.z > 0)
            r.velocity -= new Vector3(0, 0, Time.deltaTime * 15f);

        if (r.velocity.z < 0)
            r.velocity = Vector3.zero;








        posOld = posNew;
	}
}
