using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DialogueLine : ScriptableObject
{
    public string speakerName;
    [TextArea]
    public string text;
    public Sprite portrait;
}
