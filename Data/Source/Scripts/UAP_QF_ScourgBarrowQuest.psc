;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 5
Scriptname UAP_QF_ScourgBarrowQuest Extends Quest Hidden

;BEGIN ALIAS PROPERTY AltarSecretDoor
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_AltarSecretDoor Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY AntiochJournal04
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_AntiochJournal04 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Antioch
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Antioch Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Player
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Player Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY ArkayPriestHeart
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_ArkayPriestHeart Auto
;END ALIAS PROPERTY

;BEGIN FRAGMENT Fragment_4
Function Fragment_4()
;BEGIN CODE
SetObjectiveCompleted(10)
SetObjectiveDisplayed(15)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_3
Function Fragment_3()
;BEGIN CODE
SetObjectiveCompleted(20)
Stop()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_2
Function Fragment_2()
;BEGIN CODE
SetObjectiveDisplayed(0)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_1
Function Fragment_1()
;BEGIN CODE
SetObjectiveCompleted(15)
SetObjectiveDisplayed(20)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_0
Function Fragment_0()
;BEGIN CODE
SetObjectiveCompleted(0)
SetObjectiveDisplayed(10)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment
