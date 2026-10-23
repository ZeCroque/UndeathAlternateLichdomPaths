Scriptname UAP_NecroManagerQuestScript extends Quest  

Quest Property NecroQuest01 Auto
Book Property UAP_NecromancerNote Auto
LeveledItem Property LootWarlockSoulGemsNecroBonus Auto

Event OnInit()
    If(NecroQuest01.GetStage() < 10)
        LootWarlockSoulGemsNecroBonus.AddForm(UAP_NecromancerNote, 30, 1)
    EndIf
EndEvent