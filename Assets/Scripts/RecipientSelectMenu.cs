using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class RecipientSelectMenu : Menu
{
    [SerializeField] BattleManager bm;
    PlantBed currentBed;
    [SerializeField] GameObject recipientPrefab;
    [SerializeField] Transform recipientTransform;
    List<RecipientButton> buttons = new List<RecipientButton>();
    BriarAttackData attackData;
    [SerializeField] BriarBattle briar;
    public void Initialize(BriarAttackData item)
    {
        currentBed = bm.currentBed;
        attackData = item;
        buttons.Clear();
        foreach (PlantSpot spot in currentBed.plantSpots)
        {
            if (spot.plant != null)
            {
                GameObject buttonObject = Instantiate(recipientPrefab, recipientTransform);

                RecipientButton rButton = buttonObject.GetComponent<RecipientButton>();
                Button button = buttonObject.GetComponent<Button>();
                WorldUIFollower worldUI = buttonObject.GetComponent<WorldUIFollower>();

                worldUI.SetTarget(spot.plant.healthUITransform);
                button.onClick.AddListener(() => Select(spot.plant));
                button.onClick.AddListener(CloseMenus);
                buttons.Add(rButton);
            }
        }

    }

    public void Select(Plant plant)
    {
        bm.QueueAttack(attackData.attack, briar, plant);
    }

    public void CloseMenus()
    {
        print($"{buttons.Count}");
        foreach (RecipientButton button in buttons)
        {
            Destroy(button.gameObject);
        }
        Close();
    }
}
