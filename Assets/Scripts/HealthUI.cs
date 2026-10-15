using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

abstract public class HealthUI : MonoBehaviour
{
    private Combatant combatant;

    public void Initialize(Combatant combatant)
    {
        this.combatant = combatant;

        combatant.HealthChanged += UpdateHealthUI;

        UpdateHealthUI(combatant.currentHealth, combatant.maxHealth);
        SetUpVisuals(combatant);
    }

    abstract protected void UpdateHealthUI(int current, int max);

    abstract protected void SetUpVisuals(Combatant combatant);

    private void OnDestroy()
    {
        if (combatant != null)
            combatant.HealthChanged -= UpdateHealthUI;
    }
}
