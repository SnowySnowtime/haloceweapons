att.PrintName = "M7S SMG"
att.Icon = Material("snowysnowtime/2k/ico/h3/smg_sil.png")
att.Description = "Converts the M7 to an M7S. Cannot use other scope or muzzle attachments."
att.Desc_Pros = {
	"Can fire underwater",
	"Has a laser that improves aiming accuracy.",
	"'Hud Linked Optics', making it superb for aiming",
	"	while gunning. (2d scopes not supported yet)",
	"Different AmmoType lets the M7S deal more",
	"	damage overall, and penetrate thicker objects"
}
att.Desc_Cons = {
	"Bright laser can reveal location, and",
	"	decreases hipfire accuracy.",
	"Jump firing accuracy is reduced due to",
	"	the suppressor."
}
att.Slot = "override_e"
att.Silencer = true

att.AutoStats = true
att.Mult_Recoil = 0.75
att.Mult_AccuracyMOA = 0.45
att.Mult_HipDispersion = 1.5
att.Mult_SightsDispersion = 0.1
att.Mult_SightTime = 1.3
att.Mult_DrawTime = 1.25
att.Mult_HolsterTime = 1.25
att.Mult_SightedSpeedMult = 1.75
att.Mult_Damage = 1.65
att.Mult_DamageMin = 2
att.Mult_MeleeTime = 1.3
att.Mult_MeleeDamage = 1.1
att.Add_MeleeRange = 5
att.Override_ClipSize = 48
att.Mult_Penetration = 2
att.Add_BarrelLength = 10
att.Override_CanFireUnderwater = true
att.HolosightNoFlare = true
att.Override_MuzzleEffect = "astw2_halo_3_muzzle_SMG_ODST"
att.Override_MuzzleEffectAttachment = "2"
att.Model = "models/snowysnowtime/smg_sight.mdl"
att.HolosightPiece = "models/snowysnowtime/smg_sight.mdl"

att.AdditionalSights = {
    {
        Pos = Vector(0, -10, -6.1),
        Ang = Angle(0, 0, 0),
        Magnification = 1,
    }
}

att.Holosight = true
att.HolosightReticle = Material("entities/odst_smg.png")
att.HolosightSize = 1.5
att.HolosightBone = "holosight"
att.HolosightNoHSP = false -- for this holosight ignore HSP

att.HolosightMagnification = 0
att.HolosightBlackbox = false

att.HolosightMagnificationMin = 0
att.HolosightMagnificationMax = 0

att.Colorable = true

att.ActivateElements = {"anniv"}
att.GivesFlags = {"halo_m7s"}

att.Laser = true
att.LaserStrength = 2.5
att.LaserBone = "laser"
att.ColorOptionsTable = {Color(255, 25, 65)}
att.AttachSound = "attch/snow/halo/halo_attch_equip_odst.wav"
att.DetachSound = "attch/snow/halo/back_button.wav"