SWEP.Base						= "arccw_base"
SWEP.PrintName					= "ArcCW Halo Plasma Sub-Base"

SWEP.Base						= "arccw_base"
SWEP.Spawnable					= false
SWEP.Category					= "ArcCW - Halo Combat Evolved"
SWEP.AdminOnly					= false

SWEP.Slot						= 1

SWEP.UseHands					= true

SWEP.ViewModel					= "models/weapons/cstrike/c_rif_ak47.mdl"
SWEP.WorldModel					= "models/weapons/w_rif_ak47.mdl"

SWEP.ShootSound = "Weapon_AK47.Single"
SWEP.Firemodes = {
    {
        Mode = 2,
    },
    {
        Mode = 0
    }
}
SWEP.Animations = {
    ["idle"] = {
        Source = "ak47_idle",
        Time = 2
    },
    ["draw"] = {
        Source = "ak47_draw",
        Time = 0.5,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.5,
    },
    ["fire"] = {
        Source = "ak47_fire1",
        Time = 0.5,
    },
    ["reload"] = {
        Source = "ak47_reload",
        Time = 3,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0.5,
    },
}

-- The moment the bitches went bad.
-- quick, make an ass joke. bungie did it.

SWEP.ArcCW_Halo = {}
SWEP.ArcCW_Halo.Plasma = true
SWEP.ArcCW_Halo.Accel = true

SWEP.Delay_Accel = 0.2
SWEP.Delay_Decel = 0.5

SWEP.Heat_Accel = 0.1
SWEP.Heat_Decel = 0.4

SWEP.Delay_Min = 0.166666666666667	-- 360 -- 6
SWEP.Delay_Max = 0.111111111111111	-- 540 -- 9

SWEP.BatteryConsumption = 1/400

SWEP.Hook_ModifyRPM = function(wep, delay)
	local firerate_min = wep.Delay_Min
	local firerate_max = wep.Delay_Max
	
	local firerate_diff = (firerate_min - firerate_max)

	local returnthatvalue = firerate_min - (firerate_diff * wep:GetCelleryation())

    return returnthatvalue / wep:GetBuff_Mult("Mult_RPM")
end

SWEP.Hook_FireBullets = function(wep)
	wep:SetCelleryation( wep:GetCelleryation() + wep.Delay_Accel)
	wep:SetBatteryLevel( math.max( 0, wep:GetBatteryLevel() - wep.BatteryConsumption ) )
	wep:SetHeatLevel( wep:GetHeatLevel() + wep.Heat_Accel )
end

SWEP.Plasma_Discharging = false
SWEP.Plasma_DischargeTime = 3

SWEP.Hook_Think = function(wep)
	wep:SetCelleryation( math.Clamp(wep:GetCelleryation() - (wep.Delay_Decel * FrameTime()), 0, 1) )
    if wep:GetHeatLevel() >= 1 then 
        wep:SetReloading( CurTime() + wep.Plasma_DischargeTime )
        wep:PlayAnimation( "enter_vent", 1, true, nil, nil, nil, true)
        wep.Plasma_Discharging = true
        wep:SetHeatDischargeTime( CurTime() + wep.Plasma_DischargeTime )
    elseif wep:GetHeatLevel() <= 0 and wep:GetHeatDischargeTime() > CurTime() and wep.Plasma_Discharging then
        wep.Plasma_Discharging = false
		if wep.Animations["exit_vent"] then
        	wep:PlayAnimation( "exit_vent", 1, true, nil, nil, nil, true)
			local animtime = wep.Animations["exit_vent"].MinProgress or wep.Animations["exit_vent"].Time
			wep:SetReloading( CurTime() + animtime )
		end
    end
	wep:SetHeatLevel(math.Clamp(wep:GetHeatLevel() - (wep.Heat_Decel * FrameTime()), 0, 1) )
end

SWEP.Hook_TranslateAnimation = function(wep, anim)
    if wep:GetHeatDischargeTime() > CurTime() then
        if anim == "idle" then
            --return "idle_vent"
            return false
        end
    end
end

SWEP.Hook_DrawHUD = function(wep)
    local text

    if wep:GetBatteryLevel() <= 0 then
        text = "No Battery"
    elseif wep:GetBatteryLevel() <= 10/100 then
        text = "Low Battery"
    end

    if wep:GetBatteryLevel() <= 10/100 then
        surface.SetTextColor(255, 255, 255, 255)
        surface.SetFont("ArcCW_12")
        surface.SetTextPos( ScrW()/2-  surface.GetTextSize(text)/2, ScrH()/2 + ScreenScale(12) ) 
        surface.DrawText(text)
    end
end

SWEP.Hook_ShouldNotFire = function(wep, gmf)
    if wep:GetBatteryLevel() <= 0 or (wep:GetHeatDischargeTime() > CurTime()) then
        wep:SetClip1(0)
        return true
    end
end

SWEP.Hook_DryFire = function(wep, sound)
    return "snow/weapons/magnum/magnum_dryfire.wav"
end

SWEP.Hook_FiremodeBars = function(wep)
    local awesome = math.ceil( wep:GetCelleryation()*7 )
    local thebars = ""

    for i = 1, awesome do
        thebars = "!" .. thebars
    end

    for i = 1, 7-awesome do
        thebars = thebars .. "-"
    end

    return thebars
end

SWEP.Hook_GetHUDData = function(wep, data)
    local accelerator = wep.ArcCW_Halo.Accel
    
    data.clip = math.Round(wep:GetBatteryLevel() * 100, 0)
    data.heat_enabled = true
    data.heat_level = (wep:GetHeatDischargeTime() > CurTime() and (wep:GetHeatDischargeTime() - CurTime())/wep.Plasma_DischargeTime or wep:GetHeatLevel())
    data.heat_maxlevel = 1
    data.heat_name = "HEAT"--math.Round(60/delay).."RPM"
    data.heat_locked = wep:GetHeatDischargeTime() > CurTime()
end

SWEP.Hook_PostReload = function(wep)
    wep:SetBatteryLevel( 1 )
end

SWEP.Disposable = false
SWEP.BottomlessClip = false
SWEP.InfiniteAmmo = false -- weapon can reload for free
SWEP.AmmoPerShot = 0

DEFINE_BASECLASS("arccw_base")

function SWEP:SetupDataTables()
	BaseClass.SetupDataTables( self )

    self:NetworkVar("Float", 31, "BatteryLevel")
    self:NetworkVar("Float", 30, "Celleryation")
    self:NetworkVar("Float", 29, "HeatLevel")
    self:NetworkVar("Float", 28, "HeatDischargeTime")

	if SERVER then
		self:SetBatteryLevel( 1 )
		self:SetHeatDischargeTime( 0 )
	end
end