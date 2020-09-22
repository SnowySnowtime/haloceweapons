att.PrintName = "Sniper Scope"
att.Icon = Material("entities/tfa_hce_snow_objectiveflag.png")
att.Description = "A Powerful 2x Scope built for the BR55HB SR for precision aiming. Best used with Semi-Auto weaponry."

att.SortOrder = 2.5

att.Desc_Pros = {
    "+ Precise",
}
att.Desc_Cons = {
}
att.AutoStats = true
att.Ignore = false
att.Slot = "h3_srscope"

att.Model = "models/snowysnowtime/h3scopelayer.mdl"

att.DroppedModel = "models/Items/BoxSRounds.mdl"

att.AutoStats = true

att.AdditionalSights = {
    {
        Pos = Vector(-4.74, -24.8, -0.755),
        Ang = Angle(0, -90, 0),
        Magnification = 1.2,
        ScrollFunc = ArcCW.SCROLL_ZOOM,
        ZoomLevels = 1,
        ZoomSound = "sr_zoom"
    }
}

att.ScopeGlint = false

att.Holosight = true
att.HolosightReticle = Material("entities/sr_scope.png")
att.HolosightNoFlare = true
att.HolosightSize = 0.15
att.HolosightBone = "holosight"
att.HolosightPiece = "models/snowysnowtime/h3scopelayer.mdl"

att.HolosightMagnification = 1
att.HolosightBlackbox = false

att.HolosightMagnificationMin = 2
att.HolosightMagnificationMax = 10

att.Mult_SightTime = 0.95

att.AttachSound = "attch/snow/halo/h3/x_button.wav"
att.DetachSound = "attch/snow/halo/h3/b_button.wav"