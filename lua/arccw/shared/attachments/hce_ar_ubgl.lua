att.PrintName = "AR GL"
att.Icon = Material("entities/acwatt_mw2_ubgl_m203.png", "smooth")
att.Description = "Weapon-exclusive grenade launcher with its own unique animations."
att.Desc_Pros = {
    "pro.ubgl",
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
    "info.toggleubgl"
}
att.AutoStats = true
att.Slot = "hce_ubgl_ar"

att.SortOrder = 1738

att.MountPositionOverride = 0

att.UBGL = true
att.UBGL_BaseAnims = true

att.UBGL_PrintName = "GRND"
att.UBGL_Automatic = false
att.UBGL_MuzzleEffect = "astw2_halo_2_muzzle_rocket_launcher"
att.UBGL_ClipSize = 1
att.UBGL_Ammo = "smg1_grenade"
att.UBGL_RPM = 1200
att.UBGL_Recoil = 2 -- There's a animation error with your hand, please don't notice it ^-^
att.UBGL_Capacity = 1

local function Ammo(wep)
    return wep.Owner:GetAmmoCount("smg1_grenade")
end

att.UBGL_Fire = function(wep, ubgl)
    if wep:Clip2() <= 0 then return end

    wep:PlayAnimation("fire_ubgl")

    wep:FireRocket("arccw_halo2_bruteshot_nade", 6000)

    wep:EmitSound("hcea/rocketlauncher_fire4.wav", 100)

    wep:SetClip2(wep:Clip2() - 1)

    wep:DoEffects()
end

att.UBGL_Reload = function(wep, ubgl)
    if wep:Clip2() >= 1 then return end

    if Ammo(wep) <= 0 then return end

    wep:PlayAnimation("exit_ubgl")
    wep:SetNextSecondaryFire(CurTime() + 76/30)

    local reserve = Ammo(wep)

    reserve = reserve + wep:Clip2()

    local clip = 1

    local load = math.Clamp(clip, 0, reserve)

    wep.Owner:SetAmmo(reserve - load, "smg1_grenade")

    wep:SetClip2(load)
end