using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public abstract class Combatant : MonoBehaviour
{
    int currentHealth;
    int maxHealth;
    int attack;

    void TakeDamage(int damage)
    {
        currentHealth -= damage;
    }
}
