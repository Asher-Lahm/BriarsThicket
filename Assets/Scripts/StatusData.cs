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
    public float attackMultiplier;
    public int addToAttack;
    public int addToDefense;
    public int healEachTurn;
    public bool skipTurn;
    public float stuckChance;
    public float missChance;
    public bool invulnerable;
    public bool infinite;
}
