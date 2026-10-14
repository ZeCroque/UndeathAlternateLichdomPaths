Scriptname UAP_ScourgBarrowQuest_AltarDoorAlias extends ReferenceAlias

Event OnActivate(ObjectReference akActivator)
    GetOwningQuest().SetStage(30)
EndEvent
