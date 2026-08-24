using System.Collections;
using System.Collections.Generic;
using UnityEngine;
[CreateAssetMenu]
public abstract class DialogueAction : ScriptableObject
{
    public abstract void Execute();
}
