using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class StatusData : ScriptableObject
{
    public string statusName;
    [TextArea]
    public string description;
    public Sprite icon;
    public int attackMultiplier;
    public int addToAttack;
    public int addToDefense;
    public int healEachTurn;
    public bool skipTurn;
    public float stuckChance;
    public float missChance;
    public bool invulnerable;
}
