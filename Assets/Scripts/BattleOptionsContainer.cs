using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using TMPro;
using UnityEngine;
using UnityEngine.EventSystems;
using UnityEngine.UI;

public class BattleOptionsContainer : ItemSelector
{
    protected override IEnumerator CenterButtonNextFrame(RectTransform button)
    {

        yield return null;
        Canvas.ForceUpdateCanvases();

        if (button == null)
            yield break;


        Vector3 buttonWorldCenter =
            button.TransformPoint(button.rect.center);

        Vector3 buttonViewportCenter =
            viewport.InverseTransformPoint(buttonWorldCenter);


        float movement = buttonViewportCenter.y;


        Vector2 position = content.anchoredPosition;
        position.y -= movement;

        content.anchoredPosition = position;

        centerCoroutine = null;
    }

    public override void SelectForward()
    {
        if (selectedButton != null)
            EventSystem.current.SetSelectedGameObject(selectedButton.navigation.selectOnDown.gameObject);
    }

    public override void SelectBack()
    {
        if (selectedButton != null)
            EventSystem.current.SetSelectedGameObject(selectedButton.navigation.selectOnUp.gameObject);
    }

    public override void Initialize<T, S>(InventoryEntry[] items, Action<S> callback)
    {
        Button cancelButton = this.initialSelection.GetComponent<Button>();
        ItemSelectButton cancelCButton = this.initialSelection.GetComponent<ItemSelectButton>();
        buttons.Add(cancelButton);
        cancelButton.onClick.AddListener(() => SelectItem(null));
        cancelCButton.Initialize(null, this);
        onItemSelected = item => callback((S)item);
        int i = 1;
        foreach (InventoryEntry entry in items)
        {
            T item = (T)entry.item;
            int j = 0;
            while (j < entry.amount)
            {
                j++;
                if (item is IAttackItem)
                {
                    IAttackItem attackItem = (IAttackItem)item;
                    foreach (BriarAttackData attackData in attackItem.BriarAttack)
                    {
                        GameObject buttonObject = Instantiate(buttonPrefab, itemContainer);
                        Button button = buttonObject.GetComponent<Button>();
                        BattleOptionButton cButton = buttonObject.GetComponent<BattleOptionButton>();
                        cButton.Initialize(entry, attackData, this);
                        button.onClick.AddListener(() => SelectItem(attackData));
                        buttons.Add(button);

                        NavToPrevButton(button, buttons[i - 1]);
                        i++;
                    }
                }
            }
        }

        if (buttons.Count > 1)
        {
            ChangeInitialSelection(buttons[1].gameObject);
        }
        base.Open();
    }

    public void DisableButtons(int energy)
    {   
        foreach (Button button in buttons)
        {
            BattleOptionButton cButton = button.GetComponent<BattleOptionButton>();
            if (cButton.energyCost > energy)
            {
                button.interactable = false;
                cButton.contentColor = new Color(.6f, .6f, .6f, .2f);
                cButton.UpdateVisuals();
            }
        }
    }

    protected override void NavToPrevButton(Button button1, Button button2)
    {
        Navigation currentNav = button1.navigation;
        Navigation prevNav = button2.navigation;
        prevNav.selectOnDown = button1;
        currentNav.selectOnUp = button2;
        button1.navigation = currentNav;
        button2.navigation = prevNav;
    }
}

