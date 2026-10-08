using System.Collections;
using System.Collections.Generic;
using UnityEngine;


[CreateAssetMenu(menuName = "Attacks/AttackAtPosition")]
public class AttackPosition : ScriptableObject
{
    public Vector2Int position;
    public int damage;
}
