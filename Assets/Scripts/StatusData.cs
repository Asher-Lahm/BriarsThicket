using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[CreateAssetMenu(menuName = "Attacks/Status")]
public class StatusData : ScriptableObject
{
    public string statusName;
    [TextArea]
    public string description;
    public Sprite icon;
    public float attackMultiplier = 1;
    public int addToAttack = 0;
    public int addToDefense = 0;
    public int healEachTurn = 0;
    public int damageEachTurn = 0;
    public bool skipTurn = false;
    public int energyBoost = 0;
    public float stuckChance = 0;
    public float missChance = 0;
    public bool invulnerable = false;
    public bool infinite = false;
}
