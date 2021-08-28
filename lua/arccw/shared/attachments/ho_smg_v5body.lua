att.PrintName = "Ammo Alt"
att.Icon = Material("snowysnowtime/2k/ico/h3/smg_sil.png")
att.Description = "Changes the round type for a larger magazine. It is lighter, but deals less damage due to the internals being modified. Different magazine causes the weapon to be slightly less stable, causing recoil to increase."
att.Desc_Pros = {
	"+ Increased Magazine Size (~65%)",
	"+ Increased Speed (10%)"
}
att.Desc_Cons = {
	"- Increased Recoil (30%)",
	"- Reduced Damage (15%)"
}
att.SortOrder = 999
att.Slot = "variant_smgho"
att.Mult_Damage = 0.85
att.Mult_DamageMin = 0.85
att.Mult_Recoil = 1.3
att.Override_ClipSize = 100

att.AttachSound = "attch/snow/halo/h3/x_button.wav"
att.DetachSound = "attch/snow/halo/h3/b_button.wav"

att.ActivateElements = {"v5_body"}