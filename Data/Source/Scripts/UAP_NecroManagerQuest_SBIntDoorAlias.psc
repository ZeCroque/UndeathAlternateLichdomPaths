Scriptname UAP_NecroManagerQuest_SBIntDoorAlias extends ReferenceAlias

Quest Property UAP_ScourgBarrowHintQuest Auto

Event OnCellAttach()
    If(UAP_ScourgBarrowHintQuest.IsRunning())
        UAP_ScourgBarrowHintQuest.SetStage(10)
    EndIf
EndEvent