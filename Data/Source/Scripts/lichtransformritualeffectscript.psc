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
ObjectReference Property Target Auto
ObjectReference Property NecroLichTransformationPhylacteryFX001 Auto
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
ObjectReference Property NecroLichTransformationPhylacteryLightFX002 Auto
Perk Property NecroPhylacteryRegenPerk Auto
Spell Property LichAbility Auto
GlobalVariable Property NecroLichColorValue Auto
Spell Property NecroLichTransformationRitual Auto
GlobalVariable Property pDLC1VQ04SafeToEnter Auto
GlobalVariable Property PlayerIsVampire Auto
MiscObject Property NecroVyngaldShroud Auto
ObjectReference Property NecroLichRitualXMarkerHeading002 Auto
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
ObjectReference Property NecroLichTransformationPhylacteryLightFX001 Auto
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
ObjectReference Property NecroLichTransformRitualTarget001 Auto
GlobalVariable Property NecroLichModelValue Auto
Bool Property bSetAlphaZero = True Auto
{ The Effect Shader we want. }
ObjectReference Property NecroLichRitualXMarkerHeading001 Auto
Spell Property NecroLichLightningStorm Auto
Idle Property Bleedout Auto
Activator Property AshPileObject Auto
{ The object we use as a pile. }
ObjectReference Property NecroLichTransformationPhylacteryLightFX Auto
ObjectReference Property NecroLichTransformationPhylacteryFX002 Auto
Int Property Cycles Auto
Spell Property NecroImprovedFormPassive Auto
Faction Property HunterFaction Auto
Race Property PlayerRace Auto
ObjectReference Property NecroLichRitualXMarkerHeading Auto
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
Int Property RitualLocation Auto
MiscObject Property NecroVyngaldShroudWhite Auto
Spell Property DiseaseBoneBreakFever Auto
Spell Property Revenant Auto
EffectShader Property TargetFXS Auto
{ Effect Shader on Target during Soul trap }
MiscObject Property NecroVyngaldShroudBlack Auto
ObjectReference Property NecroLichTransformRitualTarget002 Auto
Quest Property NecroLichRitualQuest Auto
MagicEffect Property AbLichNecroCooldown Auto
ObjectReference Property NecroLichTransformationPhylacteryFX Auto
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
    RitualLocation = (NecroLichRitualQuest as necrolichtrackingquest).InTrigger
    If RitualLocation == 1
      Target = NecroLichTransformRitualTarget001
    ElseIf RitualLocation == 2
      Target = NecroLichTransformRitualTarget002
    EndIf
  EndIf
EndEvent

Event OnUpdate()
  Float CurrentHealth = PlayerRef.GetActorValuePercentage("health")
  If PlayerRef.HasMagicEffect(LichTransformRitualPotion) == 1 as Bool && RitualLocation > 0 && Poisoned == False && doOnce == False && Target.IsEnabled() == True && (NecroLichRitualQuest as necrolichtrackingquest).Shroud > 0
    Game.DisablePlayerControls(True, False, True, False, False, False, False, False, 1)
    If RitualLocation == 1
      NecroLichTransformationPhylacteryLightFX001.enable(False)
    ElseIf RitualLocation == 2
      NecroLichTransformationPhylacteryLightFX002.enable(False)
    EndIf
    Utility.Wait(3 as Float)
    Poisoned = True
  ElseIf PlayerRef.HasMagicEffect(LichTransformRitualPotion) == 1 as Bool && RitualLocation < 1
    AbLichTransformRitualPotion.Cast(PlayerRef as ObjectReference, PlayerRef as ObjectReference)
    Debug.Trace("CLASSICAL LICHDOM: Player not in ritual locaton, player KILLED.", 0)
  ElseIf PlayerRef.HasMagicEffect(LichTransformRitualPotion) == 1 as Bool && Target.IsEnabled() == False
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
    If RitualLocation == 1
      NecroLichTransformationPhylacteryFX001.enable(False)
      PlayerRef.placeAtMe(TransformFXExplosion as Form, 1, False, False)
      PlayerRef.placeAtMe(TransformFXParticles as Form, 1, False, False)
    ElseIf RitualLocation == 2
      NecroLichTransformationPhylacteryFX002.enable(False)
      PlayerRef.placeAtMe(TransformFXExplosion as Form, 1, False, False)
      PlayerRef.placeAtMe(TransformFXParticles as Form, 1, False, False)
    EndIf
  EndIf
  If doOnce == True && Cycles == 12
    If RitualLocation == 1
      TransformExplosion01.Play(NecroLichRitualXMarkerHeading001)
      Utility.Wait(0.3)
      IllusionLightMassiveImod.apply(1.0)
      TransformExplosion02.Play(NecroLichRitualXMarkerHeading001)
    ElseIf RitualLocation == 2
      TransformExplosion01.Play(NecroLichRitualXMarkerHeading002)
      Utility.Wait(0.3)
      IllusionLightMassiveImod.apply(1.0)
      TransformExplosion02.Play(NecroLichRitualXMarkerHeading002)
    EndIf
  EndIf
  If doOnce == True && Cycles < 10
    TargetVFX.Play(PlayerRef as ObjectReference, 4.7, Target)
    CasterVFX.Play(Target, 5.9, PlayerRef as ObjectReference)
    TargetFXS.Play(Target, 2 as Float)
    CasterFXS.Play(Target, 3 as Float)
  EndIf
  If Cycles > 13 && Poisoned == True
    Self.UnregisterForUpdate()
    Poisoned = False
    PlayerHP = PlayerRef.GetBaseActorValue("health")
    PlayerMG = PlayerRef.GetBaseActorValue("magicka")
    PlayerST = PlayerRef.GetBaseActorValue("stamina")
    If RitualLocation == 1
      TransformExplosion03.Play(NecroLichRitualXMarkerHeading001)
    ElseIf RitualLocation == 2
      TransformExplosion03.Play(NecroLichRitualXMarkerHeading002)
    EndIf
    PlayerRef.removespell(NecroLichTransformationRitual)
    PlayerRef.removespell(AbSummonMassCastBodyFX)
    Game.EnablePlayerControls(True, True, True, True, True, True, True, True, 0)
    If RitualLocation == 1
      PlayerRef.moveto(NecroLichRitualXMarkerHeading001, 0.0, 0.0, 0.0, True)
    ElseIf RitualLocation == 2
      PlayerRef.moveto(NecroLichRitualXMarkerHeading002, 0.0, 0.0, 0.0, True)
    EndIf
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
    If RitualLocation == 1
      NecroLichTransformationPhylacteryLightFX001.Disable(1 as Bool)
      NecroLichTransformationPhylacteryFX001.enable(False)
    ElseIf RitualLocation == 2
      NecroLichTransformationPhylacteryLightFX002.Disable(1 as Bool)
      NecroLichTransformationPhylacteryFX001.enable(False)
    EndIf
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
