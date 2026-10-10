using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class ItemSelectorHorizontal : Menu
{
    private Action<Item> onItemSelected;
    [SerializeField] Transform itemContainer;
    [SerializeField] GameObject buttonPrefab;

    public void Intialize(Item[] items, Action<Item> callback)
    {
        onItemSelected = callback;

        foreach (Transform child in itemContainer)
        {
            Destroy(child.gameObject);
        }

        foreach (Item item in items)
        {
            GameObject buttonObject = Instantiate(buttonPrefab, itemContainer);
            Button button = buttonObject.GetComponent<Button>();
            ItemSelectButton cButton = buttonObject.GetComponent<ItemSelectButton>();
            cButton.imageObject.sprite = item.texture;
            cButton.item = item;
            button.onClick.AddListener(() => SelectItem(item));
        }
        base.Open();
    }

    private void SelectItem(Item item)
    {
        Action<Item> callback = onItemSelected;
        onItemSelected = null;

        callback?.Invoke(item);

        base.Close();
    }
}
