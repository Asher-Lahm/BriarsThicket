using System;
using System.Collections;
using System.Collections.Generic;
using TMPro;
using Unity.VisualScripting;
using UnityEngine;
using UnityEngine.Events;
using UnityEngine.EventSystems;
using UnityEngine.SceneManagement;
using UnityEngine.UI;

public class DialogueManagerNew : MonoBehaviour
{
    /*
    public TextMeshProUGUI dialogueText;
    public RectTransform window;

    public static bool isDialogue;

    private string currentText;
    private string nextText;

    private bool runChecker = false;

    private TypewriterEffect typewriterSettings;
    private float defaultspeed;
    private Action endOfTextEvent = null;
    private GameObject ContinueWarning;
    public float waitTimeTillWarning = 1.5f;
    private float currentTime;
    private List<AudioClip> CurrentVoiceSamples = new List<AudioClip>();
    private GameObject dialogueChoicesBox;
    private DialogueNode currentNode;

    private int AlreadyPlayed = 0;
    // Start is called before the first frame update

    public static DialogueManagerNew Instance;

    private void Awake()
    {
        if (Instance == null)
        {
            Instance = this;
        }
        else
        {
            Destroy(gameObject);
        }
    }
    void Start()
    {
        currentTime = waitTimeTillWarning;
        if (dialogueText == null)
        {
            dialogueText = GameObject.Find("DiaText").GetComponent<TextMeshProUGUI>();
        }
        if (window == null)
        {
            window = GameObject.Find("DialogueBox").GetComponent<RectTransform>();
        }
        typewriterSettings = dialogueText.GetComponent<TypewriterEffect>();
        ContinueWarning = window.GetChild(3).gameObject;
        ContinueWarning.SetActive(false);

        hideBox();
    }


    private void Dialogue(DialogueNode node)
    {
        currentNode = node;
        switch (node)
        {
            case DialogueLine line:
                PlayDialogueLine(line);
                break;
            case DialogueChoiceNode choice:
                ShowChoices(choice);
                break;

            case ConditionNode condition:
                EvaluateCondition(condition);
                break;
        }
    }

    public void StartDialogue(DialogueNode startNode)
    {
        //Instatiate text box.
        //Bring in speaker sprite, if applicable.
        //Take that functionality from tutorial manager.
        Dialogue(startNode);
    }

    private void EvaluateCondition(ConditionNode conditions)
    {
        PlayerStats ps = SingletonPlayer.instance.GetComponent<PlayerStats>();
        foreach (PlayerStatCondition condition in conditions.playerStatConditions)
        {
            int statValue = 0;
            switch (condition.stat) {
                case PlayerStat.Wisdom:
                    statValue = ps.wisdom;
                    break;
                case PlayerStat.Karma:
                    statValue = ps.karma;
                    break;
                case PlayerStat.Treasure:
                    statValue = (int)ps.treasure;
                    break;
                case PlayerStat.WaterLevel:
                    statValue = ps.aquiferLevel;
                    break;
            }
        }
    }

    public void PlayDialogueLine(DialogueLine currentDialogue)
    {
        isDialogue = true;

        EventSystem.current.SetSelectedGameObject(null);

        CurrentVoiceSamples.Clear();
        endOfTextEvent = null;
        window.gameObject.SetActive(true);
        dialogueText.text = currentDialogue.text;
        nextText = null;
        runChecker = true;
        dialogueText.maxVisibleCharacters = 0;
        ContinueWarning.SetActive(false);
        currentTime = waitTimeTillWarning;
        
    }
    public void PlayDialogueLine(string textToShow, Action dialogueEndEvent)
    {
        isDialogue = true;

        EventSystem.current.SetSelectedGameObject(null);

        //clear voice samples if not using any
        CurrentVoiceSamples.Clear();
        window.gameObject.SetActive(true);
        dialogueText.text = textToShow;
        runChecker = true;
        dialogueText.maxVisibleCharacters = 0;
        ContinueWarning.SetActive(false);
        currentTime = waitTimeTillWarning;
        endOfTextEvent = dialogueEndEvent;
    }
    public void PlayDialogueLine(string textToShow, Action dialogueEndEvent, List<AudioClip> voiceSamples)
    {
        isDialogue = true;

        EventSystem.current.SetSelectedGameObject(null);

        if (window != null)
        {
            window.gameObject.SetActive(true);
        }

        dialogueText.text = textToShow;
        runChecker = true;
        dialogueText.maxVisibleCharacters = 0;
        //cannot check if null, it breaks for some reason

        if (ContinueWarning == null)
        {
            if (window == null)
            {
                //doesn't actaully fix anything, but unity retries if theres an exception which
                //is what we want
                throw new Exception("Loaded out of order . . . Handling: Fixed");
            }
            if (window != null)
            {
                ContinueWarning = window.GetChild(3).gameObject;
            }

        }

        ContinueWarning.SetActive(false);

        currentTime = waitTimeTillWarning;
        endOfTextEvent = dialogueEndEvent;
        CurrentVoiceSamples = voiceSamples;

    }
    public void PlayDialogueLine(string textToShow, List<AudioClip> voiceSamples)
    {
        isDialogue = true;

        EventSystem.current.SetSelectedGameObject(null);

        if (window != null)
        {
            window.gameObject.SetActive(true);
        }

        dialogueText.text = textToShow;
        runChecker = true;
        dialogueText.maxVisibleCharacters = 0;
        //cannot check if null, it breaks for some reason
        ContinueWarning.SetActive(false);

        currentTime = waitTimeTillWarning;
        CurrentVoiceSamples = voiceSamples;
    }
    public void hideBox()
    {
        Debug.Log("Hiding Box");
        isDialogue = false;

        defaultspeed = typewriterSettings.charactersPerSecond;
        dialogueText.text = default;
        window.gameObject.SetActive(false);
        currentText = null;
        nextText = null;
        runChecker = false;
        //destroy choices as well
        if (dialogueChoicesBox != null)
        {
            Destroy(dialogueChoicesBox);
        }
        if (endOfTextEvent != null)
        {
            endOfTextEvent.Invoke();
        }
    }
    public void ShowChoices(DialogueChoiceNode choiceNode)
    {
        dialogueChoicesBox = Instantiate(Resources.Load<GameObject>("DialogueBoxChoices"), window.transform.position, window.transform.rotation, gameObject.transform);
        Transform buttons = dialogueChoicesBox.transform.GetChild(2);
        //only room for 4 choices
        int choicesLength = choiceNode.choices.Length;
        if (choicesLength <= 4)
        {
            for (int i = 0; i < choicesLength; i++)
            {
                //set each one to its option in optionList
                buttons.GetChild(i).GetComponentInChildren<TMP_Text>().text = choiceNode.choices[i].text;
                buttons.GetChild(i).GetComponent<Button>().onClick.AddListener(() => SelectChoice(choiceNode.choices[i]));

            }
            for (int i = 0; i < (4 - choicesLength); i++)
            {
                //destroy others
                Destroy(buttons.GetChild(3 - i).gameObject);
            }
        }
    }

    private void SelectChoice(DialogueChoice choice)
    {
        foreach (DialogueAction action in choice.actions)
        {
            action.Execute();
        }

        AdvanceDialogue(choice.next);
    }

    private void AdvanceDialogue(DialogueNode nextNode)
    {
        foreach (DialogueAction action in currentNode.actions)
        {
            action.Execute();
        }
        if (nextNode != null)
        {
            Dialogue(nextNode);
        } else
        {
            hideBox();
        }
        
    }

    private void Update()
    {
        if (CurrentVoiceSamples.Count > 0 && dialogueText.text != default && dialogueText.maxVisibleCharacters <= dialogueText.text.Length - 1)
        {
            //play audio samples when characters take a breath
            if (typewriterSettings.character == ' ' || dialogueText.maxVisibleCharacters == 0)
            {
                if (AlreadyPlayed < 2)
                {
                    //play audio, sounds best at 2 at a time
                    GameObject obj = new GameObject("AudioSource");
                    obj.transform.parent = transform;
                    AudioSource newSource = obj.AddComponent<AudioSource>();
                    newSource.volume = 0.4f;
                    newSource.playOnAwake = false;
                    obj.AddComponent<DestroyOnAudioSourceEnd>();
                    newSource.clip = CurrentVoiceSamples[UnityEngine.Random.Range(0, CurrentVoiceSamples.Count)];
                    newSource.pitch = UnityEngine.Random.Range(0.95f, 1.05f);
                    newSource.Play();
                    AlreadyPlayed++;
                }
            }
            else
            {
                AlreadyPlayed = 0;
            }
        }

        if (dialogueText.text != default && dialogueText.maxVisibleCharacters >= dialogueText.text.Length - 1)
        {
            currentTime -= Time.deltaTime;
        }
        if (currentTime <= 0)
        {
            ContinueWarning.SetActive(true);
        }

        //goto next box if you click anything. other then movement.
        if (Input.anyKeyDown && dialogueText.text != default && Input.GetAxisRaw("Horizontal") == 0 && Input.GetAxisRaw("Vertical") == 0 && !PauseMenu.isPaused)
        {
            if (dialogueText.maxVisibleCharacters >= dialogueText.text.Length - 1)
            {

                if (nextText != null)
                {
                    if (endOfTextEvent == null)
                    {
                        Debug.Log("showing next text");
                        Dialogue(currentNode.next);
                    }
                    else
                    {
                        if (CurrentVoiceSamples != null)
                        {
                            PlayDialogueLine(nextText, endOfTextEvent, CurrentVoiceSamples);
                        }
                        else
                        {
                            PlayDialogueLine(nextText, endOfTextEvent);
                        }

                    }

                    currentText = null;
                }
                else
                {
                    Debug.Log($"hiding box. maxVisChar = {dialogueText.maxVisibleCharacters} | dialogueTextLength = {dialogueText.text.Length}");
                    hideBox();
                }
            }
            else
            {
                Debug.Log($"maxVisChar = {dialogueText.maxVisibleCharacters} | dialogueTextLength = {dialogueText.text.Length}");
                typewriterSettings.Skip(true);
                Debug.Log($"maxVisChar = {dialogueText.maxVisibleCharacters} | dialogueTextLength = {dialogueText.text.Length}");
            }
        }
        //checks to see if it needs to split text up into another page 
        if (runChecker && dialogueText.textInfo.lineCount >= 5)
        {
            string textToShowString = dialogueText.text;
            int nextLineIndex = dialogueText.textInfo.lineInfo[4].firstCharacterIndex;
            currentText = textToShowString.Substring(0, nextLineIndex);
            nextText = textToShowString.Substring(nextLineIndex, textToShowString.Length - nextLineIndex);
            dialogueText.text = currentText;
            dialogueText.maxVisibleCharacters = 0;
            runChecker = false;
        }
    }

    public void ResetEndOfDialougeEvent()
    {
        endOfTextEvent = null;
    }
    private bool IsInScene(string sceneName)
    {
        Scene ddol = SceneManager.GetSceneByName("DontDestroyOnLoad");
        if (ddol == null)
        {
            return SceneManager.GetSceneAt(0).name == sceneName;
        }
        int dontDestroySceneIndex = ddol.buildIndex;

        // Iterate through all loaded scenes
        for (int i = 0; i < SceneManager.sceneCount; i++)
        {
            Scene scene = SceneManager.GetSceneAt(i);
            if (scene.buildIndex != dontDestroySceneIndex)
            {
                if (scene.name == sceneName)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
        }
        return false;
    }
    */
}
