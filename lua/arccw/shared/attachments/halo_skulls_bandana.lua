att.PrintName = "Bandana Skull"
att.Icon = Material("entities/hce_bandana.png", "smooth mips")
att.Description = "Enables the power of the Bandana Skull*. Mileage may vary, jackal snipers not included."
att.Desc_Pros = {
    "+ Infinite Ammo"
}
att.Desc_Cons = {
	"+ mildly inconsistent."
}
att.Slot = "perk"

att.DroppedModel = "models/halomodels/haloce/w_halo_skull.mdl"

att.Ignore = GetConVar("arccw_hce_skulls"):GetBool()
att.NotForNPC = true

att.AutoStats = true

att.Mult_Recoil = 2.25
att.Mult_Damage = 0.8
att.Mult_DamageMin = 0.8
att.Mult_DrawTime = 1.75
att.Mult_HolsterTime = 1.75
att.Mult_Precision = 1.1
att.Mult_SightedSpeedMult = 0.80

att.Hook_FireBullets = function(wep, data)
    if CLIENT or not wep.Owner:IsPlayer() then return end

    if math.random() <= 1 then
        wep:SetClip1(wep:Clip1() + 1)
    end
end

att.AttachSound = "attch/snow/halo/skull_equip.wav"
att.DetachSound = "attch/snow/halo/back_button.wav"