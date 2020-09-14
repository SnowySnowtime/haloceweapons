att.PrintName = "Plasma Rifle Firerate"
att.Icon = Material("entities/tfa_hce_snow_objectiveflag.png")
att.Description = "yeehaw"
att.Desc_Pros = {
    "+ why wouldnt you use this",
}
att.Desc_Cons = {
    "- Fire rate starts slower",
}
att.Slot = "cmtpr"

att.Override_Firemodes = {
    {
        Mode = 2,
    },
    {
        Mode = 0
    }
}