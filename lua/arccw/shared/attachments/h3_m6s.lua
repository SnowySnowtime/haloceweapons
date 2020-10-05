att.PrintName = "M6C/SOCOM"
att.Icon = Material("snowysnowtime/2k/ico/h3/smg_sil.png")
att.Description = "Converts the M6C to an M6C/SOCOM."
att.Desc_Pros = {
	"Can fire underwater",
	"'Hud Linked Optics', making it superb for aiming",
	"	while gunning.",
}
att.Desc_Cons = {
	"Cannot use other scope or muzzle attachments.",
	"	Suppressor increases barrel length",
	"	making it harder to fire up close.",
}
att.Slot = "override_s"
att.Silencer = true

att.AutoStats = false
att.Mult_Recoil = 0.75
att.Mult_AccuracyMOA = 0.75
att.Mult_HipDispersion = 100
att.Mult_SightsDispersion = 0
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
        Magnification = 3,
        ZoomSound = "weapons/arccw/fiveseven/fiveseven_slideback.wav",
		FlatScope = true,
		IgnoreExtra = false
    }
}

att.Holosight = false
att.HolosightReticle = Material("entities/pistol_scope.png")
att.HolosightSize = 2000
att.HolosightBone = "holosight"
att.HolosightNoHSP = false -- for this holosight ignore HSP

att.Colorable = true

att.HolosightMagnification = 1
att.HolosightBlackbox = true
att.FlatScopeBlackbox = true

att.ActivateElements = {"magnum"}
att.GivesFlags = {"halo_m6s"}

att.Laser = false
att.LaserStrength = 2.5
att.LaserBone = "laser"
att.ColorOptionsTable = {Color(255, 25, 65)}
att.AttachSound = "attch/snow/halo/halo_attch_equip_odst.wav"
att.DetachSound = "attch/snow/halo/back_button.wav"