using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[CreateAssetMenu]
public class DialogueChoice
{
    public string text;
    public DialogueNode next;
    public DialogueAction[] actions;
}
