using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlantSpot : MonoBehaviour
{
    public Vector2Int position;
    public Plant plant;
    public GameObject plantPrefab;

    public void Plant(PlantData plantData)
    {
        GameObject plantObject = Instantiate(plantPrefab, transform);
        plant = plantObject.GetComponent<Plant>();
        plant.Initialize(plantData);
    }

    public void RemovePlant()
    {
        Destroy(plant.gameObject);
    }
}
