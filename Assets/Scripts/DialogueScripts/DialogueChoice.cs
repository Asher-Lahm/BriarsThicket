using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[CreateAssetMenu(menuName = "Dialogue/Choice")]
public class DialogueChoice : ScriptableObject
{
    public string text;
    public DialogueNode next;
    public DialogueAction[] actions;
    public DialogueChoiceStyle style;
}
