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
    ItemSelectorHorizontal selectorMenu;
    bool planting = false;

    public void Awake()
    {
        follower = GetComponent<WorldUIFollower>();
    }

    public void Initialize(PlantSpot spot, Inventory inventory)
    {
        this.spot = spot;
        this.inventory = inventory;
        follower.SetTarget(spot.transform);
        UpdateVisual();
    }

    public void RemovePlant()
    {
        spot.RemovePlant();
        UpdateVisual();
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

    public void spawnSeedSelector()
    {
        planting = true;
        selectorMenu = null;
        if (spot.plant != null)
            return;
        selectorMenu = Instantiate(itemSelectorPrefab, transform);
        selectorMenu.Initialize<SeedItem>(inventory.GetItems<SeedItem>(), Plant);
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

    private void UpdateVisual()
    {
        if (spot.plant != null)
        {
            removeButton.SetActive(true);
            plantButton.SetActive(false);
        }
        else if (planting)
        {
            removeButton.SetActive(false);
            plantButton.SetActive(false);
        }
        else
        {
            removeButton.SetActive(false);
            plantButton.SetActive(true);
        }
    }
}
