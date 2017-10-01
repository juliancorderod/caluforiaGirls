using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using HoloPlaySDK;
using UnityEngine.SceneManagement;

public class activateScene : MonoBehaviour {

    float tim;
    public float timeHeld;
    public string sceneName;

	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {

        if (tim >= timeHeld){
            Debug.Log(sceneName + "active");
            SceneManager.LoadScene(sceneName);
        }
            
        
		
	}

    private void OnTriggerEnter(Collider other)
    {
        tim += Time.deltaTime;
       
    }
    private void OnTriggerExit(Collider other)
    {
        tim = 0;
    }
}
