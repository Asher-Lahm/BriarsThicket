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
    public int tempDefense;
    public int tempStrength = 0;
    public int statusTurns;
    public Status status;
    public event Action<int, int> HealthChanged;
    [HideInInspector]
    public bool isAbleToAttack = true;
    [HideInInspector]
    public bool isAttackable = true;
    public string combatName;
    public Transform healthUITransform;

    protected virtual void Awake()
    {
        isAbleToAttack = true;
        isAttackable = true;
    }

    public virtual void TakeDamage(int damage, Combatant attacker)
    {
        print("base take damage run");
        int finalDamage = (damage + attacker.tempStrength) - (defense + tempDefense);
        currentHealth = Mathf.Max(currentHealth - finalDamage, 0);
        HealthChanged?.Invoke(currentHealth, maxHealth);
    }

    public virtual void Heal(int amount)
    {
        currentHealth = Mathf.Min(currentHealth + amount, maxHealth);
        HealthChanged?.Invoke(currentHealth, maxHealth);
    }
}
