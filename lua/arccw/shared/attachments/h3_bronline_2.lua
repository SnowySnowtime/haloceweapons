att.PrintName = "XBR55"
att.Icon = Material("snowysnowtime/2k/ico/h3/smg_sil.png")
att.Description = "A Variant of the Battle Rifle which increases the Magazine size."
att.Desc_Pros = {
	"+ Magazine Size"
}
att.Desc_Cons = {
	"- Reload Time Increased",
	"- Damage Decreased (10%)"
}
att.SortOrder = 999
att.Slot = "variant_brho1"
att.Mult_Damage = 0.9
att.Mult_DamageMin = 0.9
att.Override_ClipSize = 40
att.Override_MuzzleEffectAttachment = "3"
att.Model = "models/snowysnowtime/ho/mag_ammo_t2.mdl"

att.Override_Firemodes = {
    {
        Mode = -5,
		RunawayBurst = true,
		PostBurstDelay = 0.4,
    },
	{
        Mode = 1,
    },
    {
        Mode = 0,
    }
}

att.AttachSound = "attch/snow/halo/h3/x_button.wav"
att.DetachSound = "attch/snow/halo/h3/b_button.wav"

att.ActivateElements = {"mag"}