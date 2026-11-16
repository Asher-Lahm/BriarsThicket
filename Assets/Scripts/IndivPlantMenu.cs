using System;
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
    [SerializeField] GameObject harvestButton;
    [SerializeField] ItemSelectorHorizontal itemSelectorPrefab;
    Inventory inventory;
    ItemSelectorHorizontal selectorMenu;
    bool planting = false;
    bool plantable;
    bool harvestable;

    public Action onPlantRemoved;

    public void Awake()
    {
        follower = GetComponent<WorldUIFollower>();
    }

    public void Initialize(PlantSpot spot, Inventory inventory, bool inPlantable, bool isHarvestable)
    {
        plantable = inPlantable;
        harvestable = isHarvestable;
        this.spot = spot;
        this.inventory = inventory;
        follower.SetTarget(spot.transform);
        UpdateVisual();
    }

    public void RemovePlant()
    {
        spot.RemovePlant();
        UpdateVisual();
        onPlantRemoved?.Invoke();
    }

    public void Harvest()
    {
        spot.HarvestPlant(inventory);
        UpdateVisual();
        onPlantRemoved?.Invoke();
    }

    public void Plant(SeedItem seed)
    {
        if (seed != null)
        {
            selectorMenu = null;
            spot.Plant(seed.PlantToGrow);
            inventory.RemoveItemFromInventory(seed, 1);
        }
        planting = false;
        UpdateVisual();
    }

    public void SpawnSeedSelector()
    {
        planting = true;
        selectorMenu = null;
        if (spot.plant != null)
            return;
        selectorMenu = Instantiate(itemSelectorPrefab, transform);
        selectorMenu.Initialize<SeedItem, SeedItem>(inventory.GetItems<SeedItem>(), Plant);
        transform.SetAsLastSibling();
        UpdateVisual();
    }

    private void OnDestroy()
    {
        if (selectorMenu != null)
        {
            selectorMenu.Close();
            Destroy(selectorMenu.gameObject);
        }
    }

    public void BedEmpty()
    {
        harvestable = false;
        plantable = true;
        UpdateVisual();
    }

    private void UpdateVisual()
    {
        removeButton.SetActive(false);
        plantButton.SetActive(false);
        harvestButton.SetActive(false);

        if (planting)
        {
            return;
        }

        if (plantable)
        {
            if (spot.plant == null)
            {
                plantButton.SetActive(true);
            }
            else
            {
                removeButton.SetActive(true);
            }
            return;
        }

        if (spot.plant != null)
        {
            if (harvestable)
            {
                harvestButton.SetActive(true);
            }
            else
            {
                removeButton.SetActive(true);
            }
        }
    }
}
