Scriptname NecroLichRitualCircleTriggerSCRIPT extends ObjectReference  

Quest Property NecroLichRitualQuest  Auto
Keyword Property UAP_PhylacteryKeyword Auto
Keyword Property UAP_RitualMarkerKeyword Auto
Keyword Property UAP_RitualFXKeyword Auto
Keyword Property UAP_PostRitualFXKeyword Auto

Event OnTriggerEnter (ObjectReference akActor)
	If akActor == Game.GetPlayer()
		NecroLichTrackingQuest trackingQuest = NecroLichRitualQuest as NecroLichTrackingQuest
		trackingQuest.Phylactery = GetLinkedRef(UAP_PhylacteryKeyword)
		trackingQuest.RitualMarker = GetLinkedRef(UAP_RitualMarkerKeyword)
		trackingQuest.RitualFX = GetLinkedRef(UAP_RitualFXKeyword)
		trackingQuest.PostRitualFX = GetLinkedRef(UAP_PostRitualFXKeyword)
	EndIf
EndEvent

Event OnTriggerLeave (ObjectReference akActor)
	If(akActor == Game.GetPlayer())
		NecroLichTrackingQuest trackingQuest = NecroLichRitualQuest as NecroLichTrackingQuest
		trackingQuest.Phylactery = None
		trackingQuest.RitualMarker = None
		trackingQuest.RitualFX = None
		trackingQuest.PostRitualFX = None
	EndIf
EndEvent