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
    [SerializeField] private Slider slider;
    [SerializeField] private TextMeshProUGUI nameText;
    [SerializeField] private TextMeshProUGUI maxHealthText;
    [SerializeField] private TextMeshProUGUI currentHealthText;
    [SerializeField] private GameObject statusPanel;
    [SerializeField] private TextMeshProUGUI statusNameText;
    [SerializeField] private TextMeshProUGUI statusTurnsText;
    [SerializeField] private TextMeshProUGUI statusDescText;
    [SerializeField] private Transform statusParent;
    [SerializeField] private StatusButton statusPrefab;
    private List<StatusButton> buttons = new List<StatusButton>();

    WorldUIFollower follower;

    private void Awake()
    {
        follower = GetComponent<WorldUIFollower>();
    }
    override protected void UpdateHealthUI(int current, int max)
    {
        slider.value = (float)current / max;
        maxHealthText.text = $"{max}";
        currentHealthText.text = $"{current}";
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

    private void HideStatusPanel()
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