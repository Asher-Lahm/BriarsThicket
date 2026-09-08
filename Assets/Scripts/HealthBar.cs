using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class HealthBar : HealthUI
{
    [SerializeField] private Slider slider;

    private Combatant combatant;

    override protected void UpdateHealthBar(float current, float max)
    {
        slider.value = current / max;
    }

    protected override void SetUpVisuals(Combatant combatant)
    {
        //No special visuals to set up.
    }
}