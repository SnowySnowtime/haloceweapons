att.PrintName = "SAP High Explosives"
att.Icon = Material("entities/tfa_hce_snow_objectiveflag.png")
att.Description = "Loads the weapon with Semi-Armor-Piercing, High Explosive (SAP-HE) Rounds. Due to the nature of these rounds, a reduced magazine is used."
att.Desc_Pros = {
    "+ High Explosives"
}
att.Desc_Cons = {
    "- Magazine capacity",
}
att.AutoStats = true
att.Slot = "ammo_hce"

att.Mult_Damage = 1.35
att.Mult_DamageMin = 1.35
att.Mult_SightTime = 0.8
att.Mult_Precision = 0.75
att.Mult_Recoil = 1.6
att.Mult_ShootVol = 1.4
att.Mult_ReloadTime = 1.25
att.Mult_DrawTime = 0.95
att.Mult_HolsterTime = 0.95
att.Mult_SightedSpeedMult = 0.90
att.Override_DamageType = DMG_BURN

att.MagReducer = true

att.ActivateElements = {"reducedmag"}

att.AttachSound = "m6_reanim/bolt1.wav"
att.DetachSound = "m6_reanim/bolt2.wav"
