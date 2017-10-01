using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class bounce : MonoBehaviour {
	private Transform bouncing;
	// Use this for initialization
	void Start () {
		bouncing = GetComponent<Transform>();
	}
	
	// Update is called once per frame
	void Update () {
		bouncing.localScale = new Vector3 (bouncing.localScale.x + Mathf.Sin (Time.time), bouncing.localScale.y + Mathf.Sin (Time.time), bouncing.localScale.z + Mathf.Sin (Time.time));
	}
}
