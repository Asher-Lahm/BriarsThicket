using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.TextCore.Text;
using TMPro;

[CreateAssetMenu(menuName = "Dialogue/StyleChoice")]
public class DialogueChoiceStyle : ScriptableObject
{
    public GameObject prefab;
    public Sprite texture;
    public TMP_FontAsset font;
    public Color textColor;
}
