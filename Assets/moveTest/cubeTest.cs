using System.Collections;
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

    float tim = 0;
    bool godStart = false;

	// Use this for initialization
	void Start () {
        r = GetComponent<Rigidbody>();

	}
	
	// Update is called once per frame
	void Update () {

        if (transform.position.z < 990)
        {

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
                r.velocity += new Vector3(0, 0, (posNew.z - posOld.z) * Time.deltaTime * 75);
            else if (r.velocity.z > 0)
                r.velocity -= new Vector3(0, 0, Time.deltaTime * 20f);

            if (r.velocity.z < 0)
                r.velocity = Vector3.zero;








            posOld = posNew;
        }
        else{
            r.velocity = Vector3.zero;
            tim += Time.deltaTime;
            if (tim > 5)
            {
                godStart = true;
                Debug.Log(godStart);
            }
          
        }

		if (godStart)
		{
          
            transform.position = Vector3.MoveTowards(transform.position, new Vector3(transform.position.x, transform.position.y, 995), 0.1f);
		}
	}
}
