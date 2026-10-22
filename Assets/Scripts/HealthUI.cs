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
        combatant.StatusChanged += UpdateStatusUI;

        UpdateHealthUI(combatant.currentHealth, combatant.maxHealth);
        SetUpVisuals(combatant);
    }

    abstract protected void UpdateHealthUI(int current, int max);

    abstract protected void UpdateStatusUI(List<StatusCondition> statuses);

    abstract public void UpdateStatusPanel(StatusCondition status);

    abstract protected void SetUpVisuals(Combatant combatant);


    private void OnDestroy()
    {
        if (combatant != null)
        {
            combatant.HealthChanged -= UpdateHealthUI;
            combatant.StatusChanged -= UpdateStatusUI;
        }
    }
}
