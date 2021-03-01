att.PrintName = "Damage"
att.Icon = Material("snowysnowtime/2k/ico/h3/smg_sil.png")
att.Description = "Variant of the Battle Rifle more akin to the DMR with a high damage output."
att.Desc_Pros = {
	"+ Increased Damage (150%)"
}
att.Desc_Cons = {
	"- Decreased Fire Rate",
	"- Decreased Long Range Damage (40%)",
	"- Decreased Range (75%)",
	"- Forced Semi-Auto",
	"- Decreased Hip Fire Accuracy"
}
att.SortOrder = 997
att.Slot = "variant_brho"
att.Override_MuzzleEffectAttachment = "4"

att.Override_Firemodes = {
    {
        Mode = 1,
    },
    {
        Mode = 0,
    }
}

att.AdditionalSights = {
	{
		Pos = Vector(-3.49, -2, -0.55),
		Ang = Angle(-0.76, 0.175, 0),
		GlobalPos = Vector(0, 0, 0),
		GlobalAng = Angle(0, 0, 0),
		Magnification = 2,
		IgnoreExtra = false,
		CrosshairInSights = true,
        SwitchToSound = "hce_zoomin",
        SwitchFromSound = "hce_zoomout",
	}
}

att.AttachSound = "attch/snow/halo/h3/x_button.wav"
att.DetachSound = "attch/snow/halo/h3/b_button.wav"

att.Mult_AccuracyMOA = 1.15
att.Mult_HipDispersion = 1.2
att.Mult_SightsDispersion = 1.15

att.Mult_RPM = 0.3
att.Override_ClipSize = 30

att.Mult_Damage = 2.5
att.Mult_DamageMin = 0.6
att.Mult_Range = 0.24
att.Model = "models/snowysnowtime/valk/ho/heavy_ammo.mdl"

att.ActivateElements = {"heavy"}
att.GivesFlags = {"heavy"}