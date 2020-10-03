att.PrintName = "M6S"
att.Icon = Material("snowysnowtime/2k/ico/h3/smg_sil.png")
att.Description = "Converts the M6D to an M6S. Cannot use other scope or muzzle attachments."
att.Desc_Pros = {
	"Can fire underwater",
	"'Hud Linked Optics', making it superb for precision"
}
att.Desc_Cons = {
}
att.Slot = "override_automag"
att.Silencer = true

att.AutoStats = true
att.Mult_Recoil = 0.75
att.Mult_AccuracyMOA = 0.75
att.Mult_HipDispersion = 1.35
att.Mult_SightsDispersion = 0.35
att.Mult_HolsterTime = 1.25
att.Mult_Damage = 0.85
att.Mult_DamageMin = 0.8
att.Mult_Penetration = 1.15
att.Add_BarrelLength = 5
att.Override_ClipSize = 12
att.Mult_RPM = 2.25
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
        Magnification = 1.25,
		FlatScope = true,
    }
}

att.Holosight = false
att.HolosightReticle = Material("entities/odst_smg.png")
att.HolosightSize = 5
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