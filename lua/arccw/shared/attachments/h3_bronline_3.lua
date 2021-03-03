att.PrintName = "BR55-R65 Barrage"
att.Icon = Material("snowysnowtime/2k/ico/h3/smg_sil.png")
att.Description = "Converts the Battle Rifle to a slow-fire, high impact automatic weapon."
att.Desc_Pros = {
	"  Fully Automatic",
	"+ Increased Damage (70%)",
	"+ Increased Ranged Damage (60%)"
}
att.Desc_Cons = {
	"- Decreased Fire Rate (55%)"
}
att.SortOrder = 998
att.Slot = "variant_brho1"
att.Override_MuzzleEffectAttachment = "3"

att.AttachSound = "attch/snow/halo/h3/x_button.wav"
att.DetachSound = "attch/snow/halo/h3/b_button.wav"
att.Model = "models/snowysnowtime/ho/rof_ammo_t2.mdl"

att.Mult_RPM = 0.45

att.Mult_Damage = 1.7
att.Mult_DamageMin = 1.6

att.Override_Firemodes = {
    {
        Mode = 2,
    },
    {
        Mode = 0,
    }
}

att.ActivateElements = {"rof"}