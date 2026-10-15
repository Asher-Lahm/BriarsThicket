using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using TMPro;

public class ItemSelectorHorizontal : Menu
{
    private Action<Item> onItemSelected;
    [SerializeField] Transform itemContainer;
    [SerializeField] GameObject buttonPrefab;
    [SerializeField] Button clickBlock;
    [SerializeField] TextMeshProUGUI itemNameText;
    List<Button> buttons = new List<Button>();

    public void Initialize<T>(InventoryEntry[] items, Action<T> callback) where T : Item
    {
        Button cancelButton = this.initialSelection.GetComponent<Button>();
        buttons.Add(cancelButton);
        cancelButton.onClick.AddListener(() => SelectItem(null));
        clickBlock.onClick.AddListener(() => SelectItem(null));
        onItemSelected = item => callback((T)item);
        int i = 1;
        foreach (InventoryEntry entry in items)
        {
            T item = (T)entry.item;
            GameObject buttonObject = Instantiate(buttonPrefab, itemContainer);
            Button button = buttonObject.GetComponent<Button>();
            ItemSelectButton cButton = buttonObject.GetComponent<ItemSelectButton>();
            cButton.imageObject.sprite = item.texture;
            cButton.optionName = item.itemName;
            cButton.itemNameText = itemNameText;
            cButton.UpdateQuantity(entry.amount);
            button.onClick.AddListener(() => SelectItem(item));
            buttons.Add(button);

            Navigation currentNav = button.navigation;
            Navigation prevNav = buttons[i - 1].navigation;
            prevNav.selectOnRight = button;
            currentNav.selectOnLeft = buttons[i - 1];
            button.navigation = currentNav;
            buttons[i - 1].navigation = prevNav;

            i++;
        }

        if (buttons.Count > 1)
        {
            ChangeInitialSelection(buttons[1].gameObject);
        }
        base.Open();
    }

    private void SelectItem(Item item)
    {
        Action<Item> callback = onItemSelected;
        onItemSelected = null;

        callback?.Invoke(item);

        base.Close();
        Destroy(this.gameObject);
    }
}
