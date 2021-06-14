att.PrintName = "2D BR55 Scope"
att.Icon = Material("entities/tfa_hce_snow_objectiveflag.png")
att.Description = "A Powerful 2x Scope built for the BR55HB SR for precision aiming. Best used with Semi-Auto weaponry."

att.SortOrder = 200

att.Desc_Pros = {
    "+ Precise",
    "+ Lightweight Scope",
}
att.Desc_Cons = {
	"Only available for the BR55HB SR",
}
att.AutoStats = true
att.Ignore = false
att.Slot = "h3brsc"

att.Model = "models/snowysnowtime/eonace/br_lens.mdl"

att.DroppedModel = "models/Items/BoxSRounds.mdl"

att.AutoStats = false

att.AdditionalSights = {
	{
		Pos = Vector(-3.75, -50, 0),
		Ang = Angle(0, 0, 0),
		GlobalPos = Vector(0, 0, 0),
		GlobalAng = Angle(0, 0, 0),
		Magnification = 2,
		IgnoreExtra = false,
		CrosshairInSights = false,
        SwitchToSound = "h3_zoomin",
        SwitchFromSound = "h3_zoomout",
	}
}

att.Mult_SightTime = 1

att.AttachSound = "attch/snow/halo/h3/x_button.wav"
att.DetachSound = "attch/snow/halo/h3/b_button.wav"
att.ActivateElements = {"brscope"}

local ScopeTexture	= Material("hud/scopes/battle_rifle_scope")
local proscopesize		= 140
local bitchYouDontEvenKnowUs = 1
--[[
		How the shit?
	1: Halo style (Immediately turn off, no zooming in/out scale)
	2: From out
	3: From inside
]]
local mwc				 = 1
									-- 1 is yes, 2 is yes invert, 0 is no

att.Hook_DrawHUD = function(wep)
	-- Don't draw if we aren't in sights
	local Howtshit = bitchYouDontEvenKnowUs
	local scopesize = proscopesize

	if Howtshit == 1 then
		if wep:GetState() != ArcCW.STATE_SIGHTS then return end
		scopesize = ScreenScale(proscopesize)
	elseif Howtshit == 2 then
		if wep:GetSightDelta() == 1 then return end
		scopesize = math.ceil(ScreenScale(proscopesize / (1-wep:GetSightDelta())))
	elseif Howtshit == 3 then
		if wep:GetSightDelta() == 1 then return end
		scopesize = math.ceil(ScreenScale(proscopesize * (1-wep:GetSightDelta())))
	end

	-- Draw textured 2D scope
	local sightcolor = {
		r = 100,--GetConVar("arccw_scope_r"):GetInt(),
		g = 150,--GetConVar("arccw_scope_g"):GetInt(),
		b = 255,--GetConVar("arccw_scope_b"):GetInt(),
	}

	local ax, ay
	local mult = 1

	if mwc == 1 or mwc == 2 then
		local pos = EyePos()
		local ang = EyeAngles() - wep:GetOurViewPunchAngles()
		cam.Start3D()
			local sp = (pos + (ang:Forward() * 3200)):ToScreen()
		cam.End3D()
		ax, ay = ((ScrW()/2)-sp.x), ((ScrH()/2)-sp.y)
	else
		ax, ay = 0, 0
	end

	if mwc == 2 then
		ax = -ax
		ay = -ay
	end

	local icns = {
		tl = (ScrW()/2)-(scopesize/2)-ax,	--	Top Left
		tr = (ScrW()/2)+(scopesize/2)-ax,	--	Top Right
		bl = (ScrH()/2)-(scopesize/2)-ay,	--	Bottom Left
		br = (ScrH()/2)+(scopesize/2)-ay,	--	Bottom Right
	}
	surface.SetDrawColor(sightcolor.r, sightcolor.g, sightcolor.b, 255)
	surface.SetMaterial(ScopeTexture)
	surface.DrawTexturedRect(icns.tl, icns.bl, scopesize, scopesize)

	-- Draw surrounding
	surface.SetDrawColor(0, 0, 0, 136)
	// Left
	surface.DrawRect(0, 0, icns.tl, ScrH())
	// Right
	surface.DrawRect(icns.tr, 0, ScrW(), ScrH())
	
	// Top
	surface.DrawRect(icns.tl, 0, scopesize, icns.bl)
	// Bottom
	surface.DrawRect(icns.tl, icns.br, scopesize, ScrH())
end