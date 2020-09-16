att.PrintName = "Halo CE Dreamweb Suppressor"
att.Icon = Material("entities/tfa_hce_snow_objectiveflag.png", "smooth mips")
att.Description = "Precision orientated suppressor, using this gives you benefits all around."
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Slot = "muzzle"

att.Model = "models/snowysnowtime/suppressor.mdl"
att.Ignore = GetConVar("arccw_hce_attch"):GetBool()
att.Silencer = true
att.Override_MuzzleEffect = "muzzleflash_suppressed"
att.IsMuzzleDevice = true

att.AutoStats = true
att.Mult_ShootPitch = 1
att.Mult_ShootVol = 0.7
att.Mult_Recoil = 0.9
att.Mult_Precision = 1.1
att.Mult_SightTime = 1.15
att.Mult_DrawTime = 0.85
att.Mult_HolsterTime = 0.85
att.Mult_SightedSpeedMult = 0.95

att.Add_BarrelLength = 5