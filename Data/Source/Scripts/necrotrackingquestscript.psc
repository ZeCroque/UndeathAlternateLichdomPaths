ScriptName NecroTrackingQuestSCRIPT Extends Quest

;-- Variables ---------------------------------------
Bool bDoomedWorld = False
Bool bInBleedout

;-- Properties --------------------------------------
ImageSpaceModifier Property IntroFX Auto
VisualEffect Property FXNecroUCLParticlesBlue Auto
Message Property NecroUCLPhylacteryShatterMsg Auto
Armor Property NecroLichSkin10 Auto
ImageSpaceModifier Property FadeToBlackHoldImod Auto
Int Property Daytimer Auto
Armor Property NecroLichSkin01 Auto
Armor Property NecroLichSkinGreenSkel_Orc Auto
Spell Property DLC1VampireChangeStagger Auto
GlobalVariable Property NecroLichRaceValue Auto
Armor Property NecroLichSkin07 Auto
Armor Property NecroLichSkinRedFlesh_Khajiit Auto
Armor Property NecroLichSkinBlackSkel_Elf Auto
Armor Property NecroLichSkinGreenSkel_Elf Auto
Perk Property NecroTranscendencePerk Auto
Armor Property NecroLichSkin02 Auto
ObjectReference Property NecroLichRitualXMarkerHeading002 Auto
Sound Property TransformExplosion02 Auto
Quest Property NecroLichRitualQuest Auto
ImageSpaceModifier Property EtherealizeImod Auto
Armor Property NecroLichSkinRedFlesh_Orc Auto
SoulGem Property NecroSoulGemBlackFilled Auto
Float Property FadeInTime Auto
ObjectReference Property NecroUCLRevenantMasterBeam01 Auto
Spell Property NecroDeathGrip Auto
VisualEffect Property FXNecroUCLParticlesRed Auto
Perk Property NecroPhylacteryRegenPerk Auto
Armor Property NecroLichSkinGreenSkel_Khajiit Auto
GlobalVariable Property NecroDeathCount Auto
Armor Property NecroLichSkinAyleid Auto
Armor Property NecroLichSkinGreenFlesh_Argonian Auto
VisualEffect Property FXNecroUCLEyeGlowGreen_LizardFlesh Auto
Message Property NecroUCLPhylacteryReformMsg Auto
GlobalVariable Property NecroLichColorValue Auto
Perk Property NecroMassReanimatePerk Auto
ObjectReference Property NecroLichTransformationRitualTarget02 Auto
Weapon Property Staff Auto
Armor Property SkinSkeletonNecroPriest Auto
ImageSpaceModifier Property DLC2ApocryphaRewardBookExit Auto
Float Property PercentHealth = 100.0 Auto
Spell Property NecroUCLTranscendence Auto
Armor Property NecroLichSkinGreenFlesh_Khajiit Auto
Bool Property Halo Auto
Armor Property NecroLichSkinWhiteSkel Auto
Armor Property NecroLichSkinBlackFlesh_Orc Auto
GlobalVariable Property NecroRevenant_BlackedCount Auto
VisualEffect Property FXNecroUCLEyeGlowRed Auto
EffectShader Property DLC1VampMistFormFX Auto
Perk Property NecroUCLDisableRespawnPerk Auto
Int Property GameDay Auto
Keyword Property ActorTypeUndead Auto
Message Property NecroUCLBelethorReformMsg Auto
Armor Property NecroLichSkin09 Auto
Spell Property NecroPerkPhylacteryRegenAbility Auto
Armor Property NecroLichSkinWhiteFlesh_Orc Auto
Armor Property NecroLichSkinWhiteSkel_Orc Auto
ObjectReference Property NecroUCLRevenantMasterBeam03 Auto
EffectShader Property TransitionFX Auto
ImageSpaceModifier Property IllusionLightMassiveImod Auto
GlobalVariable Property NecroLichModelValue Auto
VisualEffect Property FXNecroUCLEyeGlowPurple Auto
VisualEffect Property DragonPriestParticlesFX Auto
Armor Property NecroLichSkinUnderking Auto
Actor Property PlayerRef Auto
Armor Property NecroLichSkinWhiteFlesh_Elf Auto
Armor Property NecroLichSkinBlackFlesh_Elf Auto
Armor Property NecroLichSkinBlackSkel_Orc Auto
Armor Property NecroLichSkinWhiteSkel_Elf Auto
Float Property fdelay Auto
Explosion Property FXDragonPriestLargeExplosion Auto
VisualEffect Property FXNecroUCLEyeGlowRed_LizardFlesh Auto
Message Property NecroTranscendenceMsg Auto
VisualEffect Property FXNecroUCLEyeGlowBlue Auto
ImageSpaceModifier Property DLC2ApocryphaRewardBookEnter Auto
VisualEffect Property TargetVFX Auto
Armor Property NecroLichSkinRedSkel_Orc Auto
Spell Property NecroUCLIceCoffin Auto
Quest Property NecroTrackingQuest Auto
EffectShader Property Transition02FX Auto
Spell Property NecroUCLEtherealAbility Auto
Armor Property NecroLichSkinBlackFlesh_Khajiit Auto
Armor Property NecroLichSkinWhiteFlesh Auto
Armor Property NecroLichSkin08 Auto
VisualEffect Property FXNecroUCLEyeGlowBlue_CatFlesh Auto
VisualEffect Property CasterVFX Auto
EffectShader Property CasterFXS Auto
VisualEffect Property FXNecroUCLEyeGlowGreen_CatFlesh Auto
{ beast eye glow fx }
Message Property NecroUCLSovngardeDeathMsg Auto
VisualEffect Property FXNecroUCLEyeGlowRed_CatFlesh Auto
Perk Property NecroUCLBelethorSlavePerk Auto
VisualEffect Property FxfallingSandDragonPriestEffect Auto
Armor Property NecroLichSkinGreenSkel_Argonian Auto
Spell Property NecroPhylacteryEtherealizeSpell Auto
VisualEffect Property FXNecroUCLEyeGlowBlue_LizardFlesh Auto
Armor Property NecroLichSkinWhiteSkel_Khajiit Auto
VisualEffect Property FXNecroUCLEyeGlowPurple_CatFlesh Auto
VisualEffect Property FXNecroUCLEyeGlowPurple_LizardFlesh Auto
Armor Property NecroLichSkin05 Auto
shaderparticlegeometry Property PSGD Auto
ImageSpaceModifier Property LoopFX Auto
VisualEffect Property FXNecroUCLEyeGlowGreen Auto
{ eye glow fx }
VisualEffect Property DragonPriestEyeGlowFX Auto
VisualEffect Property FXNecroUCLParticlesGreen Auto
{ Floor based stream of upward particles }
VisualEffect Property FXNecroUCLParticlesPurple Auto
WorldSpace Property Sovngarde Auto
ObjectReference Property BelethorRef Auto
EffectShader Property EtherealizeShader02 Auto
GlobalVariable Property NecroPhylacterySoulCount Auto
EffectShader Property NecroLichTransformPlayerFireFXShort Auto
SoulGem Property NecroSoulGemBlack Auto
ObjectReference Property NecroLichPhylacteryMovableFX Auto
ObjectReference Property NecroLichPhylacteryMovable02 Auto
ObjectReference Property NecroLichPhylacteryMovable01 Auto
Race Property LichRace Auto
EffectShader Property EtherealizeShader01 Auto
ObjectReference Property NecroLichTransformationRitualTarget01 Auto
Armor Property NecroLichSkinWhiteSkel_Argonian Auto
Armor Property NecroLichSkinBlackSkel_Khajiit Auto
Armor Property NecroLichSkin03 Auto
Armor Property NecroLichSkin11 Auto
Armor Property NecroLichSkinGreenFlesh_Orc Auto
ObjectReference Property NecroLichRitualXMarkerHeading001 Auto
ObjectReference Property NecroLichTransformationPhylacteryFX002 Auto
Armor Property NecroLichSkinRedFlesh_Argonian Auto
Perk Property LightFoot Auto
Armor Property NecroLichSkinBlackSkel_Argonian Auto
ImageSpaceModifier Property OutroFX Auto
Armor Property NecroLichSkinRedSkel_Argonian Auto
Armor Property NecroLichSkinWhiteFlesh_Argonian Auto
Float Property fimodstrength Auto
Armor Property NecroLichSkinRedFlesh_Elf Auto
Armor Property NecroLichSkinRedSkel_Elf Auto
Spell Property NecroAreaSoulTrap Auto
Armor Property NecroLichSkinGreenFlesh_Elf Auto
Armor Property NecroLichSkinBlackFlesh_Argonian Auto
Armor Property NecroLichSkin06 Auto
Armor Property NecroLichSkinRedSkel_Khajiit Auto
Armor Property NecroLichSkinDragonPriest Auto
Spell Property NecroRevert Auto
Spell Property LichTransform Auto
Bool Property DLC1HasLightfoot Auto
Int Property CurrentDay Auto
VisualEffect Property EtherealizeVFX Auto
ReferenceAlias Property PlayerAlias Auto
ObjectReference Property NecroLichRitualXMarkerMovable01 Auto
ObjectReference Property NecroLichTransformationPhylacteryFX001 Auto
EffectShader Property TargetFXS Auto
ObjectReference Property NecroUCLRevenantMasterBeam02 Auto
GlobalVariable Property NecroRevenant_ScrollCount Auto
Armor Property NecroLichSkin04 Auto
GlobalVariable Property NecroLichEyeFXValue Auto
Armor Property NecroLichSkinWhiteFlesh_Khajiit Auto

;-- Functions ---------------------------------------

; Skipped compiler generated GetState

Function PhylacteryBelethorEffects()
  TransformExplosion02.Play(NecroLichRitualXMarkerMovable01)
  TargetVFX.Play(BelethorRef, 8.8, PlayerRef as ObjectReference)
  CasterVFX.Play(PlayerRef as ObjectReference, 8.8, BelethorRef)
  TargetFXS.Play(PlayerRef as ObjectReference, 15 as Float)
  CasterFXS.Play(BelethorRef, 15 as Float)
  IllusionLightMassiveImod.apply(1.0)
EndFunction

Event OnUpdate()
  GameDay = Utility.GetCurrentGameTime() as Int
  If PlayerRef.HasPerk(NecroMassReanimatePerk) == 0 as Bool
    PlayerRef.addperk(NecroMassReanimatePerk)
  EndIf
  If PlayerRef.HasPerk(NecroTranscendencePerk) == 0 as Bool && PlayerRef.HasPerk(NecroPhylacteryRegenPerk) == 1 as Bool
    Int DeathCount = NecroDeathCount.GetValueInt()
    If DeathCount >= 3
      PlayerRef.addperk(NecroTranscendencePerk)
      NecroTranscendenceMsg.Show(0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
      PlayerRef.addspell(NecroUCLTranscendence, True)
    EndIf
  EndIf
  If Halo == True
    If CurrentDay != GameDay
      Halo = False
      NecroUCLRevenantMasterBeam01.Disable(False)
      NecroUCLRevenantMasterBeam02.Disable(False)
      NecroUCLRevenantMasterBeam03.Disable(False)
      Daytimer = 0
      GameDay = Utility.GetCurrentGameTime() as Int
      CurrentDay = GameDay
    EndIf
  EndIf
  If CurrentDay != GameDay
    If Daytimer < 7
      Daytimer += 1
      GameDay = Utility.GetCurrentGameTime() as Int
      CurrentDay = GameDay
    Else
      Halo = True
      NecroRevenant_BlackedCount.SetValue(0.0)
      NecroRevenant_ScrollCount.SetValue(0.0)
      NecroUCLRevenantMasterBeam01.Enable(False)
      NecroUCLRevenantMasterBeam02.Enable(False)
      NecroUCLRevenantMasterBeam03.Enable(False)
      Daytimer = 0
      GameDay = Utility.GetCurrentGameTime() as Int
      CurrentDay = GameDay
      If NecroPhylacterySoulCount.GetValueInt() >= 35
        Debug.Notification("Mannimarco's Moon passes over Nirn today.")
      EndIf
    EndIf
  EndIf
  Self.RegisterForSingleUpdate(60.0)
EndEvent

; Skipped compiler generated GotoState

Function EndEtherealizeEffects()
  EtherealizeShader01.Stop(Game.GetPlayer() as ObjectReference)
  EtherealizeShader02.Stop(Game.GetPlayer() as ObjectReference)
  EtherealizeVFX.Stop(Game.GetPlayer() as ObjectReference)
  LoopFX.PopTo(OutroFX, fimodstrength)
EndFunction

Function UCLHandleEyeFX(Actor akActor)
  Int EyeColor = NecroLichEyeFXValue.GetValueInt()
  Int RaceValue = NecroLichRaceValue.GetValueInt()
  Int ModelValue = NecroLichModelValue.GetValueInt()
  If ModelValue != 1 && ModelValue != 2
    If EyeColor == 1
      FXNecroUCLParticlesPurple.Play(akActor as ObjectReference, -1 as Float, None)
      FXNecroUCLEyeGlowPurple.Play(akActor as ObjectReference, -1 as Float, None)
    ElseIf EyeColor == 2
      FXNecroUCLParticlesBlue.Play(akActor as ObjectReference, -1 as Float, None)
      FXNecroUCLEyeGlowBlue.Play(akActor as ObjectReference, -1 as Float, None)
    ElseIf EyeColor == 3
      FXNecroUCLParticlesRed.Play(akActor as ObjectReference, -1 as Float, None)
      FXNecroUCLEyeGlowRed.Play(akActor as ObjectReference, -1 as Float, None)
    ElseIf EyeColor == 4
      FXNecroUCLParticlesGreen.Play(akActor as ObjectReference, -1 as Float, None)
      FXNecroUCLEyeGlowGreen.Play(akActor as ObjectReference, -1 as Float, None)
    EndIf
  ElseIf RaceValue == 3
    If EyeColor == 1
      FXNecroUCLParticlesPurple.Play(akActor as ObjectReference, -1 as Float, None)
      FXNecroUCLEyeGlowPurple_LizardFlesh.Play(akActor as ObjectReference, -1 as Float, None)
    ElseIf EyeColor == 2
      FXNecroUCLParticlesBlue.Play(akActor as ObjectReference, -1 as Float, None)
      FXNecroUCLEyeGlowBlue_LizardFlesh.Play(akActor as ObjectReference, -1 as Float, None)
    ElseIf EyeColor == 3
      FXNecroUCLParticlesRed.Play(akActor as ObjectReference, -1 as Float, None)
      FXNecroUCLEyeGlowRed_LizardFlesh.Play(akActor as ObjectReference, -1 as Float, None)
    ElseIf EyeColor == 4
      FXNecroUCLParticlesGreen.Play(akActor as ObjectReference, -1 as Float, None)
      FXNecroUCLEyeGlowGreen_LizardFlesh.Play(akActor as ObjectReference, -1 as Float, None)
    EndIf
  ElseIf RaceValue == 4
    If EyeColor == 1
      FXNecroUCLParticlesPurple.Play(akActor as ObjectReference, -1 as Float, None)
      FXNecroUCLEyeGlowPurple_CatFlesh.Play(akActor as ObjectReference, -1 as Float, None)
    ElseIf EyeColor == 2
      FXNecroUCLParticlesBlue.Play(akActor as ObjectReference, -1 as Float, None)
      FXNecroUCLEyeGlowBlue_CatFlesh.Play(akActor as ObjectReference, -1 as Float, None)
    ElseIf EyeColor == 3
      FXNecroUCLParticlesRed.Play(akActor as ObjectReference, -1 as Float, None)
      FXNecroUCLEyeGlowRed_CatFlesh.Play(akActor as ObjectReference, -1 as Float, None)
    ElseIf EyeColor == 4
      FXNecroUCLParticlesGreen.Play(akActor as ObjectReference, -1 as Float, None)
      FXNecroUCLEyeGlowGreen_CatFlesh.Play(akActor as ObjectReference, -1 as Float, None)
    EndIf
  ElseIf EyeColor == 1
    FXNecroUCLParticlesPurple.Play(akActor as ObjectReference, -1 as Float, None)
    FXNecroUCLEyeGlowPurple.Play(akActor as ObjectReference, -1 as Float, None)
  ElseIf EyeColor == 2
    FXNecroUCLParticlesBlue.Play(akActor as ObjectReference, -1 as Float, None)
    FXNecroUCLEyeGlowBlue.Play(akActor as ObjectReference, -1 as Float, None)
  ElseIf EyeColor == 3
    FXNecroUCLParticlesRed.Play(akActor as ObjectReference, -1 as Float, None)
    FXNecroUCLEyeGlowRed.Play(akActor as ObjectReference, -1 as Float, None)
  ElseIf EyeColor == 4
    FXNecroUCLParticlesGreen.Play(akActor as ObjectReference, -1 as Float, None)
    FXNecroUCLEyeGlowGreen.Play(akActor as ObjectReference, -1 as Float, None)
  EndIf
EndFunction

Event OnInit()
  GameDay = Utility.GetCurrentGameTime() as Int
  CurrentDay = GameDay
  Halo = True
  Self.RegisterForSingleUpdate(60.0)
  If PlayerRef.HasPerk(NecroMassReanimatePerk) == 0 as Bool
    PlayerRef.addperk(NecroMassReanimatePerk)
  EndIf
EndEvent

Function Phylactery01Effects()
  TransformExplosion02.Play(NecroLichRitualXMarkerHeading001)
  TargetVFX.Play(NecroLichTransformationRitualTarget01, 8.7, PlayerRef as ObjectReference)
  CasterVFX.Play(PlayerRef as ObjectReference, 8.9, NecroLichTransformationRitualTarget01)
  TargetFXS.Play(PlayerRef as ObjectReference, 5 as Float)
  CasterFXS.Play(NecroLichTransformationRitualTarget01, 4 as Float)
  IllusionLightMassiveImod.apply(1.0)
EndFunction

Function Phylactery02Effects()
  TransformExplosion02.Play(NecroLichRitualXMarkerHeading002)
  TargetVFX.Play(NecroLichTransformationRitualTarget02, 8.8, PlayerRef as ObjectReference)
  CasterVFX.Play(PlayerRef as ObjectReference, 8.8, NecroLichTransformationRitualTarget02)
  TargetFXS.Play(PlayerRef as ObjectReference, 15 as Float)
  CasterFXS.Play(NecroLichTransformationRitualTarget02, 15 as Float)
  IllusionLightMassiveImod.apply(1.0)
EndFunction

Function UCLStopEyeFX(Actor akActor)
  DragonPriestParticlesFX.Stop(akActor as ObjectReference)
  DragonPriestEyeGlowFX.Stop(akActor as ObjectReference)
  FXNecroUCLParticlesPurple.Stop(akActor as ObjectReference)
  FXNecroUCLEyeGlowPurple.Stop(akActor as ObjectReference)
  FXNecroUCLParticlesBlue.Stop(akActor as ObjectReference)
  FXNecroUCLEyeGlowBlue.Stop(akActor as ObjectReference)
  FXNecroUCLParticlesRed.Stop(akActor as ObjectReference)
  FXNecroUCLEyeGlowRed.Stop(akActor as ObjectReference)
  FXNecroUCLParticlesGreen.Stop(akActor as ObjectReference)
  FXNecroUCLEyeGlowGreen.Stop(akActor as ObjectReference)
  FXNecroUCLEyeGlowPurple_LizardFlesh.Stop(akActor as ObjectReference)
  FXNecroUCLEyeGlowPurple_CatFlesh.Stop(akActor as ObjectReference)
  FXNecroUCLEyeGlowBlue_LizardFlesh.Stop(akActor as ObjectReference)
  FXNecroUCLEyeGlowBlue_CatFlesh.Stop(akActor as ObjectReference)
  FXNecroUCLEyeGlowRed_LizardFlesh.Stop(akActor as ObjectReference)
  FXNecroUCLEyeGlowRed_CatFlesh.Stop(akActor as ObjectReference)
  FXNecroUCLEyeGlowGreen_LizardFlesh.Stop(akActor as ObjectReference)
  FXNecroUCLEyeGlowGreen_CatFlesh.Stop(akActor as ObjectReference)
EndFunction

Function BeginEtherealizeEffects()
  IntroFX.apply(1.0)
  Utility.wait(fdelay)
  IntroFX.PopTo(LoopFX, 1.0)
  EtherealizeShader01.Play(Game.GetPlayer() as ObjectReference, -1.0)
  EtherealizeShader02.Play(Game.GetPlayer() as ObjectReference, -1.0)
  EtherealizeVFX.Play(Game.GetPlayer() as ObjectReference, -1.0, None)
EndFunction

Function PhylacteryMovableEffects()
  TransformExplosion02.Play(NecroLichRitualXMarkerMovable01)
  TargetVFX.Play(NecroLichPhylacteryMovable02, 8.8, PlayerRef as ObjectReference)
  CasterVFX.Play(PlayerRef as ObjectReference, 8.8, NecroLichPhylacteryMovable02)
  TargetFXS.Play(PlayerRef as ObjectReference, 15 as Float)
  CasterFXS.Play(NecroLichPhylacteryMovable02, 15 as Float)
  IllusionLightMassiveImod.apply(1.0)
EndFunction

Function GenericPhylacteryEffects()
  NecroLichTrackingQuest trackingQuest = NecroLichRitualQuest as NecroLichTrackingQuest
  TransformExplosion02.Play(trackingQuest.RitualMarker)
  TargetVFX.Play(trackingQuest.Phylactery, 8.8, PlayerRef as ObjectReference)
  CasterVFX.Play(PlayerRef as ObjectReference, 8.8, trackingQuest.Phylactery)
  TargetFXS.Play(PlayerRef as ObjectReference, 15 as Float)
  CasterFXS.Play(trackingQuest.Phylactery, 15 as Float)
  IllusionLightMassiveImod.apply(1.0)
EndFunction

Function PlayerInBleedout()
  If PlayerRef.GetWorldSpace() == Sovngarde
    bDoomedWorld = True
  Else
    bDoomedWorld = False
  EndIf
  If PlayerRef.HasPerk(NecroUCLDisableRespawnPerk) == 1 as Bool
    Game.DisablePlayerControls(True, True, True, False, True, True, True, True, 0)
    PlayerRef.SetGhost(True)
    PlayerRef.UnequipAll()
    TransformExplosion02.Play(PlayerRef as ObjectReference)
    PlayerRef.placeAtMe(FXDragonPriestLargeExplosion as Form, 1, False, False)
    NecroUCLPhylacteryShatterMsg.Show(0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
    Utility.wait(1.0)
    PlayerAlias.Clear()
    PlayerRef.DamageAV("Health", 9999 as Float)
    Return 
  EndIf
  If PlayerRef.HasPerk(NecroPhylacteryRegenPerk) == 1 as Bool && PlayerRef.GetRace() == LichRace
    Game.DisablePlayerControls(True, True, True, False, True, True, True, True, 0)
    PlayerRef.GetActorBase().SetInvulnerable(True)
    PlayerRef.SetGhost(True)
    Game.SetPlayerAIDriven(True)
    PlayerRef.placeAtMe(FXDragonPriestLargeExplosion as Form, 1, False, False)
    NecroPhylacteryEtherealizeSpell.Cast(PlayerRef as ObjectReference, PlayerRef as ObjectReference)
    PlayerRef.pushActorAway(PlayerRef, 50 as Float)
    Self.BeginEtherealizeEffects()
    Self.UCLStopEyeFX(PlayerRef)
    Self.UCLHandleEyeFX(PlayerRef)
    Utility.wait(1.0)
    TransitionFX.Play(PlayerRef as ObjectReference, -1.0)
    DLC2ApocryphaRewardBookEnter.apply(1.0)
    DLC2ApocryphaRewardBookEnter.PopTo(FadeToBlackHoldImod, 1.0)
    (NecroTrackingQuest as NecroTrackingQuestSCRIPT).MovePlayerHome(True)
    TransitionFX.Stop(PlayerRef as ObjectReference)
    PlayerRef.GetActorBase().SetInvulnerable(False)
    PlayerRef.SetGhost(False)
    Game.SetPlayerAIDriven(False)
    bInBleedout = False
  EndIf
  If PlayerRef.HasPerk(NecroPhylacteryRegenPerk) == 1 as Bool && PlayerRef.GetRace() != LichRace
    Game.DisablePlayerControls(True, True, True, False, True, True, True, True, 0)
    PlayerRef.GetActorBase().SetInvulnerable(True)
    PlayerRef.SetGhost(True)
    Game.SetPlayerAIDriven(True)
    PlayerRef.placeAtMe(FXDragonPriestLargeExplosion as Form, 1, False, False)
    NecroPhylacteryEtherealizeSpell.Cast(PlayerRef as ObjectReference, PlayerRef as ObjectReference)
    Self.BeginEtherealizeEffects()
    Utility.wait(1.0)
    TransitionFX.Play(PlayerRef as ObjectReference, -1.0)
    DLC2ApocryphaRewardBookEnter.apply(1.0)
    Utility.wait(1.0)
    DLC2ApocryphaRewardBookEnter.PopTo(FadeToBlackHoldImod, 1.0)
    Self.MovePlayerHome(True)
    TransitionFX.Stop(PlayerRef as ObjectReference)
    PlayerRef.GetActorBase().SetInvulnerable(False)
    PlayerRef.SetGhost(False)
    Game.SetPlayerAIDriven(False)
    PlayerRef.equipspell(LichTransform, 2)
    bInBleedout = False
  EndIf
EndFunction

Function MovePlayerHome(Bool bHealPlayer)
  Actor player = Game.GetPlayer()
  player.GetActorBase().SetInvulnerable(True)
  player.removespell(NecroPerkPhylacteryRegenAbility)
  If bHealPlayer
    player.RestoreActorValue("Health", 9999 as Float)
  EndIf
  NecroLichTrackingQuest trackingQuest = NecroLichRitualQuest as NecroLichTrackingQuest
  If NecroLichPhylacteryMovable02.IsEnabled() == 1 as Bool
    player.moveto(NecroLichRitualXMarkerMovable01, 0.0, 0.0, 0.0, True)
    NecroLichPhylacteryMovableFX.Enable(False)
    FadeToBlackHoldImod.PopTo(DLC2ApocryphaRewardBookExit, 1.0)
    FadeToBlackHoldImod.Remove()
    Self.PhylacteryMovableEffects()
  ElseIf PlayerRef.HasPerk(NecroUCLBelethorSlavePerk) == 1 as Bool
    player.moveto(NecroLichRitualXMarkerMovable01, 0.0, 0.0, 0.0, True)
    FadeToBlackHoldImod.PopTo(DLC2ApocryphaRewardBookExit, 1.0)
    FadeToBlackHoldImod.Remove()
    Self.PhylacteryBelethorEffects()
  ElseIf(trackingQuest.Phylactery.IsEnabled()) 
    ;Phylactery is still the ritual one, doing some common logic
    Player.MoveTo(trackingQuest.RitualMarker, 0.0, 0.0, 0.0, True)
    trackingQuest.PostRitualFX.Enable(False)
    FadeToBlackHoldImod.PopTo(DLC2ApocryphaRewardBookExit, 1.0)
    FadeToBlackHoldImod.Remove()

    ;Then do some dedicated logic of phylactery is provided by Undeath, or some generic logic otherwise
    If(trackingQuest.Phylactery == NecroLichTransformationRitualTarget01)
      Phylactery01Effects()
    ElseIf(trackingQuest.Phylactery == NecroLichTransformationRitualTarget02)
      Phylactery02Effects()
    Else
      GenericPhylacteryEffects()
    EndIf
  EndIf
  If player.GetRace() != LichRace
    player.UnequipAll()
    player.removespell(NecroUCLEtherealAbility)
  Else
    If NecroLichColorValue.GetValueInt() == 5
      player.addspell(NecroUCLEtherealAbility, False)
    Else
      player.removespell(NecroUCLEtherealAbility)
    EndIf
    If NecroLichModelValue.GetValueInt() == 3
      player.EquipItem(NecroLichSkinDragonPriest as Form, False, True)
    ElseIf NecroLichModelValue.GetValueInt() == 4
      player.EquipItem(NecroLichSkinAyleid as Form, False, True)
    ElseIf NecroLichModelValue.GetValueInt() == 5
      player.EquipItem(NecroLichSkinUnderking as Form, False, True)
    ElseIf NecroLichModelValue.GetValueInt() == 1
      If NecroLichRaceValue.GetValueInt() == 0
        If NecroLichColorValue.GetValueInt() == 1
          player.EquipItem(NecroLichSkin01 as Form, False, True)
        ElseIf NecroLichColorValue.GetValueInt() == 2
          player.EquipItem(NecroLichSkin02 as Form, False, True)
        ElseIf NecroLichColorValue.GetValueInt() == 3
          player.EquipItem(NecroLichSkin09 as Form, False, True)
        ElseIf NecroLichColorValue.GetValueInt() == 4
          player.EquipItem(NecroLichSkinWhiteFlesh as Form, False, True)
        Else
          player.EquipItem(NecroLichSkin09 as Form, False, True)
        EndIf
      ElseIf NecroLichRaceValue.GetValueInt() == 1
        If NecroLichColorValue.GetValueInt() == 1
          player.EquipItem(NecroLichSkinRedFlesh_Elf as Form, False, True)
        ElseIf NecroLichColorValue.GetValueInt() == 2
          player.EquipItem(NecroLichSkinGreenFlesh_Elf as Form, False, True)
        ElseIf NecroLichColorValue.GetValueInt() == 3
          player.EquipItem(NecroLichSkinBlackFlesh_Elf as Form, False, True)
        ElseIf NecroLichColorValue.GetValueInt() == 4
          player.EquipItem(NecroLichSkinWhiteFlesh_Elf as Form, False, True)
        Else
          player.EquipItem(NecroLichSkinBlackFlesh_Elf as Form, False, True)
        EndIf
      ElseIf NecroLichRaceValue.GetValueInt() == 2
        If NecroLichColorValue.GetValueInt() == 1
          player.EquipItem(NecroLichSkinRedFlesh_Orc as Form, False, True)
        ElseIf NecroLichColorValue.GetValueInt() == 2
          player.EquipItem(NecroLichSkinGreenFlesh_Orc as Form, False, True)
        ElseIf NecroLichColorValue.GetValueInt() == 3
          player.EquipItem(NecroLichSkinBlackFlesh_Orc as Form, False, True)
        ElseIf NecroLichColorValue.GetValueInt() == 4
          player.EquipItem(NecroLichSkinWhiteFlesh_Orc as Form, False, True)
        Else
          player.EquipItem(NecroLichSkinBlackFlesh_Orc as Form, False, True)
        EndIf
      ElseIf NecroLichRaceValue.GetValueInt() == 3
        If NecroLichColorValue.GetValueInt() == 1
          player.EquipItem(NecroLichSkinRedFlesh_Argonian as Form, False, True)
        ElseIf NecroLichColorValue.GetValueInt() == 2
          player.EquipItem(NecroLichSkinGreenFlesh_Argonian as Form, False, True)
        ElseIf NecroLichColorValue.GetValueInt() == 3
          player.EquipItem(NecroLichSkinBlackFlesh_Argonian as Form, False, True)
        ElseIf NecroLichColorValue.GetValueInt() == 4
          player.EquipItem(NecroLichSkinWhiteFlesh_Argonian as Form, False, True)
        Else
          player.EquipItem(NecroLichSkinBlackFlesh_Argonian as Form, False, True)
        EndIf
      ElseIf NecroLichRaceValue.GetValueInt() == 4
        If NecroLichColorValue.GetValueInt() == 1
          player.EquipItem(NecroLichSkinRedFlesh_Khajiit as Form, False, True)
        ElseIf NecroLichColorValue.GetValueInt() == 2
          player.EquipItem(NecroLichSkinGreenFlesh_Khajiit as Form, False, True)
        ElseIf NecroLichColorValue.GetValueInt() == 3
          player.EquipItem(NecroLichSkinBlackFlesh_Khajiit as Form, False, True)
        ElseIf NecroLichColorValue.GetValueInt() == 4
          player.EquipItem(NecroLichSkinWhiteFlesh_Khajiit as Form, False, True)
        Else
          player.EquipItem(NecroLichSkinBlackFlesh_Khajiit as Form, False, True)
        EndIf
      EndIf
    ElseIf NecroLichModelValue.GetValueInt() == 2
      If NecroLichRaceValue.GetValueInt() == 0
        If NecroLichColorValue.GetValueInt() == 1
          player.EquipItem(NecroLichSkin05 as Form, False, True)
        ElseIf NecroLichColorValue.GetValueInt() == 2
          player.EquipItem(NecroLichSkin06 as Form, False, True)
        ElseIf NecroLichColorValue.GetValueInt() == 3
          player.EquipItem(NecroLichSkin11 as Form, False, True)
        ElseIf NecroLichColorValue.GetValueInt() == 4
          player.EquipItem(NecroLichSkinWhiteSkel as Form, False, True)
        Else
          player.EquipItem(NecroLichSkin11 as Form, False, True)
        EndIf
      ElseIf NecroLichRaceValue.GetValueInt() == 1
        If NecroLichColorValue.GetValueInt() == 1
          player.EquipItem(NecroLichSkinRedSkel_Elf as Form, False, True)
        ElseIf NecroLichColorValue.GetValueInt() == 2
          player.EquipItem(NecroLichSkinGreenSkel_Elf as Form, False, True)
        ElseIf NecroLichColorValue.GetValueInt() == 3
          player.EquipItem(NecroLichSkinBlackSkel_Elf as Form, False, True)
        ElseIf NecroLichColorValue.GetValueInt() == 4
          player.EquipItem(NecroLichSkinWhiteSkel_Elf as Form, False, True)
        Else
          player.EquipItem(NecroLichSkinBlackSkel_Elf as Form, False, True)
        EndIf
      ElseIf NecroLichRaceValue.GetValueInt() == 2
        If NecroLichColorValue.GetValueInt() == 1
          player.EquipItem(NecroLichSkinRedSkel_Orc as Form, False, True)
        ElseIf NecroLichColorValue.GetValueInt() == 2
          player.EquipItem(NecroLichSkinGreenSkel_Orc as Form, False, True)
        ElseIf NecroLichColorValue.GetValueInt() == 3
          player.EquipItem(NecroLichSkinBlackSkel_Orc as Form, False, True)
        ElseIf NecroLichColorValue.GetValueInt() == 4
          player.EquipItem(NecroLichSkinWhiteSkel_Orc as Form, False, True)
        Else
          player.EquipItem(NecroLichSkinBlackSkel_Orc as Form, False, True)
        EndIf
      ElseIf NecroLichRaceValue.GetValueInt() == 3
        If NecroLichColorValue.GetValueInt() == 1
          player.EquipItem(NecroLichSkinRedSkel_Argonian as Form, False, True)
        ElseIf NecroLichColorValue.GetValueInt() == 2
          player.EquipItem(NecroLichSkinGreenSkel_Argonian as Form, False, True)
        ElseIf NecroLichColorValue.GetValueInt() == 3
          player.EquipItem(NecroLichSkinBlackSkel_Argonian as Form, False, True)
        ElseIf NecroLichColorValue.GetValueInt() == 4
          player.EquipItem(NecroLichSkinWhiteSkel_Argonian as Form, False, True)
        Else
          player.EquipItem(NecroLichSkinBlackSkel_Argonian as Form, False, True)
        EndIf
      ElseIf NecroLichRaceValue.GetValueInt() == 4
        If NecroLichColorValue.GetValueInt() == 1
          player.EquipItem(NecroLichSkinRedSkel_Khajiit as Form, False, True)
        ElseIf NecroLichColorValue.GetValueInt() == 2
          player.EquipItem(NecroLichSkinGreenSkel_Khajiit as Form, False, True)
        ElseIf NecroLichColorValue.GetValueInt() == 3
          player.EquipItem(NecroLichSkinBlackSkel_Khajiit as Form, False, True)
        ElseIf NecroLichColorValue.GetValueInt() == 4
          player.EquipItem(NecroLichSkinWhiteSkel_Khajiit as Form, False, True)
        Else
          player.EquipItem(NecroLichSkinBlackSkel_Khajiit as Form, False, True)
        EndIf
      EndIf
    Else
      player.EquipItem(NecroLichSkin11 as Form, False, True)
    EndIf
  EndIf
  FxfallingSandDragonPriestEffect.Stop(Game.GetPlayer() as ObjectReference)
  If player.GetActorValue("Health") < 0 as Float
    player.RestoreActorValue("Health", 9999 as Float)
  EndIf
  If player.HasPerk(NecroUCLBelethorSlavePerk)
    NecroUCLBelethorReformMsg.Show(0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
  Else
    NecroUCLPhylacteryReformMsg.Show(0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
  EndIf
  PlayerAlias.Clear()
  If Game.GetPlayer().GetRace() == LichRace
    player.equipspell(NecroUCLIceCoffin, 0)
    player.equipspell(NecroDeathGrip, 1)
    player.equipspell(NecroRevert, 2)
  EndIf
  player.GetActorBase().SetInvulnerable(False)
  player.addspell(NecroPerkPhylacteryRegenAbility, False)
  NecroDeathCount.Mod(1.0)
  Game.EnablePlayerControls(True, True, True, True, True, True, True, True, 0)
  If bDoomedWorld == True
    NecroUCLSovngardeDeathMsg.Show(0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
  EndIf
  Utility.wait(3.0)
  player.removespell(NecroPhylacteryEtherealizeSpell)
  Self.EndEtherealizeEffects()
EndFunction

Function LichfootCheck()
  If Game.GetPlayer().HasPerk(LightFoot) == True
    DLC1HasLightfoot = True
  Else
    DLC1HasLightfoot = False
  EndIf
EndFunction
