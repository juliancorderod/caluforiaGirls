using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class grow : MonoBehaviour {

	public int speedDivider;

	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
	//	int rand = Random.Range (10, 20);
		gameObject.transform.localScale += new Vector3 (0, 1, 0) * Time.deltaTime/speedDivider;
	}
}
