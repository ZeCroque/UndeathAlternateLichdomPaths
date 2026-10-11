Scriptname NecroLichRitualCircleTriggerSCRIPT extends ObjectReference  

quest Property NecroLichRitualQuest  Auto
int Property LocationNumber Auto
string Property LocationName Auto


Event OnTriggerEnter (ObjectReference ActionRef)

If ActionRef == Game.GetPlayer()
	
	If LocationName == "tower"
		LocationNumber =1
	elseIf LocationName == "sewer"
		LocationNumber =2
	endif
	
	(NecroLichRitualQuest as NecroLichTrackingQuest).InTrigger =LocationNumber
	;debug.notification(LocationNumber)

endif

EndEvent



Event OnTriggerLeave (ObjectReference ActionRef)

If ActionRef == Game.GetPlayer()

	(NecroLichRitualQuest as NecroLichTrackingQuest).InTrigger =0
	;debug.notification(LocationNumber)

endif

EndEvent