SWEP.Base						= "arccw_base"
SWEP.PrintName					= "ArcCW Halo Plasma Sub-Base"
SWEP.Spawnable					= false

SWEP.ChamberSize = 0
SWEP.Primary.ClipSize = 2
SWEP.ExtendedClipSize = 2
SWEP.ReducedClipSize = 2

SWEP.ForceDefaultClip = 1
SWEP.ForceDefaultAmmo = 0

SWEP.ArcCW_Halo         = true

SWEP.ArcCW_Halo_Heat    = false
SWEP.ArcCW_Halo_Battery = false
SWEP.ArcCW_Halo_Accel   = false

SWEP.Delay_Accel    = 0.2
SWEP.Delay_Decel    = 0.5

SWEP.Heat_Accel     = 0.1
SWEP.Heat_Decel     = 0.4
SWEP.Heat_DecelOH   = nil
SWEP.Heat_Max       = 1

SWEP.Delay_Min = 0.166666666666667	-- 360 -- 6
SWEP.Delay_Max = 0.111111111111111	-- 540 -- 9

SWEP.BatteryConsumption = 1/400     -- amount battery is depleted per shot

SWEP.Delay_Penalty      = 0         -- percent fire rate is penalized (at full depletion)
SWEP.Heat_Penalty       = 0         -- percent heat recovery is penalized (at full depletion)
SWEP.Heat_Threshold     = 0.25      -- percent until gun stabilizes

SWEP.Misfire_Threshold  = 0         -- percent depleted until we can misfire
SWEP.Misfire_Chance     = 0         -- percent chance to misfire (at full depletion)

function SWEP:AccelerationPercent()
    local timetoreach = 0
    timetoreach = self:GetAccelTime() / self.Delay_Accel

    return timetoreach
end

function SWEP:SetAcceleration( time )
    self:SetAccelTime( math.Clamp( time, 0, self.Delay_Accel ) )
end

function SWEP:GetMaxHeatLevel()
    return self.Heat_Max * self:GetBuff_Mult("Mult_Halo_HeatMax")
end

SWEP.Hook_ModifyRPM = function(wep, delay)
    if wep.ArcCW_Halo_Accel then
        local firerate_min = wep.Delay_Min
        local firerate_max = wep.Delay_Max
        
        local firerate_diff = (firerate_min - firerate_max)

        local returnthatvalue = ( firerate_min ) - ( firerate_diff * ( wep:AccelerationPercent() ) )

        returnthatvalue = returnthatvalue * ( 1 + ( wep.Delay_Penalty * ( 1 - wep:GetBatteryLevel() ) ) ) 
        
        returnthatvalue = returnthatvalue * ( 1 / wep:GetBuff_Mult("Mult_RPM") )

        return returnthatvalue
    end
end

SWEP.Hook_FireBullets = function(wep)
    if wep.ArcCW_Halo_Battery then
	    wep:SetBatteryLevel( math.Clamp( wep:GetBatteryLevel() - wep.BatteryConsumption, 0, 1 ) )
        if wep:GetBatteryLevel() <= 0 then
            wep:SetClip1(0)
        else
            wep:SetClip1(1)
        end
    end

    if wep.ArcCW_Halo_Heat then
	    wep:SetHeatLevel( wep:GetHeatLevel() + wep.Heat_Accel )
    end

    if wep.Misfire_Threshold != 0 and
    ( 1 - wep.Misfire_Threshold ) >= wep:GetBatteryLevel() and
    wep.Misfire_Chance * ( 1 - wep:GetBatteryLevel() ) > math.Rand(0, 1) then
        wep:PlayAnimation("misfire", 1)
        wep:SetWeaponOpDelay(CurTime() + wep:GetAnimKeyTime("misfire"))
        return false
    end
end

SWEP.Hook_Think = function(wep)
    if wep.ArcCW_Halo_Accel then
        if wep:GetNextPrimaryFireSlowdown() >= CurTime() and !wep:GetReloading() then
            wep:SetAcceleration( wep:GetAccelTime() + FrameTime() )
        else
            wep:SetAcceleration( wep:GetAccelTime() - math.min(FrameTime(), CurTime() - wep:GetNextPrimaryFireSlowdown())/wep.Delay_Decel )
        end
    end

    if wep.ArcCW_Halo_Heat then
        if wep:GetHeatLevel() >= 1 then 
            wep:PlayAnimation( "enter_vent", 1, true, nil, nil, nil, true)
            wep:SetDischarging(true)
        elseif wep:GetHeatLevel() <= wep.Heat_Threshold and wep:GetDischarging() then
            wep:SetDischarging(false)
            if wep.Animations["exit_vent"] then
                wep:PlayAnimation( "exit_vent", 1, true, nil, nil, nil, true)
            end
        end
    
        local decel = wep.Heat_Decel
        if wep:GetDischarging() and wep.Heat_DecelOH then decel = wep.Heat_DecelOH end
        decel = decel * ( 1 - ( wep.Heat_Penalty * ( 1 - wep:GetBatteryLevel() ) ) ) 

        wep:SetHeatLevel(math.Clamp(wep:GetHeatLevel() - (decel * FrameTime()), 0, 1) )
    end
end

SWEP.Hook_TranslateAnimation = function(wep, anim)
    if wep:GetDischarging() and anim == "idle" then
        return "idle_vent"
    end
end

SWEP.Hook_DrawHUD = function(wep)
    if wep.ArcCW_Halo_Battery then
        local text

        if wep:GetBatteryLevel() <= 0 then
            text = "Battery Depleted"
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

    if true then
        local ss = ScreenScale(24)
        local s2 = ScreenScale(12)

        local f = wep:GetDischarging() and 0 or 1
        surface.SetTextColor(255, 255*f, 255*f, 255)
        surface.SetFont("ArcCW_20")
        surface.SetTextPos( ScrW()/2-175,
        ScrH()/2 + ss+s2*1 ) 
                            surface.DrawText("ACCEL PERCENT: " .. math.Round(wep:AccelerationPercent()*100) .. "%")
        surface.SetTextPos( ScrW()/2-175,
        ScrH()/2 + ss+s2*2 ) 
                            surface.DrawText("ACCEL TIME: " .. math.Round(wep:GetAccelTime(), 2))
        surface.SetTextPos( ScrW()/2-175,
        ScrH()/2 + ss+s2*3 ) 
                            surface.DrawText("HEAT LEVEL: " .. math.Round(wep:GetHeatLevel()/wep:GetMaxHeatLevel()*100) .. "%")
        surface.SetTextPos( ScrW()/2-175,
        ScrH()/2 + ss+s2*4 ) 
                            surface.DrawText("RPM: " .. math.Round(60/wep:GetFiringDelay()) .. "rpm")
        surface.SetTextPos( ScrW()/2-175,
        ScrH()/2 + ss+s2*5 ) 
                            surface.DrawText("MISFIRE CHANCE: " .. math.Round( wep.Misfire_Chance * ( 1 - wep:GetBatteryLevel() )*100, 1) .. "% " .. math.Round(math.Rand(0, 1)*100, 1) )
        surface.SetTextPos( ScrW()/2-175,
        ScrH()/2 + ss+s2*6 ) 
                            surface.DrawText("PlasP state: " .. tostring(wep.FUCK) )
    end
end

SWEP.Hook_ShouldNotFire = function(wep)
    if (wep.ArcCW_Halo_Battery and wep:GetBatteryLevel() <= 0) or wep:GetDischarging() then
        return true
    end
end

SWEP.Hook_DryFire = function(wep, sound)
    return "snow/weapons/magnum/magnum_dryfire.wav"
end

SWEP.Hook_FiremodeBars = function(wep)
    if !wep.ArcCW_Halo_Accel then return end
    local awesome = math.ceil( wep:AccelerationPercent()*7 )
    local thebars = ""

    for i = 1, awesome do
        thebars = "!" .. thebars
    end

    for i = 1, 7-awesome do
        thebars = thebars .. "-"
    end

    return thebars
end

SWEP.Hook_PreReload = function(wep)
    if wep.ArcCW_Halo_Battery and wep:GetBatteryLevel() >= 1 then
        return true
    end
end

SWEP.Hook_PostReload = function(wep)
    if wep.ArcCW_Halo_Battery then
        wep:SetBatteryLevel( 1 )
    end
end

SWEP.Disposable = false
SWEP.BottomlessClip = false
SWEP.InfiniteAmmo = false -- weapon can reload for free
SWEP.AmmoPerShot = 0

DEFINE_BASECLASS("arccw_base")

function SWEP:SetupDataTables()
	BaseClass.SetupDataTables( self )

    self:NetworkVar("Bool", 31, "Discharging")

    self:NetworkVar("Float", 31, "BatteryLevel")
    self:NetworkVar("Float", 30, "AccelTime")
    self:NetworkVar("Float", 29, "HeatLevel")

	if SERVER then
		self:SetBatteryLevel( 1 )
	end
end

SWEP.Hook_GetHUDData = function(wep, data)    
    data.clip = math.Round(wep:GetBatteryLevel() * 100, 0)
    data.heat_enabled = true
    data.heat_name = "HEAT"
    data.heat_level = wep:GetHeatLevel()
    data.heat_maxlevel = 1
    data.heat_locked = wep:GetDischarging()
end