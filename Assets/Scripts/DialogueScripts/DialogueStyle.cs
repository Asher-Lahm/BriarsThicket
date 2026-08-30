using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.TextCore.Text;
using TMPro;

[CreateAssetMenu(menuName = "Dialogue/DialogueStyle")]
public class DialogueStyle : ScriptableObject
{
    public GameObject prefab;
    public Sprite texture;
    public TMP_FontAsset font;
    public int fontSize;
    public Color textColor;
}
