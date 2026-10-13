using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Windows;
using UnityEngine.UI;

public class DebugMenu : Menu
{
    [SerializeField] WeaponItem[] weapons;
    [SerializeField] SeedItem[] seeds;
    [SerializeField] FruitItem[] fruits;
    [SerializeField] GameObject buttonPrefab;
    [SerializeField] RectTransform seedsContainer;
    [SerializeField] RectTransform weaponsContainer;
    [SerializeField] RectTransform fruitsContainer;
    [SerializeField] Inventory inventory;

    private void Awake()
    {
        CreateButtons(seeds, seedsContainer);
        CreateButtons(weapons, weaponsContainer);
        CreateButtons(fruits, fruitsContainer);
    }

    private void CreateButtons(Item[] itemList, RectTransform container)
    {
        foreach (Item item in itemList)
        {
            GameObject buttonObject = Instantiate(buttonPrefab, container);
            Button button = buttonObject.GetComponent<Button>();
            CustomButton cButton = buttonObject.GetComponent<CustomButton>();
            button.onClick.AddListener(() => inventory.AddItemToInventory(item, 1));
            cButton.textObject.text = item.itemName;
            cButton.imageObject.sprite = item.texture;
        }
    }
}
