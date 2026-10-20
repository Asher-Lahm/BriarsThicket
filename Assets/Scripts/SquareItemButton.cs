using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;
using UnityEngine.EventSystems;
using UnityEngine.UI;

public class SquareItemButton : ItemSelectButton
{
    public TextMeshProUGUI itemQuantityText;

    protected override void UpdateVisuals()
    {
        itemQuantityText.text = $"{entry.amount}";
    }
}
