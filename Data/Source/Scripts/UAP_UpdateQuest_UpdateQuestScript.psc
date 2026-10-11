Scriptname UAP_UpdateQuest_UpdateQuestScript extends Quest

GlobalVariable Property UAP_ModVersion  Auto

Event OnInit()
    Update()
EndEvent

Function Update()
    UAP_ModVersion.SetValue(UAP_Utility_ModInfo.GetModVersion())
EndFunction
