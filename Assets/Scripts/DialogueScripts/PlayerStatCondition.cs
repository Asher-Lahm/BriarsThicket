public enum PlayerStat
{
    Wisdom,
    Karma,
    Treasure,
    WaterLevel
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