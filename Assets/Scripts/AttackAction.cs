using System.Collections;
using System.Collections.Generic;
using UnityEngine;


[CreateAssetMenu(menuName = "Attacks/Action")]
public class AttackAction : ScriptableObject 
{
    public bool affectSelf;
    public bool heal;
    public int chooseAmount;
    public CombatAnimationType animation;
    public Vector3Int[] attackPositions;
    public StatusData[] status;
    public int turns;
    public bool infiniteStatus;
}
