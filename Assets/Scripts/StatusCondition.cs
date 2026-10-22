using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class StatusCondition
{
    public StatusData status;
    public int turns;
    public bool infinite;

    public StatusCondition(StatusData status, int turns, bool infinite)
    {
        this.status = status;
        this.turns = turns;
        this.infinite = infinite;
    }
}
