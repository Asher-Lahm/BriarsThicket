using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Inventory : MonoBehaviour
{
    public List<InventoryEntry> items = new List<InventoryEntry>();
    public int money;

    public void AddItemToInventory(InventoryItem item, int amount) {
        InventoryEntry existing = items.Find(x => x.item == item);

        if (existing != null)
        {
            existing.amount += amount;
            print($"{existing.item.itemName}, {existing.amount}");
        } 
        else
        {
            items.Add(new InventoryEntry {item = item, amount = amount});
        }
    }

    public bool RemoveItemFromInventory(InventoryItem item, int amount)
    {
        InventoryEntry existing = items.Find(x => x.item == item);

        if (existing != null)
        {
            if (existing.amount - amount >= 0)
            {
                existing.amount -= amount;
                if (existing.amount == 0)
                {
                    items.Remove(existing);
                }
                return true;
            }
            else
            {
                return false;
            }
        }
        else
        {
            return false;
        }
    }

    public List<InventoryEntry> GetInventoryItems<T>() where T : InventoryItem
    {
        List<InventoryEntry> outputList = items.FindAll(entry => entry.item is T);
        return outputList;
    }
}
