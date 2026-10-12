Scriptname UAP_CauldronActivatorScript extends ObjectReference  

Message Property UAP_CauldronMessage Auto
Message Property UAP_MissingIngredientsMessage Auto
Message Property UAP_MissingEmptyVial Auto

Quest Property UAP_AlchemyTrackingQuest Auto

MiscObject Property UAP_EmptyVial Auto
MiscObject Property NecroSkeletalPotion01 Auto
MiscObject Property NecroFleshPotion01 Auto
MiscObject Property NecroFailedPotion Auto

Ingredient Property Nightshade Auto
Ingredient Property Mushroom05 Auto
Ingredient Property HumanHeart Auto
Ingredient Property NecroBloodroot Auto
Ingredient Property NirnrootRed Auto
MiscObject Property BoneHumanSkullFull Auto
Ingredient Property Deathbell Auto

ObjectReference Property StaticNightshade Auto
ObjectReference Property StaticMushroom Auto
ObjectReference Property StaticHeart Auto
ObjectReference Property StaticBloodroot Auto
ObjectReference Property StaticSkull Auto
ObjectReference Property StaticDeathbell Auto

Sound Property NecroAlchemySuccess Auto
Sound Property NecroAlchemyFailure Auto

Event OnActivate(ObjectReference actronaut)
	UAP_AlchemyTrackingQuestScript alchemyTracking = UAP_AlchemyTrackingQuest as UAP_AlchemyTrackingQuestScript
	Actor playerRef = Game.GetPlayer()

	Int i = UAP_CauldronMessage.Show()
	If(i == 0)
		; Player chose to do nothing.
	ElseIf(i == 1)
		; Player chose to mix.
		If(!alchemyTracking.Nightshade && !alchemyTracking.Mushroom && !alchemyTracking.Heart && !alchemyTracking.Bloodroot && !alchemyTracking.Deathbell && !alchemyTracking.Skull)
			UAP_MissingIngredientsMessage.Show()
		ElseIf(playerRef.GetItemCount(UAP_EmptyVial) > 0)
			If(alchemyTracking.Nightshade && alchemyTracking.Heart && alchemyTracking.Bloodroot && !alchemyTracking.Mushroom && !alchemyTracking.Skull && !alchemyTracking.Deathbell)
				playerRef.AddItem(NecroFleshPotion01, 1, False)
				playerRef.RemoveItem(UAP_EmptyVial, 1, True)
				NecroAlchemySuccess.Play(playerRef as ObjectReference)
				StaticNightshade.Disable(True)
				alchemyTracking.Nightshade = False
				StaticHeart.Disable(True)
				alchemyTracking.Heart = False
				StaticBloodroot.Disable(True)
				alchemyTracking.Bloodroot = False
			ElseIf(!alchemyTracking.Nightshade && !alchemyTracking.Heart && !alchemyTracking.Bloodroot && alchemyTracking.Mushroom && alchemyTracking.Skull && alchemyTracking.Deathbell)
				playerRef.AddItem(NecroSkeletalPotion01, 1, False)
				playerRef.RemoveItem(UAP_EmptyVial, 1, True)
				NecroAlchemySuccess.Play(playerRef as ObjectReference)
				StaticMushroom.Disable(True)
				alchemyTracking.Mushroom = False
				StaticSkull.Disable(True)
				alchemyTracking.Skull = False
				StaticDeathbell.Disable(True)
				alchemyTracking.Deathbell = False
			Else
				playerRef.AddItem(NecroFailedPotion, 1, False)
				playerRef.RemoveItem(UAP_EmptyVial, 1, True)
				NecroAlchemyFailure.Play(playerRef as ObjectReference)
				StaticNightshade.Disable(True)
				alchemyTracking.Nightshade = False
				StaticMushroom.Disable(True)
				alchemyTracking.Heart = False
				StaticHeart.Disable(True)
				alchemyTracking.Bloodroot = False
				StaticBloodroot.Disable(True)
				alchemyTracking.Skull = False
				StaticSkull.Disable(True)
				alchemyTracking.Deathbell = False
				StaticDeathbell.Disable(True)
			EndIf
		Else
			UAP_MissingEmptyVial.Show()
		EndIf
	ElseIf(i == 2)
		; Player chose to add the nightshade
		playerRef.RemoveItem(Nightshade, 1)
		StaticNightshade.Enable(true)
		alchemyTracking.Nightshade = True
	ElseIf(i == 3)
		; Player chose to add the Mushroom05
		playerRef.RemoveItem(Mushroom05, 1)
		StaticMushroom.Enable(true)
		alchemyTracking.Mushroom = True
	ElseIf(i == 4)			
		; Player chose to add the HumanHeart
		playerRef.RemoveItem(HumanHeart, 1)
		StaticHeart.Enable(true)
		alchemyTracking.Heart = True
	ElseIf(i == 5)
		; Player chose to add the NecroBloodroot
		playerRef.RemoveItem(NecroBloodroot, 1)
		StaticBloodroot.Enable(true)
		alchemyTracking.Bloodroot = True
	ElseIf(i == 6)
		; Player chose to add the NirnrootRed
		playerRef.RemoveItem(NirnrootRed, 1)
		StaticBloodroot.Enable(true)
		alchemyTracking.Bloodroot = True
	ElseIf(i == 7)
		; Player chose to add the BoneHumanSkullFull
		playerRef.RemoveItem(BoneHumanSkullFull, 1)
		StaticSkull.Enable(true)
		alchemyTracking.Skull = True
	ElseIf(i == 8)
		; Player chose to add the deathbell
		playerRef.RemoveItem(Deathbell, 1)
		StaticDeathbell.Enable(true)
		alchemyTracking.Deathbell = True
	Endif
EndEvent

