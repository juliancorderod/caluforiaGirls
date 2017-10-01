using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class colorPick : MonoBehaviour {

	// Use this for initialization
	void Start () {
		gameObject.GetComponent<MeshRenderer>().material.color = new Color (Random.Range(0f,0f), Random.Range (.1f,.4f), Random.Range(.1f,.2f), 1f);
	}

	
	// Update is called once per frame
	void Update () {
		
	}
}
