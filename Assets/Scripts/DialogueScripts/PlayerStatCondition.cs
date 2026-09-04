using UnityEngine;

public enum PlayerStat
{
    Money
}

public enum Comparison
{
    LessThan,
    LessThanOrEqual,
    Equal,
    GreaterThanOrEqual,
    GreaterThan
}

[System.Serializable]
[CreateAssetMenu(menuName = "Dialogue/Condition")]
public class PlayerStatCondition : ScriptableObject
{
    public PlayerStat stat;
    public Comparison comparison;
    public int value;
}