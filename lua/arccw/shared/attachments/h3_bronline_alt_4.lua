att.PrintName = "M395-D33 THORN"
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
att.SortOrder = 977
att.Slot = "variant_brho2"
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
		Pos = Vector(-3.725, 0, -0.7),
		Ang = Angle(-0.515, 0.15, 0),
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

att.Mult_AccuracyMOA = 1000
att.Mult_HipDispersion = 4
att.Mult_SightsDispersion = 24

att.Mult_RPM = 0.3
att.Override_ClipSize = 30

att.Mult_Damage = 2.5
att.Mult_DamageMin = 0.5
att.Mult_Range = 0.24
att.Mult_Recoil = 3
att.Model = "models/snowysnowtime/ho/dmg_ammo.mdl"

att.ActivateElements = {"dmg"}
att.GivesFlags = {"dmg"}