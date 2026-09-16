using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlantBed : MonoBehaviour
{
    List<Plant> plants = new List<Plant>();
    [SerializeField] PlantSpot[] plantSpots;

    void Plant(PlantData data, int spotNumber)
    {
        GameObject plantObject = Instantiate(data.growthStages[0].prefab, plantSpots[spotNumber].transform);
        Plant plant = plantObject.GetComponent<Plant>();
        plants.Add(plant);
        plant.Initialize(this);
    }

     
}
