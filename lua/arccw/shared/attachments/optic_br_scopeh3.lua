att.PrintName = "H3 BR Scope"
att.Icon = Material("entities/tfa_hce_snow_objectiveflag.png")
att.Description = "A Powerful 2x Scope built for the BR55HB SR for precision aiming. Best used with Semi-Auto weaponry."

att.SortOrder = 200

att.Desc_Pros = {
    "+ Precise",
    "+ Lightweight Scope",
}
att.Desc_Cons = {
	"Only available for the BR55HB",
}
att.AutoStats = true
att.Ignore = false
att.Slot = "h3brsc"

att.Model = "models/snowysnowtime/eonace/br_lens.mdl"

att.DroppedModel = "models/Items/BoxSRounds.mdl"

att.AutoStats = false

att.AdditionalSights = {
    {
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
        Magnification = 1.5,
        ScrollFunc = ArcCW.SCROLL_ZOOM,
        ZoomLevels = 1,
        ZoomSound = "weapons/arccw/fiveseven/fiveseven_slideback.wav",
		FlatScope = true,
		IgnoreExtra = true
    }
}

att.ScopeGlint = false

att.Holosight = false
att.HolosightReticle = Material("entities/br_2d_scope.png")
att.HolosightNoFlare = true
att.HolosightSize = 0.5
att.HolosightBone = "holosight"
att.HolosightPiece = "models/snowysnowtime/eonace/br_lens.mdl"
att.Colorable = true

att.HolosightMagnification = 1
att.HolosightBlackbox = false
att.FlatScopeBlackbox = false

att.HolosightMagnificationMin = 3
att.HolosightMagnificationMax = 4

att.Mult_SightTime = 0.95
att.Mult_SightsDispersion = 0.35

att.AttachSound = "attch/snow/halo/h3/x_button.wav"
att.DetachSound = "attch/snow/halo/h3/b_button.wav"

att.ActivateElements = {"brscope"}