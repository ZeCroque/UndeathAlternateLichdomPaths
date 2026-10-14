Scriptname UAP_NecroManagerQuest_SBIntDoorAlias extends ReferenceAlias

Quest Property UAP_ScourgBarrowHintQuest Auto
Quest Property UAP_ScourgBarrowQuest Auto

Event OnCellAttach()
    If(UAP_ScourgBarrowHintQuest.IsRunning())
        UAP_ScourgBarrowHintQuest.SetStage(10)
        UAP_ScourgBarrowQuest.Start()
    EndIf
EndEvent