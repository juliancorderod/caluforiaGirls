using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class sproutColor : MonoBehaviour {

	// Use this for initialization
	void Start () {
		gameObject.GetComponent<MeshRenderer>().material.color = new Color (Random.Range(.1f,.8f), Random.Range (.1f,.8f), Random.Range(.1f,.8f), 1f);
	}
	
	// Update is called once per frame
	void Update () {
		
	}
}
