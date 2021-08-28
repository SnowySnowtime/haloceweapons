att.PrintName = "Damage Alt"
att.Icon = Material("snowysnowtime/2k/ico/h3/smg_sil.png")
att.Description = "Modifying the internals to accept higher calibre caseless rounds allows the M7 SMG to deal more damage at the cost of speed, rate of fire, and magazine size."
att.Desc_Pros = {
	"+ Increased Damage (30%)"
}
att.Desc_Cons = {
	"- Decreased Magazine Size (50%)",
	"- Reduced Rate of Fire (40%)",
	"- Increased Recoil (25%)",
	"- Decreased Speed (15%)"
}
att.SortOrder = 998
att.Slot = "variant_smgho"
att.Mult_Damage = 1.3
att.Mult_DamageMin = 1.3
att.Mult_Recoil = 1.25
att.Mult_Speed = 0.85
att.Override_ClipSize = 30
att.Mult_RPM = 0.6

att.AttachSound = "attch/snow/halo/h3/x_button.wav"
att.DetachSound = "attch/snow/halo/h3/b_button.wav"

att.ActivateElements = {"v4_body"}