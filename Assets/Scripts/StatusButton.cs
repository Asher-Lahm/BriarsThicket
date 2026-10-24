using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;
using UnityEngine.EventSystems;
using UnityEngine.UI;

public class StatusButton : MonoBehaviour, IPointerEnterHandler
{
    [SerializeField] Image statusImage;
    [SerializeField] TextMeshProUGUI turnsText;
    HealthUI healthUI;
    StatusCondition status;
    public void Initialize(StatusCondition status, HealthUI parent)
    {
        healthUI = parent;
        this.status = status;
    }

    public void UpdateVisuals()
    {
        statusImage.sprite = status.status.icon;
        turnsText.text = "";
        if (!status.infinite)
            turnsText.text = $"{status.turns}";
    }
    protected void HighlightItem()
    {
        healthUI.UpdateStatusPanel(status);
    }
    public void OnPointerEnter(PointerEventData eventData)
    {
        HighlightItem();
    }
}
