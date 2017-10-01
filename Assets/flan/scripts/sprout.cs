using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class sprout : MonoBehaviour {
 
	public GameObject Plant1;
	public GameObject Plant2;
	public GameObject Sprout; 
	public GameObject cursor; 
	public GameObject Grass; 

	List<GameObject> plantList = new List<GameObject>();

	bool instantiate; 

	// Use this for initialization
	void Start () {
		instantiate = false;

	}
	
	// Update is called once per frame
	void Update () {
		
	}

	void OnTriggerEnter (Collider collider ){
		
			
		

		if (collider.gameObject.tag == "cursor") {
			//while (plantList.Count < 60) {
			 
				Debug.Log ("hit");
				instantiate = true;
				Vector3 hitSpot = cursor.gameObject.transform.position; 

				if (instantiate == true) {
					int picker = Random.Range (1, 10);
					int rand = Random.Range (0, 360);

					if (picker < 6) {
						GameObject newSprout = (GameObject)Instantiate (Sprout, hitSpot, Quaternion.Euler (0, rand, 0));
						newSprout.transform.parent = Grass.transform; 
						instantiate = false; 
						plantList.Add (newSprout);
					}
					if ((picker >= 6) && (picker <= 8)) {
						GameObject newPlant1 = (GameObject)Instantiate (Plant1, hitSpot, Quaternion.Euler (0, rand, 0));
						newPlant1.transform.parent = Grass.transform; 
						instantiate = false;
						plantList.Add (newPlant1);
					}

					if (picker >= 9) {
						GameObject newPlant2 = (GameObject)Instantiate (Plant2, hitSpot, Quaternion.Euler (0, rand, 0));
						newPlant2.transform.parent = Grass.transform; 
						instantiate = false;
						plantList.Add (newPlant2);
					}
				}
			}
		//}

		if (plantList.Count >= 60) {
			Debug.Log ("60 PLANTS");
			SceneManager.LoadScene ("overWorldFinal"); 
		}

	}


}

