Scriptname UAP_UpdateQuest_PlayerAliasScript extends ReferenceAlias

Event OnPlayerLoadGame()
    (GetOwningQuest() as UAP_UpdateQuest_UpdateQuestScript).Update()
EndEvent