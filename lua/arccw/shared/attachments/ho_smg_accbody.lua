att.PrintName = "Accuracy"
att.Icon = Material("snowysnowtime/2k/ico/h3/smg_sil.png")
att.Description = "Modified internals improves the M7 SMG's accuracy. It is slightly bulkier."
att.Desc_Pros = {
	"+ Increased All Accuracy (25%)"
}
att.Desc_Cons = {
	"- Reduced Rate of Fire (25%)",
	"- Decreased Speed (10%)"
}
att.SortOrder = 1000
att.Slot = "variant_smgho"
att.Mult_AccuracyMOA = 0.75
att.Mult_HipDispersion = 0.8
att.Mult_MoveDispersion = 0.665
att.Mult_SightsDispersion = 0.35
att.Mult_Recoil = 1.1
att.Mult_Speed = 0.90

att.Mult_RPM = 0.75

att.AttachSound = "attch/snow/halo/h3/x_button.wav"
att.DetachSound = "attch/snow/halo/h3/b_button.wav"

att.ActivateElements = {"acc_body"}