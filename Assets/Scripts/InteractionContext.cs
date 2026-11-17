using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class InteractionContext
{
    public BriarProgress Progress { get; }
    public Inventory Inventory { get; }

    public DayNightManager DayNight { get; }


    public InteractionContext(BriarProgress bp, Inventory bi, DayNightManager dn)
    {
        Progress = bp;
        Inventory = bi;
        DayNight = dn;
    }
}
