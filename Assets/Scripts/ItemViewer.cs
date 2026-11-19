using System.Collections;
using System.Collections.Generic;
using UnityEngine;

using System;
using UnityEngine.EventSystems;
using UnityEngine.UI;

public class ItemViewer : MonoBehaviour
{
    [SerializeField] Transform buttonContainer;
    Button[] buttons;

    protected Coroutine centerCoroutine;
    public ItemViewerButton selectedItem;

    public event Action<ItemViewerButton> ItemUpdated;

    public void Initialize()
    {
        buttons = new Button[buttonContainer.childCount];

        for (int i = 0; i < buttonContainer.childCount; i++)
        {
            buttons[i] = buttonContainer.GetChild(i).GetComponent<Button>();
        }

        foreach (Button button in buttons)
        {
            ItemViewerButton cButton = button.GetComponent<ItemViewerButton>();
            cButton.Initialize(this);
        }
    }
    public void UpdateSelectedItem(ItemViewerButton newSelect)
    {
        selectedItem = newSelect;
        ItemUpdated?.Invoke(selectedItem);
    }

    public virtual void PopulateItems(InventoryEntry[] items)
    {
        ClearItems();
        int i = 0;
        foreach (InventoryEntry entry in items)
        {
            Item item = entry.item;
            Button button = buttons[i];
            ItemViewerButton cButton = button.GetComponent<ItemViewerButton>();
            cButton.UpdateItem(entry);

            i++;
        }
    }

    public virtual void ClearItems()
    {
        if (buttons == null)
            return;
        foreach (Button button in buttons)
        {
            ItemViewerButton cButton = button.GetComponent<ItemViewerButton>();
            cButton.UpdateItem(null);
        }
    }
}
