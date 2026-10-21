using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TMPro;
using UnityEngine.UI;

public class BattleOptionButton : ItemSelectButton
{
    [SerializeField] private TextMeshProUGUI itemNameText;
    [SerializeField] private GameObject energyImage;
    [SerializeField] private Transform energyContainer;
    public int energyCost;
    public BriarAttackData weaponItem;
    public void Initialize(InventoryEntry inItem, BriarAttackData weaponItem, ItemSelector selector)
    {
        if (inItem != null)
        {
            entry = inItem;
            this.weaponItem = weaponItem;
            this.energyCost = weaponItem.energyCost;
            optionName = weaponItem.itemName;
            optionDescription = weaponItem.itemDescription;
            imageObject.sprite = entry.item.texture;
            UpdateVisuals();
        }

        itemSelector = selector;
    }
    public override void UpdateVisuals()
    {
        base.UpdateVisuals();
        itemNameText.color = contentColor;
        itemNameText.text = $"{optionName}";
        int i = 0;
        while (i < energyCost)
        {
            Instantiate(energyImage, energyContainer);
            i++;
        }
    }
}
