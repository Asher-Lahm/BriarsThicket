using System.Collections;
using System.Collections.Generic;
using UnityEngine;


public enum DiaEmote
{
    Neutral,
    Happy,
    Sad,
    Angry,
    Annoyed,
    Thinking,
    Surprised,
    Pensive,
    Misc1,
    Misc2,
    Misc3,
    Misc4,
    Misc5,
}

[CreateAssetMenu(menuName = "Dialogue/Character")]
public class CharacterDialogue : ScriptableObject
{
    public string characterName;
    public Sprite[] dialogueSprites;
}
