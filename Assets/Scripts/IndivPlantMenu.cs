using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.VFX;

public class IndivPlantMenu : MonoBehaviour
{
    PlantSpot spot;
    WorldUIFollower follower;
    Button button;
    Button buttonContainer;
    [SerializeField] PlantData selectedPlant;
    [SerializeField] GameObject plantButton;
    [SerializeField] GameObject removeButton;

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
        print("Menu Plant");
        spot.Plant(selectedPlant);
    }

    public void spawnSeedSelector()
    {

    }
}
