ScriptName NecroCraftingBenchScript Extends ObjectReference

Actor Property UAP_NecroAltarHelperNPC Auto
FormList Property UAP_DaedricList Auto
Message Property UAP_NecroAltarChoicePromptMsg Auto

Message Property NecroAltarReqMsg Auto
GlobalVariable Property NecroAltarConjurationRequirement Auto
GlobalVariable Property NecroAltarEnchantingRequirement Auto

Quest Property NecroLichRitualQuest Auto
Quest Property UAP_CursedArtifactQuest Auto

Event OnLoad()
	BlockActivation(True)
EndEvent

Function OnActivate(ObjectReference akActivator)
    Actor playerRef = Game.GetPlayer()

    Float fConjuration = NecroAltarConjurationRequirement.GetValue()
    Float fEnchanting = NecroAltarEnchantingRequirement.GetValue()
    If(playerRef.GetAV("Enchanting") >= fEnchanting && playerRef.GetAV("Conjuration") >= fConjuration)
        If((UAP_CursedArtifactQuest.GetAlias(0) as ReferenceAlias).GetRef() || !UAP_NecroAltarHelperNPC || !UAP_NecroAltarChoicePromptMsg.Show())
            If(NecroLichRitualQuest.GetStageDone(10) && !NecroLichRitualQuest.GetStageDone(40))
                Utility.Wait(1.0)
                RegisterForSingleUpdate(1.0)
            EndIf
            Activate(playerRef, True)
        Else
            UAP_NecroAltarHelperNPC.ShowGiftMenu(True, UAP_DaedricList, True, False)
        EndIf
    Else
        NecroAltarReqMsg.Show(fEnchanting, fConjuration, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
    EndIf
EndFunction

Event OnUpdate()
	If(!Game.IsLookingControlsEnabled())
        RegisterForSingleUpdate(1.0)
	Else
        (NecroLichRitualQuest as necrolichtrackingquest).RunPotionCheck()
	EndIf
EndEvent
