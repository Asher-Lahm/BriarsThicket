using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;
using UnityEngine.UI;

public class HealthBar : HealthUI
{
    [SerializeField] private Slider slider;
    [SerializeField] private TextMeshProUGUI nameText;
    [SerializeField] private TextMeshProUGUI maxHealthText;
    [SerializeField] private TextMeshProUGUI currentHealthText;
    WorldUIFollower follower;

    private void Awake()
    {
        follower = GetComponent<WorldUIFollower>();
    }
    override protected void UpdateHealthUI(int current, int max)
    {
        slider.value = current / max;
        maxHealthText.text = max.ToString();
    }

    protected override void SetUpVisuals(Combatant combatant)
    {
        nameText.text = combatant.combatName;
        follower.SetTarget(combatant.healthUITransform);
    }
}