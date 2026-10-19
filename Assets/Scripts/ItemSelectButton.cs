using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;
using UnityEngine.EventSystems;
using UnityEngine.UI;

public class ItemSelectButton : MonoBehaviour, ISelectHandler, IPointerEnterHandler
{
    public string optionName;
    public Image bgObject;
    public Image imageObject;
    public int itemQuantity;
    public TextMeshProUGUI itemQuantityText;
    public TextMeshProUGUI itemNameText;
    public ItemSelector itemSelector;
    private Item item;

    public void UpdateQuantity(int newQuant)
    {
        itemQuantity = newQuant;
        itemQuantityText.text = $"{itemQuantity}";
    }

    public void Initialize(Item inItem, ItemSelector selector)
    {
        if (inItem != null)
        {
            item = inItem;
            print(inItem.itemName);
            print(item.itemName);
            optionName = item.itemName;
            imageObject.sprite = item.texture;
        }
        
        itemSelector = selector;
        itemNameText = selector.itemNameText;
    }

    public void OnPointerEnter(PointerEventData eventData)
    {
        ShowItemName();
    }

    public void OnSelect(BaseEventData eventData)
    {
        ShowItemName();
        itemSelector.CenterButton(
            GetComponent<RectTransform>()
        );
    }

    public void OnPointerExit(PointerEventData eventData)
    {

    }

    private void ShowItemName()
    {
        // Replace item.ItemName with your actual name property.
        itemNameText.text = optionName;
    }
}
