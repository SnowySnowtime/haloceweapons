att.PrintName = "Ironsights"
att.Icon = Material("entities/tfa_hce_snow_objectiveflag.png")
att.Description = "Ironsights for the SPV3 SMG"

att.SortOrder = 200

att.Desc_Pros = {
    " Ironsights",
}
att.Desc_Cons = {
	"Ironsights.",
}
att.AutoStats = true
att.Ignore = false
att.Slot = "spv3smgsc"

att.Model = "models/snowysnowtime/m7s_sight.mdl"

att.DroppedModel = "models/Items/BoxSRounds.mdl"

att.AutoStats = false

att.AdditionalSights = {
	{
		Pos = Vector(-3.55, -3, 1.5),
		Ang = Angle(0, 0, 0),
		GlobalPos = Vector(0, 0, 0),
		GlobalAng = Angle(0, 0, 0),
		Magnification = 1.15,
		IgnoreExtra = false,
		CrosshairInSights = true,
        SwitchToSound = "common/null.wav",
        SwitchFromSound = "common/null.wav",
	}
}

att.Mult_SightTime = 1

att.AttachSound = "attch/snow/halo/h1/forward.wav"
att.DetachSound = "attch/snow/halo/h1/back.wav"
att.ActivateElements = {"ironsights"}