att.PrintName = "Ammo"
att.Icon = Material("snowysnowtime/2k/ico/h3/smg_sil.png")
att.Description = "Changes the round type for a larger magazine. It is lighter, but deals less damage due to the internals being modified."
att.Desc_Pros = {
	"+ Increased Magazine Size (40%)",
	"+ Increased Speed (10%)"
}
att.Desc_Cons = {
	"- Reduced Damage (15%)"
}
att.SortOrder = 999
att.Slot = "variant_smgho"
att.Mult_Damage = 0.85
att.Mult_DamageMin = 0.85
att.Mult_Recoil = 0.95
att.Mult_Speed = 1.10
att.Override_ClipSize = 84

att.AttachSound = "attch/snow/halo/h3/x_button.wav"
att.DetachSound = "attch/snow/halo/h3/b_button.wav"

att.ActivateElements = {"ammo_body"}