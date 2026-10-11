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
    PlantData selectedPlant;
    [SerializeField] GameObject plantButton;
    [SerializeField] GameObject removeButton;
    [SerializeField] ItemSelectorHorizontal itemSelectorPrefab;
    Inventory inventory;

    public void Awake()
    {
        follower = GetComponent<WorldUIFollower>();
    }

    public void Initialize(PlantSpot spot, Inventory inventory)
    {
        this.spot = spot;
        this.inventory = inventory;
        follower.SetTarget(spot.transform);
    }

    public void RemovePlant()
    {
        spot.RemovePlant();
    }

    public void Plant(SeedItem seed)
    {
        print("Menu Plant");
        spot.Plant(seed.PlantToGrow);
    }

    public void spawnSeedSelector()
    {
        ItemSelectorHorizontal selectorMenu = Instantiate(itemSelectorPrefab, transform);
        selectorMenu.Initialize(inventory.GetItems<SeedItem>(), Plant);
    }
}
