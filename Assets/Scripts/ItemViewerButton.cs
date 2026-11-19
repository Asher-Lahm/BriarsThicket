using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;
using UnityEngine.EventSystems;
using UnityEngine.UI;

public class ItemViewerButton : MonoBehaviour, ISelectHandler, IPointerEnterHandler
{
    public string optionName;
    [TextArea]
    public string optionDescription;
    public Image bgObject;
    public Image imageObject;
    public ItemViewer itemViewer;
    public InventoryEntry entry;
    public bool updateUI = true; 
    public TextMeshProUGUI itemQuantityText;

    public virtual void Initialize(ItemViewer viewer)
    {
        itemViewer = viewer;
        UpdateItem(null);
    }

    public virtual void UpdateItem(InventoryEntry inItem)
    {
        if (inItem != null)
        {
            imageObject.gameObject.SetActive(true);
            updateUI = true;
            entry = inItem;
            optionName = entry.item.itemName;
            optionDescription = entry.item.itemDescription;
            imageObject.sprite = entry.item.texture;
            itemQuantityText.text = $"{entry.amount}x";
            bgObject.color = Color.white;
        }
        else
        {
            imageObject.gameObject.SetActive(false);
            entry = null;
            updateUI = false;
            optionName = "";
            optionDescription = "";
            imageObject.sprite = null;
            itemQuantityText.text = "";
            bgObject.color = Color.gray;
        }
    }

    public void OnPointerEnter(PointerEventData eventData)
    {
        HighlightItem();
    }

    public void OnSelect(BaseEventData eventData)
    {
        HighlightItem();
    }

    public void OnPointerExit(PointerEventData eventData)
    {

    }

    protected void HighlightItem()
    {
        itemViewer.UpdateSelectedItem(this);
    }
}
