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
    List<Button> buttons = new List<Button>();

    public void Initialize<T>(T[] items, Action<T> callback) where T : Item
    {
        Button cancelButton = this.initialSelection.GetComponent<Button>();
        buttons.Add(cancelButton);
        onItemSelected = item => callback((T)item);
        int i = 1;
        foreach (T item in items)
        {
            GameObject buttonObject = Instantiate(buttonPrefab, itemContainer);
            Button button = buttonObject.GetComponent<Button>();
            ItemSelectButton cButton = buttonObject.GetComponent<ItemSelectButton>();
            cButton.imageObject.sprite = item.texture;
            cButton.optionName = item.itemName;
            button.onClick.AddListener(() => SelectItem(item));
            buttons.Add(button);
            Navigation currentNav = button.navigation;
            Navigation prevNav = buttons[i - 1].navigation;
            prevNav.selectOnLeft = button;
            currentNav.selectOnRight = buttons[i - 1];
            i++;
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
