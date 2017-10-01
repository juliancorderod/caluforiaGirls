using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class rotRoom : MonoBehaviour {

	public Vector3 posOld, posNew;

	public bool canMove, canMoveR, canMoveL = false;

	public float v;

	// Use this for initialization
	void Start()
	{

	}

	// Update is called once per frame
	void Update()
	{

		if (InputManager.Instance.ThereIsInput())
		{
			posNew = InputManager.Instance.GetTouchPosition(0, Space.Self);
		}


		//this is movementstuff
		if (posOld.z < posNew.z)
			canMove = true;
		else
			canMove = false;

		if (canMove)
		{
			v += (posNew.z - posOld.z) * Time.deltaTime * 5;

		}
		else if (v > 0)
			v -= Time.deltaTime * 2f;

		if (v < 0)
			v = 0;


		transform.position += transform.forward * v;



        if(posNew.x > 4){
            
        }



		posOld = posNew;
	}
}
