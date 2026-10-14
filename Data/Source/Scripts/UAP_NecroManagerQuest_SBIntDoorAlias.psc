Scriptname UAP_NecroManagerQuest_SBIntDoorAlias extends ReferenceAlias

Quest Property UAP_ScourgBarrowHintQuest Auto
Quest Property UAP_ScourgBarrowQuest Auto
Quest Property NecroQuest01 Auto
ObjectReference Property NecroUCL_MarkarthInnQuestNote Auto

Event OnCellAttach()
    If(UAP_ScourgBarrowHintQuest.IsRunning())
        UAP_ScourgBarrowHintQuest.SetStage(10)
    EndIf

    If(NecroQuest01.GetStage() < 10)
        UAP_ScourgBarrowQuest.Start()
        NecroUCL_MarkarthInnQuestNote.Disable()
    EndIf
EndEvent