using System.Collections;
using System.Collections.Generic;
using UnityEngine;


[CreateAssetMenu(menuName = "Attacks/Action")]
public class AttackAction : ScriptableObject 
{
    public bool affectSelf;
    public CombatAnimationType animation;
    public Vector3Int[] attackPositions;
    public Vector2Int[] statusPosition;
    public Status status;
}
