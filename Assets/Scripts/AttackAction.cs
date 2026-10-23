using System.Collections;
using System.Collections.Generic;
using UnityEngine;


[CreateAssetMenu(menuName = "Attacks/Action")]
public class AttackAction : ScriptableObject 
{
    public DamageType damageType;
    public int amountOfPlantsToAffect;
    public CombatAnimationType animation;
    public Vector3Int[] attackPositions;
    public StatusData[] status;
    public int turns;
    public bool infiniteStatus;
}
