using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TMPro;
using UnityEngine.UI;

public class BattleOptionButton : ItemSelectButton
{
    [SerializeField] private TextMeshProUGUI itemNameText;
    [SerializeField] private GameObject energyImage;
    [SerializeField] private Transform energyContainerPlant;
    [SerializeField] private Transform energyContainerBriar;
    public int energyCostPlant;
    public int energyCostBriar;
    public int energyCost;
    public BriarAttackData weaponItem;
    public Item parentItem;

    public void Awake()
    {
        if (weaponItem == null)
            return;
        if (weaponItem.attackOnPlant != null)
            energyCostPlant = weaponItem.plantEnergyCost;
        if (weaponItem.attackOnBriar != null)
            energyCostBriar = weaponItem.briarEnergyCost;
        energyCost = Mathf.Min(energyCostBriar, energyCostPlant);
        optionName = weaponItem.itemName;
        optionDescription = weaponItem.itemDescription;
        imageObject.sprite = weaponItem.texture;
        UpdateVisuals();
        BattleOptionsContainer battleOptions = (BattleOptionsContainer)itemSelector;
        //battleOptions.ManuallyAddButton(GetComponent<Button>());
    }
    public void Initialize(InventoryEntry inItem, BriarAttackData weaponItem, ItemSelector selector)
    {
        if (inItem != null && weaponItem != null)
        {
            entry = inItem;
            this.weaponItem = weaponItem;
            if (weaponItem.attackOnPlant != null)
                energyCostPlant = weaponItem.plantEnergyCost;
            if (weaponItem.attackOnBriar != null)
                energyCostBriar = weaponItem.briarEnergyCost;
            energyCost = Mathf.Min(energyCostBriar, energyCostPlant);
            optionName = weaponItem.itemName;
            optionDescription = weaponItem.itemDescription;
            parentItem = inItem.item;
            if (weaponItem.texture == null)
            {
                imageObject.sprite = entry.item.texture;
            }
            else
            {
                imageObject.sprite = weaponItem.texture;
            }
                UpdateVisuals();
        }

        itemSelector = selector;
    }
    public override void UpdateVisuals()
    {
        base.UpdateVisuals();
        itemNameText.color = contentColor;
        itemNameText.text = $"{optionName}";
        
        foreach (Transform child in energyContainerPlant)
        {
            Destroy(child.gameObject);
        }
        for (int i = 0; i < energyCostPlant; i++)
        {
            Instantiate(energyImage, energyContainerPlant);
        }
        if (energyCostBriar != energyCostPlant)
        {
            foreach (Transform child in energyContainerBriar)
            {
                Destroy(child.gameObject);
            }
            for (int i = 0; i < energyCostBriar; i++)
            {
                Instantiate(energyImage, energyContainerBriar);
            }
        }
    }
}
