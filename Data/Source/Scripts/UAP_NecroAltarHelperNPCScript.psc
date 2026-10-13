Scriptname UAP_NecroAltarHelperNPCScript extends Actor

Quest Property UAP_CursedArtifactQuest Auto
Message Property UAP_ArtifactYetCursedMessage Auto

Event OnCellAttach()
    AddInventoryEventFilter(None)
EndEvent

Event OnItemAdded(Form akBaseItem, int aiItemCount, ObjectReference akItemReference, ObjectReference akSourceContainer)
    ReferenceAlias cursedArtifactAlias = UAP_CursedArtifactQuest.GetAlias(0) as ReferenceAlias
    If(!cursedArtifactAlias.GetRef())
        ObjectReference artifact = DropObject(akBaseItem)
        cursedArtifactAlias.ForceRefTo(artifact)
        Game.GetPlayer().AddItem(artifact)
    Else
        Game.GetPlayer().AddItem(akBaseItem)
        UAP_ArtifactYetCursedMessage.Show()
    EndIf
EndEvent