att.PrintName = "Blunderbuss' Passive"
att.Icon = Material("entities/acwatt_perk_push.png", "smooth mips")
att.Description = "Shoot out so many bullets that it pushes."
att.Desc_Pros = {
    "+ Push force on target",
    "+ Disorients target"
}
att.Desc_Cons = {
    "- Push force on self",
}
att.Slot = "halo_passive"
att.NotForNPC = true

att.AutoStats = false

att.Hook_PostFireBullets = function(wep)
    if CLIENT then return end

    local dir = wep.Owner:GetForward()
    if wep.Owner:IsPlayer() and wep.Owner:GetPhysicsObject():IsValid() then
        local v = dir * (wep.Owner:IsOnGround() and -3 or -1) * math.Clamp(math.sqrt(wep.Recoil), 0.5, 3) * 100
        if GetConVar("arccw_hce_attch"):GetBool() and not wep.Owner:IsOnGround() then v = v * 0.25 end
        wep.Owner:SetVelocity( v )
    end
end

att.Hook_BulletHit = function(wep, data)
    if CLIENT then return end
    local ent = data.tr.Entity

    local dir = data.tr.Normal:GetNormalized()
    -- Use full damage on shotguns
    local damage = math.min(120, wep:GetDamage(data.range))
    if ent and ent:GetPhysicsObject():IsValid() then
        if ent:IsNPC() or ent:IsNextBot() then
            if ent:OnGround() then
                dir.z = 0.25
                dir = dir:GetNormalized()
                ent:SetVelocity( ent:GetVelocity() + dir * damage * 1 )
            end
        elseif ent:IsPlayer() then
            dir.z = 1
            ent:SetVelocity( dir * (ent:IsOnGround() and 6 or 2) * damage )
            local r = math.Clamp(damage / 12, 0.5, 10)
            local punch = AngleRand(-r, r)
            punch.r = 0
            ent:SetEyeAngles(ent:EyeAngles() + punch)
            ent:ViewPunch(punch * 5)
        else
            dir.z = 0.25
            dir = dir:GetNormalized()
            ent:GetPhysicsObject():AddVelocity(dir * damage * 1)
        end
    end

end