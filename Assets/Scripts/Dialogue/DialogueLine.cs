using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[CreateAssetMenu]
public class DialogueLine : DialogueNode
{
    [TextArea]
    public string text;
    public List<AudioClip> voiceClips;
}
