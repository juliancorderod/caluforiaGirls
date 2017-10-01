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

        if (tim > timeHeld){
           
            SceneManager.LoadScene(sceneName);
        }

        Debug.Log(tim);
		
	}


    private void OnTriggerStay(Collider other)
    {
		tim += Time.deltaTime;
		Debug.Log("enter");
    }
    private void OnTriggerExit(Collider other)
    {
        tim = 0;
        Debug.Log("exit");
    }
}
