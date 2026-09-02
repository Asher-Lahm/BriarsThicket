using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public abstract class DialogueNode : ScriptableObject
{
    public DialogueNode next;
    public DialogueAction[] actions;
    public DialogueStyle style;
    public bool preventPlayerInputBehind = true;
    public int automaticProgressionTime;
}
