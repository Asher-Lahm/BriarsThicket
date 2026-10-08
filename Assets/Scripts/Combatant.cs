using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public abstract class Combatant : MonoBehaviour
{
    [HideInInspector]
    public int currentHealth;
    public int maxHealth;
    public int defense;
    public int statusTurns;
    public Status status;
    public event Action<int, int> HealthChanged;
    [HideInInspector]
    public bool isAbleToAttack;
    [HideInInspector]
    public bool isAttackable;
    public string combatName;

    public void TakeDamage(int damage)
    {
        currentHealth = Mathf.Max(currentHealth - damage, 0);
        HealthChanged?.Invoke(currentHealth, maxHealth);
    }

    public void Heal(int amount)
    {
        currentHealth = Mathf.Min(currentHealth + amount, maxHealth);
        HealthChanged?.Invoke(currentHealth, maxHealth);
    }
}
