att.PrintName = "halo non precision weapon multiplier"
att.Icon = Material("entities/tfa_hce_snow_objectiveflag.png", "smooth mips")
att.Description = "Further triples headshot damage."
att.Desc_Pros = {
    "pro.headshotdamage"
}
att.Desc_Cons = {
}
att.AutoStats = true
att.Slot = "halo_passive"


att.Hook_BulletHit = function(wep, data)
    if CLIENT then return end

    if data.tr.HitGroup == HITGROUP_HEAD then
        data.damage = data.damage * 0.6
    end
end