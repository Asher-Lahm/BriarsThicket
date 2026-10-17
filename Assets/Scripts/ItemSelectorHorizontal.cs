using System;
using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;
using UnityEngine.EventSystems;
using UnityEngine.UI;

public class ItemSelectorHorizontal : Menu
{
    private Action<Item> onItemSelected;
    [SerializeField] Transform itemContainer;
    [SerializeField] GameObject buttonPrefab;
    [SerializeField] Button clickBlock;
    [SerializeField] public TextMeshProUGUI itemNameText;
    List<Button> buttons = new List<Button>();

    [SerializeField] private RectTransform content;
    [SerializeField] private RectTransform viewport;

    [SerializeField] Button selectedButton;

    private Coroutine centerCoroutine;

    public void CenterButton(RectTransform button)
    {
        selectedButton = button.GetComponent<Button>();
        if (centerCoroutine != null)
        {
            StopCoroutine(centerCoroutine);
        }

        centerCoroutine = StartCoroutine(CenterButtonNextFrame(button));
    }

    private IEnumerator CenterButtonNextFrame(RectTransform button)
    {

        yield return null;
        Canvas.ForceUpdateCanvases();

        if (button == null)
            yield break;


        Vector3 buttonWorldCenter =
            button.TransformPoint(button.rect.center);

        Vector3 buttonViewportCenter =
            viewport.InverseTransformPoint(buttonWorldCenter);


        float movement = buttonViewportCenter.x;


        Vector2 position = content.anchoredPosition;
        position.x -= movement;

        content.anchoredPosition = position;

        centerCoroutine = null;
        print($"Button World Center: {buttonWorldCenter}\nButton Viewport Center: {buttonViewportCenter}\nMovement {movement}");
    }

    public void SelectLeft()
    {
        if (selectedButton != null)
            EventSystem.current.SetSelectedGameObject(selectedButton.navigation.selectOnLeft.gameObject);
    }

    public void SelectRight()
    {
        if (selectedButton != null)
            EventSystem.current.SetSelectedGameObject(selectedButton.navigation.selectOnRight.gameObject);
    }

    public void Initialize<T>(InventoryEntry[] items, Action<T> callback) where T : Item
    {
        Button cancelButton = this.initialSelection.GetComponent<Button>();
        ItemSelectButton cancelCButton = this.initialSelection.GetComponent<ItemSelectButton>();
        buttons.Add(cancelButton);
        cancelButton.onClick.AddListener(() => SelectItem(null));
        cancelCButton.Initialize(null, this);
        clickBlock.onClick.AddListener(() => SelectItem(null));
        onItemSelected = item => callback((T)item);
        int i = 1;
        foreach (InventoryEntry entry in items)
        {
            T item = (T)entry.item;
            print($"{item.itemName}");
            GameObject buttonObject = Instantiate(buttonPrefab, itemContainer);
            Button button = buttonObject.GetComponent<Button>();
            ItemSelectButton cButton = buttonObject.GetComponent<ItemSelectButton>();
            cButton.Initialize(item, this);
            cButton.UpdateQuantity(entry.amount);
            button.onClick.AddListener(() => SelectItem(item));
            buttons.Add(button);

            Navigation currentNav = button.navigation;
            Navigation prevNav = buttons[i - 1].navigation;
            prevNav.selectOnRight = button;
            currentNav.selectOnLeft = buttons[i - 1];
            button.navigation = currentNav;
            buttons[i - 1].navigation = prevNav;

            i++;
        }

        if (buttons.Count > 1)
        {
            ChangeInitialSelection(buttons[1].gameObject);
        }
        base.Open();
    }

    private void SelectItem(Item item)
    {
        Action<Item> callback = onItemSelected;
        onItemSelected = null;

        callback?.Invoke(item);

        base.Close();
        Destroy(this.gameObject);
    }
}
