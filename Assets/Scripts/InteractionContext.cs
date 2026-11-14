using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class InteractionContext
{
    public BriarProgress Progress { get; }
    public Inventory Inventory { get; }

    public InteractionContext(BriarProgress bp, Inventory bi)
    {
        Progress = bp;
        Inventory = bi;
    }
}
