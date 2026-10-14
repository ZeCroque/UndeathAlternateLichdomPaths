Scriptname UAP_SBQuest_PlayerAliasScript extends ReferenceAlias

Book Property UAP_AntiochJournal04 Auto

Event OnInit()
    AddInventoryEventFilter(UAP_AntiochJournal04)
EndEvent

Event OnItemAdded(Form akBaseItem, int aiItemCount, ObjectReference akItemReference, ObjectReference akSourceContainer)
    GetOwningQuest().SetStage(15)
EndEvent
