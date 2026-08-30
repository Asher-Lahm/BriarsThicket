using System.Collections;
using System.Collections.Generic;
using UnityEngine;
[CreateAssetMenu(menuName = "Dialogue/ConditionNode")]
public class ConditionNode : DialogueNode
{
    public List<PlayerStatCondition> playerStatConditions;
    public DialogueNode trueNode;
    public DialogueNode falseNode;

}
