using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.EventSystems;
using UnityEngine.UI;

public class ShopItemSelect : ItemSelector
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
    public void UpdatePrices(bool isBuying)
    {
        foreach (Button button in buttons)
        {
            ShopItemButton shopButton = button.GetComponent<ShopItemButton>();
            shopButton.ShowPrice(isBuying);
        }
    }

    public void DisableExpensive(int money)
    {
        foreach (Button button in buttons)
        {
            if (button.GetComponent<ShopItemButton>().buyPrice > money)
            {
                button.interactable = false;
            }
        }
    }
}
