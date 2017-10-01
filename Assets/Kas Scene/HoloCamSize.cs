using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using HoloPlaySDK;
using UnityEngine.SceneManagement;

public class HoloCamSize : MonoBehaviour {

    private Transform player_transform;
    HoloPlay holoCam;
    public float endPosY;
    public float endRotX;
    public float endSize;
    Vector3 playerEndPos;
    float currentDistance;
    float lastDistance;

	void Start () {
        player_transform = GameObject.FindGameObjectWithTag("Player").transform;
        holoCam = GetComponent<HoloPlay>();
        playerEndPos = new Vector3 (0, 0, 99);
	}
	
	void Update () {
        float currentDist = Vector3.Distance(new Vector3(0,0, player_transform.position.z), playerEndPos);
        if(currentDist > 1 && currentDist < lastDistance)
        {
            if(holoCam.transform.position.y < endPosY)
            {
                holoCam.transform.localPosition += new Vector3 (0,3 * Time.deltaTime,0);
            }
            if (holoCam.transform.rotation.x > endRotX)
            {
                holoCam.transform.localEulerAngles -= new Vector3(3 * Time.deltaTime, 0, 0);
            }
            if(holoCam.size < endSize)
            {
                holoCam.size += 7.5f * Time.deltaTime;
            }
        }
        if(currentDist < 1)
        {
            StartCoroutine(LoadOverWorld());
        }


        lastDistance = currentDist;
	}
    IEnumerator LoadOverWorld()
    {
        yield return new WaitForSeconds(5);
        SceneManager.LoadScene("overWorldFinal");

    }
}
