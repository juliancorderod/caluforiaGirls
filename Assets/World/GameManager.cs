using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GameManager : MonoBehaviour {

	[Header("Grid Settings")]
	public Vector3 startingLocation;

	public int gridSizeX;
	public int gridSizeZ;

	public float gridIncrementX;
	public float gridIncrementZ;

	public float visibleGridDistance;
	//public int squareCount;

	[Header("Arrays")]
	public Block[] blocks;
	public GameObject[] squares;
	public Pool squarePool;

	[Header("Instances")]
	public GameObject squareInstance;
	public Transform player;
	//public GameObject testCube;


	public bool make = true;

	// Use this for initialization
	void Start () {

		squarePool = new Pool(squareInstance);

		blocks = new Block[gridSizeX * gridSizeZ];
		squares = new GameObject[100];

		for (int i = 0; i < squares.Length; i++) {

			squares [i] = Instantiate (squareInstance, new Vector3(999,999,999), Quaternion.identity) as GameObject;
		}

		int xGrid = 0;
		int zGrid = 0;

		float xLoc = startingLocation.x;
		float zLoc = startingLocation.z;

		Vector3 locVector = new Vector3 ();

		for (int i = 0; i < blocks.Length; i++) {

			if (xGrid < gridSizeX) {

				blocks [i] = new Block (new Vector3 (xLoc, 0, zLoc));

				xGrid++;
				xLoc += gridIncrementX;
			}	
			else {

				xGrid = 0;
				xLoc = 0;

				zGrid++;
				zLoc += gridIncrementZ;

				blocks [i] = new Block (new Vector3 (xLoc, 0, zLoc));

				xGrid++;
				xLoc += gridIncrementX;
			}
		}

		int pondCounter = 0;
		bool makePonds = true;

		while (makePonds) {

			makePonds = false;

			blocks [Random.Range(0,blocks.Length)].type = Block.Type.Pond;
			pondCounter++;

			if (pondCounter < 30) { makePonds = true; }
		}

		/*
		for (int i = 0; i < squares.Length; i++) {
		
			squares [i].transform.position = blocks [i].location;
			squares [i].GetComponent<Renderer> ().material.color = blocks [i].color;
		}
		*/

		//for (int i = 0; i < blocks.Length; i++) {

		//	GameObject cube = Instantiate (testCube, blocks [i].location, Quaternion.identity)as GameObject;
		//}
	}

	// Update is called once per frame
	void Update () {

		//for (int i = 0; i < blocks.Length; i++) {

		//	if (blocks [i].location.x < player.position.x + visibleGridSize) {

		// GameObject square = squarePool.retrieve();
		// sqaure.transform.position = blocks[i].loc...
		//	}
		//

		if (make) {

			for (int i = 0; i < blocks.Length; i++) {

				float distanceSquared = Vector3.SqrMagnitude(blocks[i].location-player.transform.position);

				if (distanceSquared < visibleGridDistance*visibleGridDistance && blocks [i].instantiated == false) {
					blocks[i].instantiation = squarePool.Retrieve();
					blocks[i].instantiation.transform.position = blocks[i].location;
					blocks[i].instantiated = true;

				}
				else if(distanceSquared >= visibleGridDistance*visibleGridDistance&& blocks[i].instantiated == true){

					squarePool.Release(blocks[i].instantiation);
					blocks[i].instantiation = null;
					blocks[i].instantiated = false;
				}
			}

			/*
			for (int i = 0; i < squarePool.usedThings.Length; i++) {
			
				if (squarePool.usedThings [i] != null) {
				
					float distance = Vector3.Distance(squarePool.usedThings[i].transform.position, player.transform.position);
					if (distance > 100) {

						squarePool.Release(squarePool.usedThings[i]);
					}
				}
			}
			*/
		}
	}
}

[System.Serializable]
public class Block{

	public Vector3 location;
	public Type type;
	public Color color;

	public bool instantiated;
	public GameObject instantiation;

	public Block(Vector3 locSetting){

		location = locSetting;
		color = new Color (Random.value, Random.value, Random.value, 1);
	}

	public enum Type{

		Grass, Pond
	};
}

//[System.Serializable]
public class Pool : MonoBehaviour{

	public GameObject[] things = new GameObject[1000];
	public GameObject[] usedThings = new GameObject[1000];
	private GameObject thingInstance;
    
    public int warpFrameCount;

    public Pool(GameObject instance){

		thingInstance = instance;

		for (int i = 0; i < things.Length; i++) {

			things [i] = Instantiate (thingInstance, new Vector3(999,999,999), Quaternion.identity) as GameObject;
			things [i].SetActive (false);
		}
	}

	public GameObject Retrieve(){

		Debug.Log ("Retrieving square");

        

        int availableIndex = 0;

		for (int i = 0; i < things.Length; i++) {

			if (things[i] != null) {

				availableIndex = i;
				usedThings [i] = things[i];
                StartCoroutine(WarpIn(usedThings[i]));

				things [i] = null;

				break;
			}
		}

		return usedThings[availableIndex];
	}

	public void Release(GameObject released){
       

		released.transform.position = new Vector3(999,999,999);

		Debug.Log ("Releasing square " + released.transform.position);

		for (int i = 0; i < usedThings.Length; i++) {

			if (usedThings [i] == released) {

				things [i] = released;
				usedThings [i] = null;
                StartCoroutine(WarpOut(things[i].gameObject));

                break;
			}
		}
	}

    IEnumerator WarpIn (GameObject incomingTile)
    {
        incomingTile.SetActive(true);
        float xzScale = 2 / (warpFrameCount + 1);
        float yScale = 1 / (warpFrameCount + 1);

        incomingTile.transform.localScale = new Vector3(xzScale, yScale, xzScale);

        for (int i = 0; i < warpFrameCount; i++) {
            yield return new WaitForEndOfFrame();
            incomingTile.transform.localScale += new Vector3(xzScale, yScale, xzScale);
        }
        
    }

    IEnumerator WarpOut (GameObject outgoingTile)
    {
        float xzScale = 2 / (warpFrameCount + 1);
        float yScale = 1 / (warpFrameCount + 1);

        for (int i = 0; i < warpFrameCount; i++)
        {
            yield return new WaitForEndOfFrame();
            outgoingTile.transform.localScale -= new Vector3(xzScale, yScale, xzScale);
        }

        outgoingTile.SetActive(false);
    }
}


