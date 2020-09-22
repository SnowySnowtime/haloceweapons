att.PrintName = "BR55 Scope"
att.Icon = Material("entities/tfa_hce_snow_objectiveflag.png")
att.Description = "A Powerful 2x Scope built for the BR55HB SR for precision aiming. Best used with Semi-Auto weaponry."

att.SortOrder = 200

att.Desc_Pros = {
    "+ Precise",
    "+ Lightweight Scope",
}
att.Desc_Cons = {
	"Only available for the BR55HB SR",
}
att.AutoStats = true
att.Ignore = false
att.Slot = "h3brsc"

att.Model = "models/snowysnowtime/eonace/br_lens.mdl"

att.DroppedModel = "models/Items/BoxSRounds.mdl"

att.AutoStats = true

att.AdditionalSights = {
    {
        Pos = Vector(0.025, -5, -0.772),
        Ang = Angle(0, 0, 0),
        Magnification = 2,
    }
}

att.ScopeGlint = false

att.Holosight = true
att.HolosightReticle = Material("entities/battle_rifle_scope.png")
att.HolosightNoFlare = true
att.HolosightSize = 1.05
att.HolosightBone = "holosight"
att.HolosightPiece = "models/snowysnowtime/eonace/br_lens.mdl"
att.Colorable = true

att.HolosightMagnification = 2
att.HolosightBlackbox = true

att.Mult_SightTime = 0.95

att.AttachSound = "attch/snow/halo/h3/x_button.wav"
att.DetachSound = "attch/snow/halo/h3/b_button.wav"
att.ActivateElements = {"brscope"}