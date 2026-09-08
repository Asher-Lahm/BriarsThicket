using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BattleOptionsContainer : MonoBehaviour
{
    private List<GameObject> buttons = new List<GameObject>();
    public void AddOptionButton(BattleActionData data)
    {
        GameObject button = Instantiate(data.prefab, transform);
        BattleOptionButton optionButton = button.GetComponent<BattleOptionButton>();
        optionButton.textObject.text = data.actionName;
        optionButton.optionImage.sprite = data.image;
        buttons.Add(button);
    }

    public void RemoveOptionButtons()
    {
        foreach (GameObject button in transform)
        {
            Destroy(button);
        }
    }
}
