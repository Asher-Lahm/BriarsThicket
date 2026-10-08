using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DontDestroy : MonoBehaviour
{
    public enum ObjectType
    {
        Player,
        Canvas,
        Inventory,
        Placeholders,
        GardenManager,
        NUM_TYPES //This should always be last on the list
    }
    public ObjectType objectType;

    private static GameObject[] persistentObjects = new GameObject[(int)ObjectType.NUM_TYPES];
    void Awake()
    {
        int objectIndex = (int)objectType;

        if (objectType == ObjectType.NUM_TYPES)
        {
            Debug.LogError("NUM_TYPES is not a valid object type.");
            return;
        }

        if (persistentObjects[objectIndex] == null)
        {
            persistentObjects[objectIndex] = gameObject;
            DontDestroyOnLoad(gameObject);
        }

        else if (persistentObjects[objectIndex] != gameObject)
        {
            Destroy(gameObject);
        }
    }
}
