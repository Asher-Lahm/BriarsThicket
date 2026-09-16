using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BattleOptionsContainer : MonoBehaviour
{
    private List<GameObject> buttons = new List<GameObject>();
    [SerializeField] GameObject buttonPrefab;
    public void AddOptionButton(BriarAttackData data)
    {
        GameObject button = Instantiate(buttonPrefab, transform);
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
