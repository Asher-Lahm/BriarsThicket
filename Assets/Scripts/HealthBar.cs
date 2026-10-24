using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;
using UnityEngine.EventSystems;
using UnityEngine.UI;
using static UnityEditor.Progress;
using static UnityEngine.EventSystems.EventTrigger;

public class HealthBar : HealthUI, IPointerExitHandler
{
    [SerializeField] protected Slider slider;
    [SerializeField] protected Slider blockSlider;
    [SerializeField] protected TextMeshProUGUI nameText;
    [SerializeField] protected TextMeshProUGUI maxHealthText;
    [SerializeField] protected TextMeshProUGUI currentHealthText;
    [SerializeField] protected GameObject statusPanel;
    [SerializeField] protected TextMeshProUGUI statusNameText;
    [SerializeField] protected TextMeshProUGUI statusTurnsText;
    [SerializeField] protected TextMeshProUGUI statusDescText;
    [SerializeField] protected Transform statusParent;
    [SerializeField] protected StatusButton statusPrefab;
    protected List<StatusButton> buttons = new List<StatusButton>();

    protected WorldUIFollower follower;

    protected void Awake()
    {
        follower = GetComponent<WorldUIFollower>();
    }
    override protected void UpdateHealthUI(int current, int max, int tempBlock)
    {
        slider.value = (float)current / max;
        blockSlider.value = (float)tempBlock / max;
        maxHealthText.text = $"{max}";
        currentHealthText.text = $"{current + tempBlock}";
        foreach (StatusButton button in buttons)
        {
            button.UpdateVisuals();
        }
    }

    override protected void UpdateStatusUI(List<StatusCondition> statuses)
    {
        foreach (StatusButton button in buttons)
        {
            Destroy(button.gameObject);
        }
        buttons.Clear();
        foreach (StatusCondition status in statuses)
        {
            StatusButton button = Instantiate(statusPrefab, statusParent);
            button.Initialize(status, this);
            button.UpdateVisuals();
            buttons.Add(button);
        }
    }

    override public void UpdateStatusPanel(StatusCondition status)
    {
        statusNameText.text = status.status.statusName;
        statusDescText.text = status.status.description;
        statusTurnsText.text = $"{status.turns} turns left";
        statusPanel.SetActive(true);
    }

    protected void HideStatusPanel()
    {
        statusPanel.SetActive(false);
    }

    protected override void SetUpVisuals(Combatant combatant)
    {
        nameText.text = combatant.combatName;
        follower.SetTarget(combatant.healthUITransform);
    }

    public void OnPointerExit(PointerEventData eventData)
    {
        HideStatusPanel();
    }
}