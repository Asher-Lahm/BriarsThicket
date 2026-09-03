using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[CreateAssetMenu(menuName = "Dialogue/Line")]
public class DialogueLine : DialogueNode
{
    [TextArea]
    public string text;
    public DiaEmote emotion;
    public CharacterDialogue character;
}
