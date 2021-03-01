att.PrintName = "Universal Physbullet Rounds" --yes this is a fork of the gso tracers, i wanted to be able to use it on other weaponry too.
att.Icon = Material("entities/tfa_hce_snow_objectiveflag.png", "smooth mips")
att.Description = "Forces physical bullets on supported weaponry types."
att.Desc_Pros = {
"  Tracer Colors can be changed"
}
att.Desc_Cons = {
"  These are physbullets."
}
att.AutoStats = true
att.Slot = {"ammo_bullet","ammo_dmr_halo","ammo_halo","ammo_shotgun"}

att.ToggleStats = {
    {
        PrintName = "Regular",
        Override_PhysTracerProfile = 0,
		Override_AlwaysPhysBullet = true
    },
	{
        PrintName = "Red",
        Override_PhysTracerProfile = 1,
		Override_AlwaysPhysBullet = true
    },
    {
        PrintName = "Blue",
        Override_PhysTracerProfile = 3,
		Override_AlwaysPhysBullet = true
    },
	{
        PrintName = "Cyan",
        Override_PhysTracerProfile = 6,
		Override_AlwaysPhysBullet = true
    },
	{
        PrintName = "Green",
        Override_PhysTracerProfile = 2,
		Override_AlwaysPhysBullet = true
    },
    {
        PrintName = "Yellow",
        Override_PhysTracerProfile = 4,
		Override_AlwaysPhysBullet = true
    },
    {
        PrintName = "Violet",
        Override_PhysTracerProfile = 5,
		Override_AlwaysPhysBullet = true
    },
}