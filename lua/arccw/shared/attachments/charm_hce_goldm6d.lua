att.PrintName = "Golden CE Magnum"
att.Icon = Material("snowysnowtime/2k/ico/m6dico/gold.png")
att.Description = "Imbued with the luck of the meta, you gain stat boosts for specific things."

att.Desc_Pros = {
}
att.Desc_Cons = {
	" This shit don't come for free, gotta find it through NPCs or if you have Free Attachments on"
}
att.AutoStats = true
att.Slot = "charm"

att.Ignore = GetConVar("arccw_hce_charms"):GetBool()
att.Free = false

att.Mult_AccuracyMOA = 0.95
att.Mult_Recoil = 0.85
att.Mult_RecoilSide = 0.85
att.Mult_SpeedMult = 1.05
att.Mult_SightedMoveSpeed = 1.05

att.Model = "models/weapons/arccw/atts/charmbase.mdl"

att.DroppedModel = "models/halomodels/haloce/goldhalo1pistol.mdl"

att.Charm = true
att.CharmModel = "models/snowysnowtime/goldm6d.mdl"
att.CharmAtt = "Charm"
att.CharmScale = Vector(0.3, 0.3, 0.3)
att.CharmOffset = Vector(-0.6, 0, 0)
att.CharmAngle = Angle(0, 0, 90)

att.AttachSound = "m6_reanim/anal_bolt1.wav"
att.DetachSound = "m6_reanim/anal_bolt2.wav"