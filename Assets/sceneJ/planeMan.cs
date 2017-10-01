using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class planeMan : MonoBehaviour {

    public GameObject planePrefab;

	// Use this for initialization
	void Start () {

        for (int i = 0; i < 20; i++){
            GameObject g = Instantiate(planePrefab, 
                                       new Vector3(Random.Range(10, 30), Random.Range(0, 5), Random.Range(1005, 1020)), Quaternion.Euler(20,0,0));
        }
		
	}
	
	// Update is called once per frame
	void Update () {
		
	}
}
