att.PrintName = "Range"
att.Icon = Material("snowysnowtime/2k/ico/h3/smg_sil.png")
att.Description = "Changing the Calibre of the ammunition allows the M7 SMG to be much more accurate at the cost of increased recoil, and a smaller magazine size."
att.Desc_Pros = {
	"+ Increased Accuracy (~80%)"
}
att.Desc_Cons = {
	"- Increased Recoil (35%)",
	"- Reduced Magazine Size (25%)"
}
att.SortOrder = 997
att.Slot = "variant_smgho"
att.Mult_Recoil = 1.3
att.Mult_AccuracyMOA = 0.2
att.Mult_HipDispersion = 0.8
att.Mult_MoveDispersion = 0.365
att.Mult_SightsDispersion = 0.01
att.Override_ClipSize = 48

att.AttachSound = "attch/snow/halo/h3/x_button.wav"
att.DetachSound = "attch/snow/halo/h3/b_button.wav"

att.ActivateElements = {"rng_body"}