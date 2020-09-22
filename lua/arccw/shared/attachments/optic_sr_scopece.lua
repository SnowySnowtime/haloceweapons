att.PrintName = "Sniper Scope"
att.Icon = Material("entities/tfa_hce_snow_objectiveflag.png")
att.Description = "A powerful 5x-10x scope made for the SRS99C-S2 AM Rifle"

att.SortOrder = 2.5

att.Desc_Pros = {
    "+ Precise",
}
att.Desc_Cons = {
}
att.AutoStats = true
att.Ignore = false
att.Slot = "hce_srscope"

att.Model = "models/snowysnowtime/eonace/hce_sniper_lens.mdl"

att.DroppedModel = "models/Items/BoxSRounds.mdl"

att.AutoStats = true

att.AdditionalSights = {
    {
        Pos = Vector(-1.032, 2, -1.525),
        Ang = Angle(0, 0, 0),
        Magnification = 1.2,
        ScrollFunc = ArcCW.SCROLL_ZOOM,
        ZoomLevels = 1,
        ZoomSound = "sr_zoom"
    }
}

att.ScopeGlint = false

att.Holosight = true
att.HolosightReticle = Material("entities/sniper_scope.png")
att.HolosightNoFlare = true
att.HolosightSize = 4.3
att.HolosightBone = "holosight"
att.HolosightPiece = "models/snowysnowtime/eonace/hce_sniper_lens.mdl"
att.Colorable = true

att.HolosightMagnification = 1
att.HolosightBlackbox = true

att.HolosightMagnificationMin = 5
att.HolosightMagnificationMax = 10

att.Mult_SightTime = 0.95

att.AttachSound = "attch/snow/halo/h3/x_button.wav"
att.DetachSound = "attch/snow/halo/h3/b_button.wav"
att.ActivateElements = {"sr_scope"}