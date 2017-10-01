using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class planeMan : MonoBehaviour {

    public GameObject planePrefab;

	// Use this for initialization
	void Start () {

        for (int i = 0; i < 20; i++){

            Instantiate(planePrefab, new Vector3(Random.Range(-10, 10), Random.Range(-10, 10), Random.Range(-10, 10)), Quaternion.Euler(0,0,90));
        }
		
	}
	
	// Update is called once per frame
	void Update () {
		
	}
}
