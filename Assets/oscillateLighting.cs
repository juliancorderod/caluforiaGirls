using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class oscillateLighting : MonoBehaviour {
	
	// Use this for initialization
	void Start () {
		GameObject lightGameObject = new GameObject("The Light");
		Light lightComp = lightGameObject.AddComponent<Light>();
		lightComp.color = Color.blue;

		
	}
	
	// Update is called once per frame
	void Update () {
		
	}
}
