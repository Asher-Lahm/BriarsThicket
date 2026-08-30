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
public class PlayerStatCondition
{
    public PlayerStat stat;
    public Comparison comparison;
    public int value;
}