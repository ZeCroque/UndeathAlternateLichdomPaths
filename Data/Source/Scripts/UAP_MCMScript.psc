ScriptName UAP_MCMScript Extends SKI_ConfigBase

GlobalVariable Property UAP_ValericaDialogs Auto
GlobalVariable Property UAP_EnthirDialogs Auto
GlobalVariable Property UAP_NoteTriggerChance Auto
GlobalVariable Property UAP_NoteLevelThreshold Auto

Int Property ToggleValericaOptionId Auto
Int Property ToggleEnthirOptionId Auto
Int Property NoteTriggerChanceOptionId Auto
Int Property NoteLevelThresholdOptionId Auto

Function OnConfigInit()
  Pages = new String[1]
  Pages[0] = "Undeath - Alternate Lichdom Paths"
EndFunction

Function OnPageReset(String a_page)
  If a_page == ""
    LoadCustomContent("skyui/res/mcm_logo.dds", 258 as Float, 95 as Float)
    Return 
  Else
    UnloadCustomContent()
  EndIf
  If a_page == "Undeath - Alternate Lichdom Paths"
    SetCursorFillMode(TOP_TO_BOTTOM)
    SetCursorPosition(0)
    AddHeaderOption("Dialogs", 0)
    ToggleValericaOptionId = AddToggleOption("Enable Valerica dialogs", UAP_ValericaDialogs.GetValueInt())
    ToggleEnthirOptionId = AddToggleOption("Enable Enthir dialogs", UAP_EnthirDialogs.GetValueInt())
    AddEmptyOption()
    AddHeaderOption("Note", 0)
    NoteTriggerChanceOptionId = AddSliderOption("Necromancer note trigger chance", UAP_NoteTriggerChance.GetValue())
    NoteLevelThresholdOptionId = AddSliderOption("Necromancer note level threshold", UAP_NoteLevelThreshold.GetValue())
  EndIf
EndFunction

Function OnOptionDefault(int a_option)
  If a_option == ToggleValericaOptionId
    SetToggleOptionValue(a_option, True, False)
    UAP_ValericaDialogs.SetValueInt(1)
  ElseIf a_option == ToggleEnthirOptionId
    SetToggleOptionValue(a_option, True, False)
    UAP_EnthirDialogs.SetValueInt(1)
  ElseIf a_option == NoteTriggerChanceOptionId
    OnOptionSliderAccept(a_option, 33.0)
  ElseIf a_option == NoteLevelThresholdOptionId
    OnOptionSliderAccept(a_option, 30.0)
  EndIf
EndFunction

Function OnOptionHighlight(Int a_option)
  If a_option == ToggleValericaOptionId
    SetInfoText("Choose whether or not Valerica has dialogs to lead you to Scourg Barrow (after she has moved back to her study).")
  ElseIf a_option == ToggleEnthirOptionId
    SetInfoText("Choose whether or not Enthir has dialogs to lead you to Scourg Barrow.")
  ElseIf a_option == NoteTriggerChanceOptionId
    SetInfoText("Set the chance a note leading to Scourg Barrow has to appear in a Necromancer boss's inventory.")
  ElseIf a_option == NoteLevelThresholdOptionId
    SetInfoText("Sets the minimum level at which a note leading to Scourg Barrow can appear in a Necromancer boss's inventory.")
  EndIf
EndFunction

Function OnOptionSelect(Int a_option)
  If a_option == ToggleValericaOptionId
    Int newValue = (!UAP_ValericaDialogs.GetValueInt()) as Int
    SetToggleOptionValue(a_option, newValue, False)
    UAP_ValericaDialogs.SetValueInt(newValue)
  ElseIf a_option == ToggleEnthirOptionId
    Int newValue = (!UAP_EnthirDialogs.GetValueInt()) as Int
    SetToggleOptionValue(a_option, newValue, False)
    UAP_EnthirDialogs.SetValueInt((!UAP_EnthirDialogs.GetValueInt()) as Int)
  EndIf
EndFunction

Function OnOptionSliderOpen(Int option)
  If option == NoteTriggerChanceOptionId
    SetSliderDialogStartValue(UAP_NoteTriggerChance.GetValueInt())
    SetSliderDialogDefaultValue(33.0)
    SetSliderDialogRange(0.0, 100.0)
    SetSliderDialogInterval(1.0)
  ElseIf option == NoteLevelThresholdOptionId
    SetSliderDialogStartValue(UAP_NoteLevelThreshold.GetValueInt())
    SetSliderDialogDefaultValue(30.0)
    SetSliderDialogRange(1.0, 50.0)
    SetSliderDialogInterval(1.0)
  EndIf
EndFunction

Function OnOptionSliderAccept(Int option, Float value)
  SetSliderOptionValue(option, value)
  If option == NoteTriggerChanceOptionId
    UAP_NoteTriggerChance.SetValue(value)
  ElseIf option == NoteLevelThresholdOptionId
    UAP_NoteLevelThreshold.SetValue(value)
  EndIf
EndFunction