using System.Collections;
using System.Collections.Generic;
using UnityEngine;


[CreateAssetMenu(menuName = "Attacks/StatusAtPosition")]
public class StatusPosition : ScriptableObject
{
    public Status status;
    public int turns;
    public Vector2Int position;
}
