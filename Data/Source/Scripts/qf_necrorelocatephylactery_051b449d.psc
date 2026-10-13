;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 0
ScriptName QF_NecroRelocatePhylactery_051B449D Extends Quest hidden

;BEGIN ALIAS PROPERTY PhylacteryAlias
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_PhylacteryAlias Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY PlayerAlias
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_PlayerAlias Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY PedestalAlias
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_PedestalAlias Auto
;END ALIAS PROPERTY

;BEGIN FRAGMENT Fragment_16
Function Fragment_16()
;BEGIN CODE
  Self.SetObjectiveCompleted(10, True)
  Self.SetObjectiveCompleted(11, True)
  Self.SetObjectiveDisplayed(40, True, True)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_0
Function Fragment_0()
;BEGIN CODE
  Self.SetObjectiveDisplayed(10, True, True)
  If !bDoOnce
    Self.SetObjectiveDisplayed(11, True, True)
    bDoOnce = True
  EndIf
  NecroLichPhylacteryMovable02.Disable(False)
  NecroLichPhylacteryMovableFX.Disable(False)
  NecroLichPhylacteryLightEvil.Disable(False)
  PlayerRef.AddItem(Alias_PhylacteryAlias.GetReference() as Form, 1, False)
  PlayerRef.AddSpell(NecroUCLMovePhylacterySpell, True)
  PlayerRef.AddPerk(NecroUCLDisableRespawnPerk)
  Alias_PedestalAlias.GetReference().SetDisplayName(Pedestal, False)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_22
Function Fragment_22()
;BEGIN CODE
  Utility.Wait(2.0)
  SoulTrapSoundFX.Play(PlayerRef as ObjectReference)
  TargetVFX.Play(BelethorRef, 8.8, PlayerRef as ObjectReference)
  CasterVFX.Play(PlayerRef as ObjectReference, 8.8, BelethorRef)
  TargetFXS.Play(PlayerRef as ObjectReference, 15 as Float)
  CasterFXS.Play(BelethorRef, 15 as Float)
  IllusionLightMassiveImod.apply(1.0)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_20
Function Fragment_20()
;BEGIN CODE
  Self.SetObjectiveCompleted(10, True)
  Self.SetObjectiveDisplayed(11, 0 as Bool, False)
  Self.SetObjectiveDisplayed(20, 0 as Bool, False)
  Self.SetObjectiveDisplayed(40, 0 as Bool, False)
  ObjectReference Phy1 = Alias_PhylacteryAlias.GetReference()
  Phy1.Moveto(NecroLichInventoryPhyMarker01, 0.0, 0.0, 0.0, True)
  Alias_PedestalAlias.GetReference().SetDisplayName("", False)
  Alias_PedestalAlias.GetReference().Disable(False)
  NecroLichPhylacteryMovable02.Disable(False)
  NecroLichPhylacteryMovableFX.Disable(False)
  NecroLichPhylacteryLightEvil.Disable(False)
  PlayerRef.RemoveSpell(NecroUCLMovePhylacterySpell)
  PlayerRef.RemovePerk(NecroUCLDisableRespawnPerk)
  PlayerRef.AddPerk(NecroUCLBelethorSlavePerk)
  NecroLichRitualXMarkerMovable01.Moveto(WhiterunBelethorsGeneralGoodsCenterMarker, 0.0, 0.0, 0.0, True)
  Self.SetObjectiveDisplayed(66, True, False)
  Self.SetObjectiveCompleted(66, True)
  Self.SetStage(67)
;END CODE
EndFunction
;END FRAGMENT

; Skipped compiler generated GotoState

;BEGIN FRAGMENT Fragment_19
Function Fragment_19()
;BEGIN CODE
  Self.SetObjectiveDisplayed(20, True, True)
;END CODE
EndFunction
;END FRAGMENT

; Skipped compiler generated GetState

;BEGIN FRAGMENT Fragment_10
Function Fragment_10()
;BEGIN CODE
  Self.SetStage(6)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_18
Function Fragment_18()
;BEGIN CODE
  Self.SetObjectiveDisplayed(10, 0 as Bool, False)
  Self.SetObjectiveDisplayed(11, 0 as Bool, False)
  Self.SetObjectiveDisplayed(40, 0 as Bool, False)
  NecroUCLSoulJarQSTComplete.Play(PlayerRef as ObjectReference)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_13
Function Fragment_13()
;BEGIN CODE
  NecroLichTrackingQuest trackingQuest = NecroLichRitualQuest as NecroLichTrackingQuest
  trackingQuest.Phylactery.Disable(False)
  trackingQuest.PostRitualFX.Disable(False)
  NecroUCLPhyParentSewer.Disable(False)
  NecroUCLPhyParentTower.Disable(False)
  Self.SetStage(10)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_21
Function Fragment_21()
;BEGIN CODE
  Self.SetObjectiveCompleted(20, True)
  Self.SetObjectiveDisplayed(20, 0 as Bool, False)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_2
Function Fragment_2()
;BEGIN CODE
  Self.SetObjectiveDisplayed(20, 0 as Bool, False)
  ObjectReference Phy1 = Alias_PhylacteryAlias.GetReference()
  Phy1.Moveto(NecroLichInventoryPhyMarker01, 0.0, 0.0, 0.0, True)
  Alias_PedestalAlias.GetReference().SetDisplayName("", False)
  PlayerRef.RemoveSpell(NecroUCLMovePhylacterySpell)
  PlayerRef.RemovePerk(NecroUCLDisableRespawnPerk)
  NecroLichPhylacteryMovable02.Enable(False)
  NecroLichPhylacteryMovableFX.Enable(False)
  NecroLichPhylacteryLightEvil.Enable(False)
  Self.SetObjectiveCompleted(40, True)
  Self.SetStage(100)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

ObjectReference Property NecroLichRitualXMarkerMovable01 Auto
ObjectReference Property BelethorRef Auto
Perk Property NecroUCLBelethorSlavePerk Auto
Bool Property bDoOnce Auto
ObjectReference Property NecroLichPhylacteryMovable01 Auto
ObjectReference Property NecroLichPhylacteryMovableFX Auto
Sound Property SoulTrapSoundFX Auto
String Property Pedestal Auto
ObjectReference Property WhiterunBelethorsGeneralGoodsCenterMarker Auto
ObjectReference Property NecroUCLPhyParentTower Auto
EffectShader Property TargetFXS Auto
Spell Property NecroUCLMovePhylacterySpell Auto
Actor Property PlayerRef Auto
Sound Property NecroUCLSoulJarQSTComplete Auto
Message Property NecroUCLPedestalName Auto
Perk Property NecroUCLMovablePerk Auto
Perk Property NecroUCLDisableRespawnPerk Auto
EffectShader Property CasterFXS Auto
ObjectReference Property NecroUCLPhyParentSewer Auto
VisualEffect Property CasterVFX Auto
VisualEffect Property TargetVFX Auto
ObjectReference Property NecroLichPhylacteryMovable02 Auto
ImageSpaceModifier Property IllusionLightMassiveImod Auto
Quest Property NecroUCLRelocatePhylacteryQuest Auto
ObjectReference Property NecroLichInventoryPhyMarker01 Auto
ObjectReference Property NecroLichPhylacteryLightEvil Auto
Quest Property NecroLichRitualQuest Auto