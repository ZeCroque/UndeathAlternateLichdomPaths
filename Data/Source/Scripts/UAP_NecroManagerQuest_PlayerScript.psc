Scriptname UAP_NecroManagerQuest_PlayerScript extends ReferenceAlias

Quest Property NecroQuest01 Auto
Quest Property UAP_ScourgBarrowHintQuest Auto
Book Property UAP_NecromancerNote Auto
LeveledItem Property LootWarlockSoulGemsNecroBonus Auto

Event OnPlayerLoadGame()
    If(NecroQuest01.GetStage() < 10 && !UAP_ScourgBarrowHintQuest.GetStageDone(0))
        LootWarlockSoulGemsNecroBonus.AddForm(UAP_NecromancerNote, 30, 1)
    EndIf
EndEvent
