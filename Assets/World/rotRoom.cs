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
        transform.eulerAngles += new Vector3(0, 2.5f * Time.deltaTime, 0);

	}
}
