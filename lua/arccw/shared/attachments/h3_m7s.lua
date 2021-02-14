att.PrintName = "M7S SMG"
att.Icon = Material("snowysnowtime/2k/ico/h3/smg_sil.png")
att.Description = "Converts the M7 to an M7S. Cannot use other scope or muzzle attachments."
att.Desc_Pros = {
	"Can fire underwater",
	"Has a laser that improves aiming accuracy.",
	"'Hud Linked Optics', making it superb for aiming",
	"	while gunning. (2d scopes not supported yet)",
	"Different AmmoType lets the M7S deal more",
	"	damage overall, and penetrate thicker objects"
}
att.Desc_Cons = {
	"Bright laser can reveal location, and",
	"	decreases hipfire accuracy.",
	"Jump firing accuracy is reduced due to",
	"	the suppressor."
}
att.Slot = "override_e"
att.Silencer = true

att.AutoStats = true
att.Mult_Recoil = 0.75
att.Mult_AccuracyMOA = 0.75
att.Mult_HipDispersion = 1.35
att.Mult_SightsDispersion = 0.35
att.Mult_SightTime = 1.25
att.Mult_DrawTime = 1.25
att.Mult_HolsterTime = 1.25
att.Mult_SightedSpeedMult = 1.45
att.Mult_Damage = 1.5
att.Mult_DamageMin = 2
att.Mult_MeleeTime = 1.1
att.Mult_MeleeDamage = 1.05
att.Add_MeleeRange = 4
att.Override_ClipSize = 48
att.Mult_Penetration = 1.15
att.Add_BarrelLength = 10
att.Override_CanFireUnderwater = true
att.HolosightNoFlare = true
att.Override_MuzzleEffect = "astw2_halo_3_muzzle_SMG_ODST"
att.Override_MuzzleEffectAttachment = "2"
att.Model = "models/snowysnowtime/m7s_sight.mdl"
att.HolosightPiece = "models/snowysnowtime/m7s_sight.mdl"


att.AdditionalSights = {
	{
		Pos = Vector(-3, -100, 0),
		Ang = Angle(0, -0.95, 0),
		GlobalPos = Vector(0, 0, 0),
		GlobalAng = Angle(0, 0, 0),
		Magnification = 2.5,
		IgnoreExtra = false,
		CrosshairInSights = true,
        SwitchToSound = "weapons/fesiugsmo/zoom_in.wav",
        SwitchFromSound = "weapons/fesiugsmo/zoom_out.wav",
	}
}

att.Mult_SightTime = 1

att.AttachSound = "attch/snow/halo/h3/x_button.wav"
att.DetachSound = "attch/snow/halo/h3/b_button.wav"

local ScopeTexture	= Material("hud/scopes/m6d_scope.png")
local proscopesize		= 180
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
		r = 255,--GetConVar("arccw_scope_r"):GetInt(),
		g = 255,--GetConVar("arccw_scope_g"):GetInt(),
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
	surface.SetDrawColor(0, 0, 0, 128)
	// Left
	surface.DrawRect(0, 0, icns.tl, ScrH())
	// Right
	surface.DrawRect(icns.tr, 0, ScrW(), ScrH())
	
	// Top
	surface.DrawRect(icns.tl, 0, scopesize, icns.bl)
	// Bottom
	surface.DrawRect(icns.tl, icns.br, scopesize, ScrH())
end

att.ActivateElements = {"anniv"}
att.GivesFlags = {"halo_m7s"}

att.Laser = true
att.LaserStrength = 2.5
att.LaserBone = "laser"
att.ColorOptionsTable = {Color(255, 25, 65)}
att.AttachSound = "attch/snow/halo/halo_attch_equip_odst.wav"
att.DetachSound = "attch/snow/halo/back_button.wav"