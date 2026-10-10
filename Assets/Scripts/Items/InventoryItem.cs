using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public abstract class InventoryItem : ScriptableObject
{
    public string itemName;
    [TextArea]
    public string itemDescription;
    public Sprite texture;
}
