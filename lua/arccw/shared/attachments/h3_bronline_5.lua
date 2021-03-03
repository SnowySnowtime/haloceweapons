att.PrintName = "BR55-S9"
att.Icon = Material("snowysnowtime/2k/ico/h3/smg_sil.png")
att.Description = "Variant of the Battle Rifle more akin to a Sniper Rifle. High Damage, Great Accuracy, awful fire rate."
att.Desc_Pros = {
	"+  High Long Range Damage (75%)"
}
att.Desc_Cons = {
	"- Decreased Fire Rate (30%)",
	"- Forced Semi-Auto",
	"- Decreased Close Range Damage (40%)"
}
att.Model = "models/snowysnowtime/smg_sight.mdl"
att.SortOrder = 996
att.Slot = "variant_brho1"
att.Override_MuzzleEffect = "astw2_halo_3_muzzle_sniper_rifle"
att.Override_MuzzleEffectAttachment = "6"
att.Model = "models/snowysnowtime/ho/rng_ammo_t2.mdl"

att.AttachSound = "attch/snow/halo/h3/x_button.wav"
att.DetachSound = "attch/snow/halo/h3/b_button.wav"

att.Mult_RPM = 0.4

att.Mult_Damage = 0.6
att.Mult_DamageMin = 1.75

att.Mult_AccuracyMOA = 0.75
att.Mult_HipDispersion = 1.5
att.Mult_SightsDispersion = 0.35
att.Mult_Recoil = 3

att.Override_Firemodes = {
    {
        Mode = 1,
    },
    {
        Mode = 0,
    }
}

att.ActivateElements = {"rng"}