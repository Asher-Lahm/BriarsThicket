using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;
using UnityEngine.EventSystems;
using UnityEngine.UI;

public class ItemSelectButton : MonoBehaviour, ISelectHandler, IPointerEnterHandler
{
    public string optionName;
    [TextArea]
    public string optionDescription;
    public Image bgObject;
    public Image imageObject;
    public ItemSelector itemSelector;
    protected InventoryEntry entry;
    public Item preItem;
    public bool updateUI = true;
    public Color contentColor = new Color(1, 1, 1);

    public virtual void Initialize(InventoryEntry inItem, ItemSelector selector)
    {
        if (inItem != null)
        {
            entry = inItem;
            optionName = entry.item.itemName;
            optionDescription = entry.item.itemDescription;
            imageObject.sprite = entry.item.texture;
            UpdateVisuals();
        }
        
        itemSelector = selector;
    }

    public virtual void UpdateVisuals()
    {
        imageObject.color = contentColor;
        bgObject.color = contentColor;
        imageObject.color = contentColor;
    }

    public void OnPointerEnter(PointerEventData eventData)
    {
        HighlightItem();
    }

    public void OnSelect(BaseEventData eventData)
    {
        HighlightItem();
        itemSelector.CenterButton(
            GetComponent<RectTransform>()
        );
    }

    public void OnPointerExit(PointerEventData eventData)
    {

    }

    protected void HighlightItem()
    {
        itemSelector.UpdateSelectedItem(this);
    }
}
