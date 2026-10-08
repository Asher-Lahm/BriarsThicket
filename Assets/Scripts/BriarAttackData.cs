using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[CreateAssetMenu(menuName = "Attacks/BriarAttack")]
public class BriarAttackData : ScriptableObject
{
    public string actionName;
    public string description;
    public Sprite image;
    public Attack attack;
    public int energyCost;
}
