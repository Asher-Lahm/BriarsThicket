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
    public int tempDefense = 0;
    public int tempStrength = 0;
    public float attackMultiplier = 1;
    public bool isInvulnerable = false;
    public float hitChance = 1;
    public float notStuckChance = 1;
    public Status status;
    public event Action<int, int> HealthChanged;
    public event Action<int> AttackEffect;
    public event Action<List<StatusCondition>> StatusChanged;
    [HideInInspector]
    public bool isAbleToAttack = true;
    [HideInInspector]
    public bool isAttackable = true;
    public string combatName;
    public Transform healthUITransform;
    public List<StatusCondition> statusConditions = new List<StatusCondition>();

    protected virtual void Awake()
    {
        isAbleToAttack = true;
        isAttackable = true;
    }

    public virtual void TakeDamage(int damage, Combatant attacker)
    {
        print("base take damage run");
        int finalDamage = Mathf.Max((int)((damage + attacker.tempStrength) * attacker.attackMultiplier) - (defense + tempDefense), 0);
        if (!isInvulnerable)
        {
            finalDamage = 0;
        }
        currentHealth = Mathf.Max(currentHealth - finalDamage, 0);
        HealthChanged?.Invoke(currentHealth, maxHealth);
        AttackEffect?.Invoke(finalDamage);
    }

    public virtual void Heal(int amount)
    {
        currentHealth = Mathf.Min(currentHealth + amount, maxHealth);
        HealthChanged?.Invoke(currentHealth, maxHealth);
    }

    public virtual void AddStatus(StatusCondition status)
    {
        statusConditions.Add(status);
    }

    public virtual void EvalStatuses()
    {
        tempDefense = 0;
        tempStrength = 0;
        attackMultiplier = 1;
        isInvulnerable = false;
        hitChance = 1;
        notStuckChance = 1;
        foreach (StatusCondition status in statusConditions)
        {
            status.turns -= 1;
            StatusData data = status.status;
            if (status.turns <= 0 && !status.infinite)
            {
                statusConditions.Remove(status);
            } 
            else
            {
                attackMultiplier *= data.attackMultiplier;
                tempStrength += data.addToAttack;
                tempDefense += data.addToDefense;
                hitChance *= data.missChance;
                notStuckChance *= data.stuckChance;
                isInvulnerable = isInvulnerable || data.invulnerable;
                if (data.skipTurn)
                {
                    notStuckChance = 0;
                }
            }
        }
        StatusChanged?.Invoke(statusConditions);
    }
}
