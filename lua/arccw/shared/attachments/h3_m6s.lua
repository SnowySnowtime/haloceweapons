att.PrintName = "M6C/SOCOM"
att.Icon = Material("snowysnowtime/2k/ico/h3/smg_sil.png")
att.Description = "Converts the M6C to an M6C/SOCOM. Cannot use other scope or muzzle attachments."
att.Desc_Pros = {
	"Can fire underwater",
	"Has a laser that improves aiming accuracy.",
	"'Hud Linked Optics', making it superb for aiming",
	"	while gunning. (2d scopes not supported yet)",
	"Different AmmoType lets the M6C/SOCOM deal more",
	"	damage overall, and penetrate thicker objects"
}
att.Desc_Cons = {
	"Bright laser can reveal location, and",
	"	decreases hipfire accuracy.",
	"Jump firing accuracy is reduced due to",
	"	the suppressor."
}
att.Slot = "override_s"
att.Silencer = true

att.AutoStats = true
att.Mult_Recoil = 0.75
att.Mult_AccuracyMOA = 0.75
att.Mult_HipDispersion = 1.35
att.Mult_SightsDispersion = 0.35
att.Mult_SightTime = 1.25
att.Mult_DrawTime = 1.25
att.Mult_HolsterTime = 1.25
att.Mult_SightedSpeedMult = 1.45
att.Mult_Damage = 1.5
att.Mult_DamageMin = 2
att.Mult_MeleeTime = 1.1
att.Mult_MeleeDamage = 1.05
att.Add_MeleeRange = 4
att.Mult_Penetration = 1.15
att.Add_BarrelLength = 10
att.Override_CanFireUnderwater = true
att.HolosightNoFlare = true
att.Override_MuzzleEffect = "astw2_halo_3_muzzle_SMG_ODST"
att.Override_MuzzleEffectAttachment = "2"
att.Model = "models/snowysnowtime/smg_sight.mdl"
att.HolosightPiece = "models/snowysnowtime/smg_sight.mdl"

att.AdditionalSights = {
    {
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
        Magnification = 4,
        ZoomSound = "weapons/arccw/fiveseven/fiveseven_slideback.wav",
		FlatScope = true,
		IgnoreExtra = false
    }
}

att.Holosight = false
att.HolosightReticle = Material("entities/pistol_scope.png")
att.HolosightSize = 1
att.HolosightBone = "holosight"
att.HolosightNoHSP = false -- for this holosight ignore HSP

att.Colorable = true

att.HolosightMagnification = 10.5
att.HolosightBlackbox = true
att.FlatScopeBlackbox = true

att.ActivateElements = {"magnum"}
att.GivesFlags = {"halo_m6s"}

att.Laser = true
att.LaserStrength = 2.5
att.LaserBone = "laser"
att.ColorOptionsTable = {Color(255, 25, 65)}
att.AttachSound = "attch/snow/halo/halo_attch_equip_odst.wav"
att.DetachSound = "attch/snow/halo/back_button.wav"