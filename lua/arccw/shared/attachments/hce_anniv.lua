att.PrintName = "Anniversary"
att.Icon = Material("entities/hceanniv.png")
att.Description = "Anniversary Models for the Halo Combat Evolved suite of weaponry."
att.Desc_Pros = {
    "  Purely Cosmetic"
}
att.Desc_Cons = {
}
att.Slot = {"skin_hcesg","skin_hcerl","skin_hcem6d","skin_hcear","skin_hcesr"}

att.Free = true

att.Hook_GetShootSound = "hcea_magnumfire"

att.ActivateElements = {"anniv"}
att.GivesFlags = {"anniv"}