att.PrintName = "SPV3 Suppressor"
att.Icon = Material("entities/tfa_hce_snow_objectiveflag.png", "smooth mips")
att.Description = "Precision orientated suppressor, using this gives you precision benefits."
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Slot = "muzzle"
att.SortOrder = 201

att.Model = "models/snowysnowtime/spv3/suppressor.mdl"
att.Ignore = GetConVar("arccw_hce_attch"):GetBool()
att.Silencer = true
att.Override_MuzzleEffect = "astw2_halo_3_muzzle_SMG_ODST"
att.Override_MuzzleEffectAttachment = "1"
att.IsMuzzleDevice = true

att.AutoStats = true
att.Mult_ShootPitch = 1
att.Mult_ShootVol = 0.7
att.Mult_Recoil = 0.85
att.Mult_Precision = 1.15
att.Mult_SightTime = 1.2
att.Mult_SightedSpeedMult = 0.95

att.Add_BarrelLength = 5

att.AttachSound = "attch/snow/halo/h1/forward.wav"
att.DetachSound = "attch/snow/halo/h1/back.wav"

att.ActivateElements = {"body"}