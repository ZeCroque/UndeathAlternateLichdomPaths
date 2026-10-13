Scriptname NecroLichRitualCircleTriggerSCRIPT extends ObjectReference  

Quest Property NecroLichRitualQuest  Auto
Keyword Property LinkCustom01 Auto
Keyword Property LinkCustom02 Auto
Keyword Property LinkCustom03 Auto
Keyword Property LinkCustom04 Auto

Event OnTriggerEnter (ObjectReference akActor)
	If(NecroLichRitualQuest.GetStage() <= 60 && akActor == Game.GetPlayer())
		NecroLichTrackingQuest trackingQuest = NecroLichRitualQuest as NecroLichTrackingQuest
		trackingQuest.Phylactery = GetLinkedRef(LinkCustom01)
		trackingQuest.RitualFX = GetLinkedRef(LinkCustom02)
		trackingQuest.PostRitualFX = GetLinkedRef(LinkCustom03)		
		trackingQuest.RitualMarker = GetLinkedRef(LinkCustom04)
	EndIf
EndEvent

Event OnTriggerLeave (ObjectReference akActor)
	If(NecroLichRitualQuest.GetStage() <= 60 && akActor == Game.GetPlayer())
		NecroLichTrackingQuest trackingQuest = NecroLichRitualQuest as NecroLichTrackingQuest
		trackingQuest.Phylactery = None
		trackingQuest.RitualFX = None
		trackingQuest.PostRitualFX = None
		trackingQuest.RitualMarker = None
	EndIf
EndEvent