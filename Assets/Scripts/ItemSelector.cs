using System;
using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;
using UnityEngine.EventSystems;
using UnityEngine.UI;

public class ItemSelector : Menu
{
    protected Action<Item> onItemSelected;
    [SerializeField] protected Transform itemContainer;
    [SerializeField] protected GameObject buttonPrefab;
    [SerializeField] protected Button clickBlock;
    [SerializeField] public TextMeshProUGUI itemNameText;
    protected List<Button> buttons = new List<Button>();

    [SerializeField] protected RectTransform content;
    [SerializeField] protected RectTransform viewport;

    [SerializeField] protected Button selectedButton;

    protected Coroutine centerCoroutine;

    public void CenterButton(RectTransform button)
    {
        selectedButton = button.GetComponent<Button>();
        if (centerCoroutine != null)
        {
            StopCoroutine(centerCoroutine);
        }

        centerCoroutine = StartCoroutine(CenterButtonNextFrame(button));
    }

    protected virtual IEnumerator CenterButtonNextFrame(RectTransform button)
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

    public virtual void SelectForward()
    {
        if (selectedButton != null)
            EventSystem.current.SetSelectedGameObject(selectedButton.navigation.selectOnLeft.gameObject);
    }

    public virtual void SelectBack()
    {
        if (selectedButton != null)
            EventSystem.current.SetSelectedGameObject(selectedButton.navigation.selectOnRight.gameObject);
    }

    public virtual void Initialize<T>(InventoryEntry[] items, Action<T> callback) where T : Item
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
            GameObject buttonObject = Instantiate(buttonPrefab, itemContainer);
            Button button = buttonObject.GetComponent<Button>();
            ItemSelectButton cButton = buttonObject.GetComponent<ItemSelectButton>();
            cButton.Initialize(item, this);
            cButton.UpdateQuantity(entry.amount);
            button.onClick.AddListener(() => SelectItem(item));
            buttons.Add(button);

            NavToPrevButton(button, buttons[i - 1]);

            i++;
        }

        if (buttons.Count > 1)
        {
            ChangeInitialSelection(buttons[1].gameObject);
        }
        base.Open();
    }

    protected virtual void NavToPrevButton (Button button1, Button button2)
    {
        Navigation currentNav = button1.navigation;
        Navigation prevNav = button2.navigation;
        prevNav.selectOnRight = button1;
        currentNav.selectOnLeft = button2;
        button1.navigation = currentNav;
        button2.navigation = prevNav;
    }

    protected void SelectItem(Item item)
    {
        Action<Item> callback = onItemSelected;
        onItemSelected = null;

        callback?.Invoke(item);

        base.Close();
        Destroy(this.gameObject);
    }
}
