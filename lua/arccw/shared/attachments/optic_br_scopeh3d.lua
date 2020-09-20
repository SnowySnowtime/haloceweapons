att.PrintName = "H3 BR Scope 3D"
att.Icon = Material("entities/tfa_hce_snow_objectiveflag.png")
att.Description = "A Powerful 2x Scope built for the BR55HB SR for precision aiming. Best used with Semi-Auto weaponry."

att.SortOrder = 199

att.Desc_Pros = {
    "+ Precise",
    "+ Lightweight Scope",
}
att.Desc_Cons = {
}
att.AutoStats = true
att.Ignore = GetConVar("arccw_hce_attch"):GetBool()
att.Slot = "optic"

att.Model = "models/snowysnowtime/eonace/br_lens.mdl"

att.DroppedModel = "models/Items/BoxSRounds.mdl"

att.AutoStats = true

att.AdditionalSights = {
    {
        Pos = Vector(0, 8, -0.675),
        Ang = Angle(0, 0, 0),
        Magnification = 2.25,
        ScrollFunc = ArcCW.SCROLL_ZOOM,
        ZoomLevels = 1,
        ZoomSound = "weapons/arccw/fiveseven/fiveseven_slideback.wav"
    }
}

att.ScopeGlint = false

att.Holosight = true
att.HolosightReticle = Material("entities/br_scope.png")
att.HolosightNoFlare = true
att.HolosightSize = 0.3
att.HolosightBone = "holosight"
att.Model = "models/snowysnowtime/eonace/br_lens.mdl"
att.Colorable = true

att.HolosightMagnification = 1
att.HolosightBlackbox = false

att.HolosightMagnificationMin = 3
att.HolosightMagnificationMax = 4

att.Mult_SightTime = 0.95

att.AttachSound = "attch/snow/halo/h3/x_button.wav"
att.DetachSound = "attch/snow/halo/h3/b_button.wav"

att.ActivateElements = {"brscope"}