using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[CreateAssetMenu(menuName = "Attacks/BriarAttack")]
public class BriarAttackData : Item
{
    public Attack attackOnPlant;
    public Attack attackOnBriar;
    public int plantEnergyCost;
    public int briarEnergyCost;
    public bool attacksAllEnemies;
    public bool affectsSelf;
}
