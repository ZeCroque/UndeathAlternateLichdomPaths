ScriptName NecroLichTrackingQuest Extends Quest conditional

;-- Variables ---------------------------------------
Int doOnce = 0

;-- Properties --------------------------------------
Book Property NecroSewerLaboratoryUpgrade Auto
Race Property WoodElfRaceVampire Auto
Bool Property Flesh Auto
Race Property KhajiitRaceVampire Auto
Race Property RedguardRace Auto
Race Property OrcRaceVampire Auto
Race Property PlayerOriginalRace Auto
Race Property BretonRaceVampire Auto
FormList Property CrimeFactions Auto
Race Property DarkElfRace Auto
Spell Property NecroLichTransformationRitual Auto
Race Property HighElfRace Auto
Book Property NecroTowerLaboratoryUpgrade Auto
Bool Property DLC1HasLightfoot Auto
Race Property ImperialRaceVampire Auto
Bool Property HasElixir Auto
Race Property ArgonianRace Auto
Race Property OrcRace Auto
Race Property BretonRace Auto
Int Property Skin Auto conditional
Race Property HighElfRaceVampire Auto
Armor Property NecroLichForm Auto
Quest Property MQ101 Auto
Bool Property HasPhylactery Auto
Faction Property HunterFaction Auto
Perk Property Lightfoot Auto
Spell Property AbLichNecroPassive Auto
Int Property Shroud Auto conditional
Bool Property HasUpgrade Auto
Race Property ArgonianRaceVampire Auto
MagicEffect Property NecroRevertEffect Auto
Race Property NordRaceVampire Auto
Race Property WoodElfRace Auto
Race Property RedguardRaceVampire Auto
Faction Property LichFaction Auto
Race Property KhajiitRace Auto
Race Property DarkElfRaceVampire Auto
Potion Property NecroLichTransformationRitualPotion Auto
Int Property InTrigger Auto conditional
Race Property LichRace Auto
Race Property NordRace Auto
Quest Property NecroLichRitualQuest Auto
MiscObject Property NecroLichPhylactery Auto
Race Property ImperialRace Auto

;-- Functions ---------------------------------------

; Skipped compiler generated GetState

; Skipped compiler generated GotoState

Function GetPlayerOriginalRace()
  PlayerOriginalRace = Game.GetPlayer().GetRace()
  If PlayerOriginalRace == ArgonianRaceVampire
    PlayerOriginalRace = ArgonianRace
  ElseIf PlayerOriginalRace == BretonRaceVampire
    PlayerOriginalRace = BretonRace
  ElseIf PlayerOriginalRace == DarkElfRaceVampire
    PlayerOriginalRace = DarkElfRace
  ElseIf PlayerOriginalRace == HighElfRaceVampire
    PlayerOriginalRace = HighElfRace
  ElseIf PlayerOriginalRace == ImperialRaceVampire
    PlayerOriginalRace = ImperialRace
  ElseIf PlayerOriginalRace == KhajiitRaceVampire
    PlayerOriginalRace = KhajiitRace
  ElseIf PlayerOriginalRace == NordRaceVampire
    PlayerOriginalRace = NordRace
  ElseIf PlayerOriginalRace == OrcRaceVampire
    PlayerOriginalRace = OrcRace
  ElseIf PlayerOriginalRace == RedguardRaceVampire
    PlayerOriginalRace = RedguardRace
  ElseIf PlayerOriginalRace == WoodElfRaceVampire
    PlayerOriginalRace = WoodElfRace
  EndIf
EndFunction

Function RunPotionCheck()
  If Game.GetPlayer().GetItemCount(NecroLichTransformationRitualPotion as Form) >= 1 && HasElixir == 0 as Bool
    NecroLichRitualQuest.SetStage(40)
    HasElixir = 1 as Bool
  EndIf
EndFunction

Function RunItemCheck()
  If Game.GetPlayer().GetItemCount(NecroSewerLaboratoryUpgrade as Form) >= 1 || Game.GetPlayer().GetItemCount(NecroTowerLaboratoryUpgrade as Form) >= 1 && HasUpgrade == 0 as Bool
    NecroLichRitualQuest.SetStage(20)
    HasUpgrade = 1 as Bool
  EndIf
  If Game.GetPlayer().GetItemCount(NecroLichPhylactery as Form) >= 1 && HasPhylactery == 0 as Bool
    NecroLichRitualQuest.SetStage(30)
    HasPhylactery = 1 as Bool
  EndIf
  If Game.GetPlayer().GetItemCount(NecroLichTransformationRitualPotion as Form) >= 1 && HasElixir == 0 as Bool
    NecroLichRitualQuest.SetStage(40)
    HasElixir = 1 as Bool
  EndIf
  If HasUpgrade == 1 as Bool && HasPhylactery == 1 as Bool && HasElixir == 1 as Bool
    NecroLichRitualQuest.SetStage(50)
  EndIf
EndFunction
