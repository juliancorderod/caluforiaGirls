using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class palmMan : MonoBehaviour {

   public GameObject palmObj;

	// Use this for initialization
	void Start () {

        for (int i = 0; i < 40;i ++){

            Instantiate(palmObj, new Vector3(Random.Range(-0.0f, 45.0f),-6, (i*20) + 20), Quaternion.identity);

        }
		
	}
	
	// Update is called once per frame
	void Update () {
		
	}
}
