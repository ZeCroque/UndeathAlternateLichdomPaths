ScriptName LichTransformRitualEffectSCRIPT Extends ActiveMagicEffect

;-- Variables ---------------------------------------
Float PlayerMG
Float PlayerHP
Float PlayerST

;-- Properties --------------------------------------
Spell Property DiseaseAtaxia Auto
Spell Property NecroLichBlizzard Auto
Spell Property IceStormLeftHand Auto
Spell Property NecroLichFireStorm Auto
Sound Property NPCNecroLichCloak Auto
Explosion Property TransformFXParticles Auto
Sound Property TransformExplosion03 Auto
Spell Property IncinerateLeftHand Auto
Bool Property Poisoned Auto
Spell Property NecroDeathGrip Auto
Spell Property NecroPerkPhylacteryRegenAbility Auto
ImageSpaceModifier Property IllusionLightMassiveImod Auto
GlobalVariable Property NecroLichRaceValue Auto
Message Property NecroLichTutorialSneakMsg Auto
MagicEffect Property LichTransformRitualPotion Auto
Spell Property DragonPriestAbility Auto
FormList Property CrimeFactions Auto
FormList Property NecroUCL_KhajiitRaces Auto
ObjectReference Property NecroLichTransformCandle01 Auto
VisualEffect Property DragonPriestParticlesFX Auto
Spell Property NecroFrostArmor Auto
Spell Property DiseaseBrainRot Auto
Actor Property PlayerRef Auto
Spell Property DiseaseSanguinareVampiris Auto
EffectShader Property CasterFXS Auto
{ Effect Shader on Caster during Soul trap }
Spell Property NecroLichFXCastPlayerBleedSpell Auto
Perk Property NecroUCLFoodPotionRestoMod Auto
Message Property NecroUCLAttainedLichdomMsg1 Auto
Message Property NecroLeftMagicSelectMessage Auto
FormList Property NecroUCL_OrcRaces Auto
Spell Property DiseaseRattles Auto
Spell Property AbLichTransformRitualPotion Auto
Perk Property NecroPhylacteryRegenPerk Auto
Spell Property LichAbility Auto
GlobalVariable Property NecroLichColorValue Auto
Spell Property NecroLichTransformationRitual Auto
GlobalVariable Property pDLC1VQ04SafeToEnter Auto
GlobalVariable Property PlayerIsVampire Auto
MiscObject Property NecroVyngaldShroud Auto
Sound Property TransformSoundFX Auto
Explosion Property TransformFXExplosion Auto
Float Property ShaderDuration = 4.0 Auto
{ Duration of Effect Shader. }
Message Property NecroUCLAttainedLichdomMsg2 Auto
Sound Property TransformExplosion01 Auto
Spell Property SummonSkeleton Auto
Sound Property AmbRumbleShake Auto
Perk Property NecroPlayerLichResistances Auto
Spell Property LichTransform Auto
Bool Property Soulbound Auto
Message Property NecroUCLUnbindSoulVampMsg Auto
EffectShader Property MagicEffectShader Auto
{ The Effect Shader we want. }
FormList Property NecroUCL_ElfRaces Auto
Ammo Property NecroLichClearArrow Auto
MagicEffect Property NecroRevertEffect Auto
Spell Property DiseaseWitbane Auto
Message Property NecroUCLUnbindSoulCompleteMsg Auto
MusicType Property MUSEclipse Auto
Faction Property LichFaction Auto
VisualEffect Property TargetVFX Auto
{ Visual Effect on Target aiming at Caster }
Sound Property TransformExplosion02 Auto
Explosion Property PlayerDeathExplosion Auto
GlobalVariable Property NecroLichModelValue Auto
Bool Property bSetAlphaZero = True Auto
{ The Effect Shader we want. }
Spell Property NecroLichLightningStorm Auto
Idle Property Bleedout Auto
Activator Property AshPileObject Auto
{ The object we use as a pile. }
Int Property Cycles Auto
Spell Property NecroImprovedFormPassive Auto
Faction Property HunterFaction Auto
Race Property PlayerRace Auto
VisualEffect Property DragonPriestEyeGlowFX Auto
Spell Property ParalyzeSelf Auto
Float Property fDelay = 0.75 Auto
{ time to wait before Spawning Ash Pile }
Message Property NecroLichTutorialSoulFeedMsg Auto
Sound Property MAGFail Auto
Spell Property NecroMassReanimate Auto
Spell Property DiseaseRockjoint Auto
Spell Property NecroUCLCurseOfLichdom Auto
Potion Property CurePoison Auto
Spell Property AbSummonMassCastBodyFX Auto
Bool Property doOnce Auto
Spell Property NecroHealing Auto
Quest Property LichTrackingQuest Auto
Spell Property NecroRevert Auto
FormList Property NecroUCL_ArgonianRaces Auto
MiscObject Property NecroVyngaldShroudGreen Auto
VisualEffect Property CasterVFX Auto
{ Visual Effect on Caster aming at Target }
Spell Property AbLichNecroPassive Auto
Float Property fDelayEnd = 1.65 Auto
{ time to wait before Removing Base Actor }
MagicEffect Property LichTransformEffect Auto
MiscObject Property NecroVyngaldShroudWhite Auto
Spell Property DiseaseBoneBreakFever Auto
Spell Property Revenant Auto
EffectShader Property TargetFXS Auto
{ Effect Shader on Target during Soul trap }
MiscObject Property NecroVyngaldShroudBlack Auto
Quest Property NecroLichRitualQuest Auto
MagicEffect Property AbLichNecroCooldown Auto
Explosion Property FXDragonPriestLargeExplosion Auto
Race Property LichRace Auto

;-- Functions ---------------------------------------

Function DeathEffects()
  NecroLichFXCastPlayerBleedSpell.Cast(PlayerRef as ObjectReference, PlayerRef as ObjectReference)
  PlayerRef.ClearExtraArrows()
  Utility.Wait(1 as Float)
  AmbRumbleShake.Play(PlayerRef as ObjectReference)
  PlayerRef.RampRumble(1 as Float, 2 as Float, 1600 as Float)
  Game.ShakeCamera(PlayerRef as ObjectReference, 1 as Float, 2 as Float)
  PlayerRef.placeAtMe(PlayerDeathExplosion as Form, 1, False, False)
  Utility.Wait(4 as Float)
EndFunction

; Skipped compiler generated GetState

; Skipped compiler generated GotoState

Event OnEffectStart(Actor Target, Actor Caster)
  If PlayerIsVampire.GetValue() == 1 as Float
    NecroUCLUnbindSoulVampMsg.Show(0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
  Else
    PlayerHP = PlayerRef.GetBaseActorValue("health")
    PlayerMG = PlayerRef.GetBaseActorValue("magicka")
    PlayerST = PlayerRef.GetBaseActorValue("stamina")
    Soulbound = True
    (NecroLichRitualQuest as necrolichtrackingquest).GetPlayerOriginalRace()
    Self.RegisterForUpdate(1 as Float)
    If PlayerRef.GetItemCount(NecroVyngaldShroud as Form) >= 1
      (NecroLichRitualQuest as necrolichtrackingquest).Shroud = 1
      NecroLichColorValue.SetValueInt(1)
    ElseIf PlayerRef.GetItemCount(NecroVyngaldShroudGreen as Form) >= 1
      (NecroLichRitualQuest as necrolichtrackingquest).Shroud = 2
      NecroLichColorValue.SetValueInt(2)
    ElseIf PlayerRef.GetItemCount(NecroVyngaldShroudBlack as Form) >= 1
      (NecroLichRitualQuest as necrolichtrackingquest).Shroud = 3
      NecroLichColorValue.SetValueInt(3)
    ElseIf PlayerRef.GetItemCount(NecroVyngaldShroudWhite as Form) >= 1
      (NecroLichRitualQuest as necrolichtrackingquest).Shroud = 4
      NecroLichColorValue.SetValueInt(4)
    Else
      (NecroLichRitualQuest as necrolichtrackingquest).Shroud = 0
    EndIf
    Race MyRace = (NecroLichRitualQuest as necrolichtrackingquest).playerOriginalRace
    If NecroUCL_ElfRaces.HasForm(MyRace as Form)
      NecroLichRaceValue.SetValueInt(1)
    ElseIf NecroUCL_OrcRaces.HasForm(MyRace as Form)
      NecroLichRaceValue.SetValueInt(2)
    ElseIf NecroUCL_ArgonianRaces.HasForm(MyRace as Form)
      NecroLichRaceValue.SetValueInt(3)
    ElseIf NecroUCL_KhajiitRaces.HasForm(MyRace as Form)
      NecroLichRaceValue.SetValueInt(4)
    Else
      NecroLichRaceValue.SetValueInt(0)
    EndIf
  EndIf
EndEvent

Event OnUpdate()
  NecroLichTrackingQuest trackingQuest = NecroLichRitualQuest as NecroLichTrackingQuest
  Float CurrentHealth = PlayerRef.GetActorValuePercentage("health")
  If PlayerRef.HasMagicEffect(LichTransformRitualPotion) == 1 as Bool && trackingQuest.RitualMarker && Poisoned == False && doOnce == False && trackingQuest.Phylactery.IsEnabled() == True && (NecroLichRitualQuest as necrolichtrackingquest).Shroud > 0
    Game.DisablePlayerControls(True, False, True, False, False, False, False, False, 1)
    trackingQuest.RitualFX.enable(False)
    Utility.Wait(3 as Float)
    Poisoned = True
  ElseIf PlayerRef.HasMagicEffect(LichTransformRitualPotion) == 1 as Bool && !trackingQuest.RitualMarker
    AbLichTransformRitualPotion.Cast(PlayerRef as ObjectReference, PlayerRef as ObjectReference)
    Debug.Trace("CLASSICAL LICHDOM: Player not in ritual locaton, player KILLED.", 0)
  ElseIf PlayerRef.HasMagicEffect(LichTransformRitualPotion) == 1 as Bool && trackingQuest.Phylactery.IsEnabled() == False
    AbLichTransformRitualPotion.Cast(PlayerRef as ObjectReference, PlayerRef as ObjectReference)
    Debug.Trace("CLASSICAL LICHDOM: Phylactery not placed, player KILLED.", 0)
  ElseIf PlayerRef.HasMagicEffect(LichTransformRitualPotion) == 1 as Bool && (NecroLichRitualQuest as necrolichtrackingquest).Shroud < 1
    AbLichTransformRitualPotion.Cast(PlayerRef as ObjectReference, PlayerRef as ObjectReference)
    Debug.Trace("CLASSICAL LICHDOM: Player doesnt have shroud, player KILLED.", 0)
  EndIf
  If Soulbound == True && Poisoned == True && doOnce == False
    PlayerRef.PlayIdle(Bleedout)
    Self.RegisterForUpdate(0.8)
    PlayerRef.RestoreActorValue("health", 9999 as Float)
    doOnce = True
    If (NecroLichRitualQuest as necrolichtrackingquest).Shroud == 1
      PlayerRef.removeitem(NecroVyngaldShroud as Form, 1, True, None)
    ElseIf (NecroLichRitualQuest as necrolichtrackingquest).Shroud == 2
      PlayerRef.removeitem(NecroVyngaldShroudGreen as Form, 1, True, None)
    ElseIf (NecroLichRitualQuest as necrolichtrackingquest).Shroud == 3
      PlayerRef.removeitem(NecroVyngaldShroudBlack as Form, 1, True, None)
    ElseIf (NecroLichRitualQuest as necrolichtrackingquest).Shroud == 4
      PlayerRef.removeitem(NecroVyngaldShroudWhite as Form, 1, True, None)
    EndIf
    If (NecroLichRitualQuest as necrolichtrackingquest).Flesh == 1 as Bool
      NecroLichModelValue.SetValueInt(1)
    Else
      NecroLichModelValue.SetValueInt(2)
    EndIf
  EndIf
  If doOnce == True && Poisoned == True && Cycles <= 13
    PlayerRef.RestoreActorValue("health", 9999 as Float)
    Cycles += 1
  EndIf
  If doOnce == True && Cycles == 8
    Self.DeathEffects()
    trackingQuest.PostRitualFX.enable(False)
    PlayerRef.placeAtMe(TransformFXExplosion as Form, 1, False, False)
    PlayerRef.placeAtMe(TransformFXParticles as Form, 1, False, False)
  EndIf
  If doOnce == True && Cycles == 12
    TransformExplosion01.Play(trackingQuest.RitualMarker)
    Utility.Wait(0.3)
    IllusionLightMassiveImod.apply(1.0)
    TransformExplosion02.Play(trackingQuest.RitualMarker)
  EndIf
  If doOnce == True && Cycles < 10
    TargetVFX.Play(PlayerRef as ObjectReference, 4.7, trackingQuest.Phylactery)
    CasterVFX.Play(trackingQuest.Phylactery, 5.9, PlayerRef as ObjectReference)
    TargetFXS.Play(trackingQuest.Phylactery, 2 as Float)
    CasterFXS.Play(trackingQuest.Phylactery, 3 as Float)
  EndIf
  If Cycles > 13 && Poisoned == True
    Self.UnregisterForUpdate()
    Poisoned = False
    PlayerHP = PlayerRef.GetBaseActorValue("health")
    PlayerMG = PlayerRef.GetBaseActorValue("magicka")
    PlayerST = PlayerRef.GetBaseActorValue("stamina")
    TransformExplosion03.Play(trackingQuest.RitualMarker)
    PlayerRef.removespell(NecroLichTransformationRitual)
    PlayerRef.removespell(AbSummonMassCastBodyFX)
    Game.EnablePlayerControls(True, True, True, True, True, True, True, True, 0)
    PlayerRef.moveto(trackingQuest.RitualMarker, 0.0, 0.0, 0.0, True)
    PlayerRef.removespell(DiseaseAtaxia)
    PlayerRef.removespell(DiseaseBoneBreakFever)
    PlayerRef.removespell(DiseaseBrainRot)
    PlayerRef.removespell(DiseaseRattles)
    PlayerRef.removespell(DiseaseRockjoint)
    PlayerRef.removespell(DiseaseWitbane)
    PlayerRef.removespell(DiseaseSanguinareVampiris)
    PlayerRef.AddSpell(NecroPerkPhylacteryRegenAbility, False)
    PlayerRef.AddSpell(NecroUCLCurseOfLichdom, False)
    PlayerRef.AddSpell(NecroImprovedFormPassive, False)
    LichTransform.Cast(PlayerRef as ObjectReference, PlayerRef as ObjectReference)
    Utility.Wait(0.5)
    MagicEffectShader.Play(PlayerRef as ObjectReference, ShaderDuration)
    Utility.Wait(fDelay)
    Utility.Wait(fDelayEnd)
    MagicEffectShader.stop(PlayerRef as ObjectReference)
    trackingQuest.RitualFX.Disable(1 as Bool)
    trackingQuest.PostRitualFX.enable(False)
    NecroUCLUnbindSoulCompleteMsg.Show(0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
    NecroLichRitualQuest.SetStage(90)
    Utility.Wait(1.0)
    PlayerRef.addPerk(NecroPhylacteryRegenPerk)
    PlayerRef.addPerk(NecroPlayerLichResistances)
    PlayerRef.addPerk(NecroUCLFoodPotionRestoMod)
    pDLC1VQ04SafeToEnter.SetValue(1 as Float)
    NecroUCLAttainedLichdomMsg1.Show(0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
    Utility.Wait(1.0)
    NecroUCLAttainedLichdomMsg2.Show(0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
    NecroLichRitualQuest.SetCurrentStageID(100)
    Utility.Wait(5.0)
    NecroLichTutorialSneakMsg.ShowAsHelpMessage("[Sneak]", 10.0, 30.0, 1)
    Utility.Wait(10.0)
    NecroLichTutorialSoulFeedMsg.ShowAsHelpMessage("[Activate]", 10.0, 30.0, 1)
  EndIf
EndEvent

Bool Function TurnToAsh()
  MagicEffectShader.Play(PlayerRef as ObjectReference, ShaderDuration)
EndFunction
