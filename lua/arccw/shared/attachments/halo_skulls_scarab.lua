att.PrintName = "Scarab Skull"
att.Icon = Material("entities/hce_skull_placeholder.png", "smooth mips")
att.Description = "Enables the power of the Scarab skull."
att.Desc_Pros = {
	" All player held firearms shoot",
	" Scarab Gun beams.",
}
att.Desc_Cons = {
	" You WILL get caught in its splash damage,",
	" eventually."
}
att.Slot = "perk"

att.DroppedModel = "models/halomodels/haloce/w_halo_skull.mdl"

att.Ignore = GetConVar("arccw_hce_skulls"):GetBool()
att.NotForNPC = true

att.AutoStats = true

att.Override_ShootEntity = "scarab_beam"
att.Override_GetShootSound = "scarab_fire_skull"
att.Mult_AccuracyMOA = 0
att.Mult_HipDispersion = 0
att.Mult_SightsDispersion = 0

att.AttachSound = "attch/snow/halo/skull_equip.wav"
att.DetachSound = "attch/snow/halo/back_button.wav"