using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class IndivPlantMenu : MonoBehaviour
{
    PlantSpot spot;
    WorldUIFollower follower;
    Button button;
    Button buttonContainer;
    [SerializeField] PlantData selectedPlant;

    public void Awake()
    {
        follower = GetComponent<WorldUIFollower>();
    }

    public void Initialize(PlantSpot spot)
    {
        this.spot = spot;
        follower.SetTarget(spot.transform);
    }

    public void RemovePlant()
    {
        spot.RemovePlant();
    }

    public void Plant()
    {
        spot.Plant(selectedPlant);
    }
}
