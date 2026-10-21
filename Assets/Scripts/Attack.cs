using System.Collections;
using System.Collections.Generic;
using UnityEngine;


[CreateAssetMenu(menuName = "Attacks/Attack")]
public class Attack : ScriptableObject
{
    public AttackAction[] actions;
    public bool plantTarget;
}
