hook.Add( "PopulateToolMenu", "ArcCW_HCE_Options", function()
    spawnmenu.AddToolMenuOption( "Options", "ArcCW", "ArcCW_HCE_Options", "Halo", "", "", ArcCW_HCE_Options)
end )

function ArcCW_HCE_Options( CPanel )

    CPanel:AddControl("Header", {Description = "All options below are serverside and require a restart to apply."})
    CPanel:AddControl("Header", {Description = ""})

    CPanel:AddControl("Checkbox", {Label = "Disallow Global Halo Attachments", Command = "arccw_hce_attch" })
    CPanel:AddControl("Checkbox", {Label = "Disallow Halo Skulls", Command = "arccw_hce_skulls" })
    CPanel:AddControl("Checkbox", {Label = "Disallow Lucky Charms", Command = "arccw_hce_charms" })
	
	CPanel:AddControl("Header", {Description = "Balancing."})
	CPanel:AddControl("Label", {Text = "This controls how the Halo weaponry are balanced."})
	CPanel:AddControl("Slider", {Label = "How do we balance?", Command = "arccw_hce_bal", min = 0, max = 2 })
	CPanel:AddControl("Label", {Text = "0 is HaloCW, the current balance philosophy. Meshing Halo with ArcCW."})
	CPanel:AddControl("Label", {Text = "1 is for the Halo Purists, the weapons serve to function like they should in their respective games."})
	CPanel:AddControl("Label", {Text = "2 is for the ArcCW Purists, or for deathmatch servers. This will balance the weapons to behave similarly to other weaponry."})
	CPanel:AddControl("Label", {Text = "Do note that this does not touch necessary things such as fire rate or animation speeds. This primarily affects recoil, spread, and damage."})
end