att.PrintName = "Power"
att.Icon = Material("snowysnowtime/2k/ico/h3/smg_sil.png")
att.Description = "Super Variant of the Battle Rifle. Boasts a Suppressor and majorly increased mag size."
att.Desc_Pros = {
	"+  Mag Size",
	"+  Suppressed",
}
att.Desc_Cons = {
	"- Decreased Range (60%)"
}
att.SortOrder = 996
att.Slot = "variant_brho"
att.Override_MuzzleEffect = "astw2_halo_3_muzzle_SMG_ODST"
att.Override_MuzzleEffectAttachment = "5"

att.AttachSound = "attch/snow/halo/h3/x_button.wav"
att.DetachSound = "attch/snow/halo/h3/b_button.wav"

att.Mult_RPM = 1.1
att.Mult_Range = 0.7
att.Mult_Damage = 1.25
att.Model = "models/snowysnowtime/valk/ho/pwr_ammo.mdl"

att.ActivateElements = {"pow"}