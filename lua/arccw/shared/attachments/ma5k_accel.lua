att.PrintName = "MA5K Accelerator"
att.Icon = Material("entities/tfa_hce_snow_objectiveflag.png")
att.Description = "Factory Accelerator"
att.Desc_Pros = {
    "+ Better control early on",
}
att.Desc_Cons = {
    "- Fire rate starts slower",
}
att.Slot = "ma5k"

att.Override_Firemodes = {
    {
        Mode = 2,
    },
    {
        Mode = 0
    }
}

att.Hook_ModifyRPM = function(wep, delay)
    local max = math.min(30, wep:GetCapacity())

    local delta = wep.BurstCount / max

    local mult = Lerp(delta, 0.4, 1)

    return delay / mult
end