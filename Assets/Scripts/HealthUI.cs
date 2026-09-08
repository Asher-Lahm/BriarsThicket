using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

abstract public class HealthUI : MonoBehaviour
{
    [SerializeField] private Slider slider;

    private Combatant combatant;

    public void Initialize(Combatant combatant)
    {
        this.combatant = combatant;

        combatant.HealthChanged += UpdateHealthBar;

        UpdateHealthBar(combatant.currentHealth, combatant.maxHealth);
        SetUpVisuals(combatant);
    }

    abstract protected void UpdateHealthBar(float current, float max);

    abstract protected void SetUpVisuals(Combatant combatant);

    private void OnDestroy()
    {
        if (combatant != null)
            combatant.HealthChanged -= UpdateHealthBar;
    }
}
