using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[CreateAssetMenu]
public class BattleActionData : ScriptableObject
{
    public string actionName;
    public string description;
    public Sprite image;
    public GameObject prefab;
}
