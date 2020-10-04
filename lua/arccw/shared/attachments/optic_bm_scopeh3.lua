att.PrintName = "Beam Rifle Smart Scope"
att.Icon = Material("entities/tfa_hce_snow_objectiveflag.png")
att.Description = "A Powerful HUD-linked Scope built for the Type-50 Beam Rifle for precision aiming. Best used with Semi-Auto weaponry."

att.SortOrder = 200

att.Desc_Pros = {
    "+ Precise",
    "+ HUD-linked",
}
att.Desc_Cons = {
	"Only available for the Type-50 Beam Rifle",
}
att.AutoStats = true
att.Ignore = false
att.Slot = "h3bmsc"

att.Model = "models/snowysnowtime/eonace/br_lens.mdl"

att.DroppedModel = "models/Items/BoxSRounds.mdl"

att.AdditionalSights = {
    {
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
        Magnification = 10,
        ScrollFunc = ArcCW.SCROLL_ZOOM,
        ZoomLevels = 1,
		HolosightSize = 10,
        ZoomSound = "bm_zoom",
		FlatScope = true,
		IgnoreExtra = true
    }
}

att.ScopeGlint = true

att.Holosight = false
att.HolosightReticle = Material("entities/beam_rifle_scope")
att.HolosightNoFlare = true
att.HolosightSize = 1
att.HolosightBone = "holosight"
att.HolosightPiece = "models/snowysnowtime/eonace/br_lens.mdl"
att.Colorable = true

att.HolosightMagnification = 1
att.HolosightBlackbox = true
att.FlatScopeBlackbox = true

att.HolosightMagnificationMin = 5
att.HolosightMagnificationMax = 20

att.Mult_SightTime = 0.95
att.Mult_SightsDispersion = 0.35

att.AttachSound = "attch/snow/halo/h3/x_button.wav"
att.DetachSound = "attch/snow/halo/h3/b_button.wav"