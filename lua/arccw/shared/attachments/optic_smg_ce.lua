att.PrintName = "Custom Edition Sights"
att.Icon = Material("snowysnowtime/2k/ico/h3/smg_sil.png")
att.Description = "Holographic sights which are commonly used for special forces operatives, paired with the M7S SMG as an alternative attachments selection."
att.Desc_Pros = {
	"Optic"
}
att.Desc_Cons = {
	"Not a scope."
}
att.Slot = "optic"

att.AutoStats = true
att.Mult_DrawTime = 1.1
att.Mult_HolsterTime = 1.1
att.Mult_SightTime = 1.05
att.HolosightNoFlare = true
att.Holosight = true
att.HolosightReticle = Material("entities/odst_smg.png")
att.HolosightNoFlare = true
att.HolosightSize = 1
att.HolosightBone = "holosight"
att.Model = "models/snowysnowtime/smg_sight.mdl"
att.HolosightPiece = "models/snowysnowtime/smg_sight_glass.mdl"


att.AdditionalSights = {
	{
		Pos = Vector(0,0,-1.25),
		Ang = Angle(0, 0, 0),
		Magnification = 1.75,
		CrosshairInSights = false,
        SwitchToSound = "common/null.wav",
        SwitchFromSound = "common/null.wav",
	}
}

att.Colorable = true

att.AttachSound = "attch/snow/halo/h1/forward.wav"
att.DetachSound = "attch/snow/halo/h1/back.wav"