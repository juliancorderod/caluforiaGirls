using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class rotate : MonoBehaviour {


	public Vector3 rotationVector;
	public int speed; 

	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
		
		
		gameObject.transform.eulerAngles += rotationVector * Time.deltaTime * speed; 
	}
}
