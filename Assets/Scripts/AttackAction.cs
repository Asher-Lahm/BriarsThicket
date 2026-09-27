using System.Collections;
using System.Collections.Generic;
using UnityEngine;


[CreateAssetMenu(menuName = "Attacks/Action")]
public class AttackAction : ScriptableObject 
{
    public AttackPosition[] attackPositions;
    public StatusPosition[] statusPosition;
}
