using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class ShopItemSelect : ItemSelector
{
    public override void Initialize<T, S>(InventoryEntry[] items, Action<S> callback)
    {
        /*
        Button cancelButton = this.initialSelection.GetComponent<Button>();
        ItemSelectButton cancelCButton = this.initialSelection.GetComponent<ItemSelectButton>();
        buttons.Add(cancelButton);
        cancelButton.onClick.AddListener(() => SelectItem(null));
        cancelCButton.Initialize(null, this);
        */
        ScanForButtons();
        if (clickBlock != null)
            clickBlock.onClick.AddListener(() => SelectItem(null));

        onItemSelected = item => callback((S)item);
        int i = 1;
        foreach (InventoryEntry entry in items)
        {
            T item = (T)entry.item;
            GameObject buttonObject = Instantiate(buttonPrefab, itemContainer);
            Button button = buttonObject.GetComponent<Button>();
            ItemSelectButton cButton = buttonObject.GetComponent<ItemSelectButton>();
            cButton.Initialize(entry, this);
            button.onClick.AddListener(() => SelectItem(item));
            buttons.Add(button);

            NavToPrevButton(button, buttons[i - 1]);

            i++;
        }

        if (buttons.Count > 1)
        {
            ChangeInitialSelection(buttons[1].gameObject);
        }
        base.Open();
    }
}
