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
        selectorMenu = null;
        print("Menu Plant");
        spot.Plant(seed.PlantToGrow);
        UpdateVisual();
    }

    public void spawnSeedSelector()
    {
        selectorMenu = null;
        if (spot.plant != null)
            return;
        selectorMenu = Instantiate(itemSelectorPrefab, transform);
        selectorMenu.Initialize(inventory.GetItems<SeedItem>(), Plant);
        transform.SetAsLastSibling();
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
        else
        {
            removeButton.SetActive(false);
            plantButton.SetActive(true);
        }
    }
}
