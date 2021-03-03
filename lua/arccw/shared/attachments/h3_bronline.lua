att.PrintName = "BR55-L"
att.Icon = Material("snowysnowtime/2k/ico/h3/smg_sil.png")
att.Description = "Improved internals and barrel length increase this weapons accuracy, at the cost of weight."
att.Desc_Pros = {
	"+ Increased All Accuracy (25%)"
}
att.Desc_Cons = {
	"- Increased Weight (35%)"
}
att.SortOrder = 1000
att.Slot = "variant_brho1"
att.Mult_AccuracyMOA = 0.75
att.Mult_HipDispersion = 0.8
att.Mult_MoveDispersion = 0.665
att.Mult_SightsDispersion = 0.35
att.Mult_Speed = 0.70
att.Add_BarrelLength = 10
att.Override_MuzzleEffectAttachment = "1"
att.Model = "models/snowysnowtime/ho/acc_ammo_t2.mdl"

att.Override_Firemodes = {
    {
        Mode = -3,
		RunawayBurst = true,
		PostBurstDelay = 0.315,
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

att.ActivateElements = {"acc"}