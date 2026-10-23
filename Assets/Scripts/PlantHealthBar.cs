using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;
using UnityEngine.EventSystems;
using UnityEngine.UI;
using static UnityEditor.Progress;
using static UnityEngine.EventSystems.EventTrigger;

public class PlantHealthBar : HealthBar
{
    [SerializeField] private Slider fatigueSlider;
    int weakHealth;
    override protected void UpdateHealthUI(int current, int max, int tempBlock)
    {
        base.UpdateHealthUI(current, max, tempBlock);
        fatigueSlider.value = Mathf.Min((float)current / max, (float)weakHealth / max);
    }
    protected override void SetUpVisuals(Combatant combatant)
    {
        base.SetUpVisuals(combatant);
        Plant plant = (Plant)combatant;
        weakHealth = plant.weakHealth;
        fatigueSlider.value = weakHealth / plant.maxHealth;
    }

}