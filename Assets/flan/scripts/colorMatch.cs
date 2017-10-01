using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class colorMatch : MonoBehaviour {

	public GameObject windowParent; 
	bool colorChanged;

	// Use this for initialization
	void Start () {
		colorChanged = false;
	}

	// Update is called once per frame
	void Update () {

		Color newColor = windowParent.GetComponent<Renderer>().material.color; 

		gameObject.GetComponent<Renderer> ().material.color = newColor;

		colorChanged = true;
	}
}


