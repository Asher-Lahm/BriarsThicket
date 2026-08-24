using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[CreateAssetMenu]
public class DialogueChoice : ScriptableObject
{
    public string text;
    public DialogueNode next;
    public DialogueAction[] actions;
}
