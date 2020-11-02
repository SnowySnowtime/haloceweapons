SWEP.Base = "arccw_base"
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ArcCW - Halo 3" -- edit this if you like
SWEP.AdminOnly = false
SWEP.ArcCW_Halo = {}
SWEP.ArcCW_Halo.Plasma = true

SWEP.PrintName = "Plasma Rifle"
SWEP.TrueName = "Type-25 Plasma Rifle"
SWEP.Trivia_Class = "Rifle"
SWEP.Trivia_Desc = "This is a Type-25 Directed Energy Rifle"
SWEP.Trivia_Manufacturer = "Iruiru Armory"
SWEP.Trivia_Calibre = "Plasma"
SWEP.Trivia_Mechanism = "Automatic"
SWEP.MeleeTime = 1

SWEP.Slot = 2

if GetConVar("arccw_truenames"):GetBool() then SWEP.PrintName = SWEP.TrueName end

SWEP.UseHands = true

SWEP.MeleeSwingSound = ""
SWEP.MeleeMissSound = ""
SWEP.MeleeHitSound = "hceworld"
SWEP.MeleeHitNPCSound = "hceslap"

SWEP.ViewModel = "models/snowysnowtime/vuthakral/c_hum_plasmarifle.mdl"
SWEP.WorldModel = "models/snowysnowtime/vuthakral/w_plasmarifle.mdl"
SWEP.ViewModelFOV = 70

SWEP.Damage = 20
SWEP.DamageMin = 20 -- damage done at maximum range
SWEP.Range =  700 -- in METRES
SWEP.Penetration = 25
SWEP.DamageType = DMG_BULLET
SWEP.MuzzleVelocity = 600 -- projectile or phys bullet muzzle velocity -- IN M/S

SWEP.TracerNum = 1 -- tracer every X
SWEP.Tracer 	= "effect_astw2_halo3_tracer_plasmarifle"
SWEP.ImpactEffect = "effect_astw2_halo3_impact_plasmarifle"

SWEP.ChamberSize = 0-- how many rounds can be chambered.
SWEP.Primary.ClipSize = 35 -- DefaultClip is automatically set.
SWEP.ExtendedClipSize = 30
SWEP.ReducedClipSize = 15

SWEP.Recoil = 0.2
SWEP.RecoilSide = 0.2

SWEP.Delay = 60 / 360 -- 60 / RPM.
SWEP.Num = 1 -- number of shots per trigger pull.
SWEP.Firemodes = {
    {
        Mode = 2,
        PrintName = "PLASMA",
        CustomBars = "--!--"
        
    },
    {
        Mode = 0
    }
}

SWEP.NPCWeaponType = {"weapon_ar2"}
SWEP.NPCWeight = 25

SWEP.ManualAction = false

SWEP.AccuracyMOA = 15 -- accuracy in Minutes of Angle. There are 60 MOA in a degree.
SWEP.HipDispersion = 80 -- inaccuracy added by hip firing.
SWEP.MoveDispersion = 0

SWEP.Primary.Ammo = "ar2" -- what ammo type the gun uses
SWEP.MagID = "hs338" -- the magazine pool this gun draws from

SWEP.ShootVol = 140 -- volume of shoot sound
SWEP.ShootPitch = 100 -- pitch of shoot sound

SWEP.ShootSound = Sound("h3_pr")
SWEP.ShootSoundSilenced = nil
SWEP.DistantShootSound = "h3_pr_lod"

SWEP.MuzzleEffect = "astw2_halo_3_muzzle_plasma_rifle"
SWEP.ShellModel = "models/shells/shell_338mag.mdl"
SWEP.ShellPitch = 80
SWEP.ShellScale = 1.5

SWEP.MuzzleEffectAttachment = 1 -- which attachment to put the muzzle on
SWEP.CaseEffectAttachment = 2 -- which attachment to put the case effect on

SWEP.SightTime = 0.35
SWEP.SpeedMult = 0.85
SWEP.SightedSpeedMult = 0.25

SWEP.RejectAttachments = {
    ["ammo_cerberus"] = true, -- fuck cerberus
    ["acwatt_perk_fastbolt"] = true, -- whats the point of this on my weapons?
    ["acwatt_perk_beefficient"] = true, -- never heard of her
}

SWEP.BulletBones = { -- the bone that represents bullets in gun/mag
    -- [0] = "bulletchamber",
    -- [1] = "bullet1"
}

SWEP.ProceduralRegularFire = false
SWEP.ProceduralIronFire = false

SWEP.CaseBones = {}

SWEP.IronSightStruct = {
    Pos = Vector(-3.375, -3, 0),
    Ang = Angle(0.792, 0.017, 0),
    Magnification = 1.1,
}

SWEP.HoldtypeHolstered = "passive"
SWEP.HoldtypeActive = "smg"
SWEP.HoldtypeSights = "rpg"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2

SWEP.ActivePos = Vector(0, 0, 1)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.HolsterPos = Vector(3, -3, -0.5)
SWEP.HolsterAng = Angle(-10, 30, -10)

SWEP.BarrelOffsetSighted = Vector(0, 0, -1)
SWEP.BarrelOffsetHip = Vector(2, 0, -2)

SWEP.CustomizePos = Vector(6.824, -2, 1.897)
SWEP.CustomizeAng = Angle(12.149, 30.547, 0)

SWEP.BarrelLength = 30
SWEP.AttachmentElements = {
	["schism"] = {
        VMSkin = 1,
        WMSkin = 1,
    },
}

SWEP.ExtraSightDist = 15

SWEP.Attachments = {
	{
        PrintName = "Optic", -- print name
        DefaultAttName = "10x Scope",
        Slot = {"optic", "optic_lp"}, -- what kind of attachments can fit here, can be string or table
        Bone = "gun", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vpos = Vector(0, 0, 6.2), -- offset that the attachment will be relative to the bone
            vang = Angle(0, 0, 0),
            wpos = Vector(6, 2, -4.4),
            wang = Angle(-8.829, 0, 180)
        },
        CorrectivePos = Vector(0, 0, 0),
        CorrectiveAng = Angle(0, 0, 0),
        InstalledEles = {"mount"}
    },
    {
        PrintName = "Stock",
        Slot = "stock",
        DefaultAttName = "Standard Stock"
    },
	{
        PrintName = "Tactical",
        Slot = "tac",
        Bone = "gun",
        Offset = {
            vpos = Vector(6.5, -1.5, 3.4), -- offset that the attachment will be relative to the bone
            vang = Angle(0, 0, 90),
            wpos = Vector(6, 1.25, -3),
            wang = Angle(-8.829, -0.556, 90)
        },
    },
    {
        PrintName = "Perk",
        Slot = {"perk","go_perk"}
    },
	{
        PrintName = "Underbarrel",
        Slot = {"foregrip", "ubgl", "bipod"},
        Bone = "gun",
        Offset = {
            vpos = Vector(5, 0, 2),
            vang = Angle(0, 0, 8),
            wpos = Vector(15, 1, 0),
            wang = Angle(-12, 0, 180)
        },
    },
    {
        PrintName = "Charm",
        Slot = "charm",
        FreeSlot = true,
        Bone = "gun", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vpos = Vector(3.5, -1.5, 4.7), -- offset that the attachment will be relative to the bone
            vang = Angle(0, 0, 10),
            wpos = Vector(6, 2.4, -3.5),
            wang = Angle(-10.393, 0, 180)
        },
    },
	{
        PrintName = "Skin",
        Slot = {"skin_h3pr"},
        DefaultAttName = "Factory Default",
        FreeSlot = true
    },
}


SWEP.Delay_Accel = 0.8
SWEP.Delay_Decel = 0.6

SWEP.Heat_Accel = 0.1
SWEP.Heat_Decel = 0.4

SWEP.Hook_ModifyRPM = function(wep, delay)
	local firerate_min = 0.166666666666667	-- 360 -- 6
	local firerate_max = 0.111111111111111	-- 540 -- 9
	
	local firerate_diff = (firerate_min - firerate_max)

	local returnthatvalue = firerate_min - (firerate_diff * wep:GetCelleryation())

    return returnthatvalue / wep:GetBuff_Mult("Mult_RPM")
end

SWEP.Hook_FireBullets = function(wep)
	wep:SetCelleryation( wep:GetCelleryation() + wep.Delay_Accel)
	wep:SetBatteryLevel( math.max( 0, wep:GetBatteryLevel() - 1/25 ) )
	wep:SetHeatLevel( wep:GetHeatLevel() + wep.Heat_Accel )
end

SWEP.Hook_Think = function(wep)
	wep:SetCelleryation( math.Clamp(wep:GetCelleryation() - (wep.Delay_Decel * FrameTime()), 0, 1) )
    if wep:GetHeatLevel() >= 1 then 
        local anim = wep.Animations["reload"]
        local animtime = anim.MinProgress or anim.Time
        wep:SetNextPrimaryFire( CurTime() + animtime )
        wep:PlayAnimation( "reload", 1, true, nil, nil, nil, true)
    end
	wep:SetHeatLevel(math.Clamp(wep:GetHeatLevel() - (wep.Heat_Decel * FrameTime()), 0, 1) )
	--wep.Owner:ChatPrint( wep.Delay_Decel * FrameTime() )
end

SWEP.Hook_DrawHUD = function(wep)
    local text

    if wep:GetBatteryLevel() <= 0 then
        text = "No Battery"
    elseif wep:GetBatteryLevel() <= 25/100 then
        text = "Low Battery"
    end

    if wep:GetBatteryLevel() <= 25/100 then
        surface.SetTextColor(255, 255, 255, 255)
        surface.SetFont("ArcCW_12")
        surface.SetTextPos( ScrW()/2 - surface.GetTextSize(text)/2, ScrH()/2 + ScreenScale(12) ) 
        surface.DrawText(text)
    end
end

SWEP.Hook_ShouldNotFire = function(wep, gmf)
    if wep:GetBatteryLevel() <= 0 then
        --wep:DryFire()
        return true
    end
end

SWEP.Hook_DryFire = function(wep, sound)
    return "snow/weapons/magnum/magnum_dryfire.wav"
end

SWEP.Hook_FiremodeBars = function(wep)
    local awesome = math.ceil( wep:GetHeatLevel()*10 )
    --print(awesome)
    local thebars = ""

    for i = 1, awesome do
        thebars = "!" .. thebars
    end

    for i = 1, 10-awesome do
        thebars = thebars .. "#"
    end

    return thebars
end

SWEP.Hook_GetHUDData = function(wep, data)
    data.clip = math.Round(wep:GetHeatLevel() * 100, 0)
    data.ammo = math.Round(wep:GetBatteryLevel() * 400/4, 0) .. "%"
end

SWEP.BottomlessClip = true
SWEP.InfiniteAmmo = true -- weapon can reload for free

DEFINE_BASECLASS("arccw_base")

function SWEP:SetupDataTables()
	BaseClass.SetupDataTables( self )
    
    self:NetworkVar("Float", 30, "Celleryation")
    self:NetworkVar("Float", 31, "BatteryLevel")
    self:NetworkVar("Float", 29, "HeatLevel")

	if SERVER then
		self:SetBatteryLevel( 400/400 )
	end
end

SWEP.Animations = {
    ["idle"] = {
        Source = "idle",
        Time = 88/30,
    },
	["fire_iron"] = {
        Source = "fire",
		Time = 0.6,
    },
    ["draw"] = {
        Source = "draw",
        Time = 20/30,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.25,
    },
    ["fire"] = {
        Source = {"firefp","fire_fp1","fire_fp2"},
        Time = 2/30,
    },
	["inspect"] = {
        Source = "fidget",
        Time = 0.6,
    },
	["bash"] = {
        Source = "melee",
		Time = 33/30,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.2,
    },
    ["reload"] = {
        Source = "overheat_loop",
        Time = 95/40,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Checkpoints = {24, 33, 51, 58, 62, 74, 80},
        FrameRate = 30,
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0.5,
    },
    ["reload_empty"] = {
        Source = "overheat_loop",
        Time = 95/40,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Checkpoints = {24, 33, 51, 58, 62, 74, 80},
        FrameRate = 30,
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0.5,
    },
}

-- nZombies Stuff
SWEP.NZWonderWeapon		= false	-- Is this a Wonder-Weapon? If true, only one player can have it at a time. Cheats aren't stopped, though.
--SWEP.NZRePaPText		= "your text here"	-- When RePaPing, what should be shown? Example: Press E to your text here for 2000 points.
SWEP.NZPaPName				= "Scarab Gun"
--SWEP.NZPaPReplacement 	= ""	-- If Pack-a-Punched, replace this gun with the entity class shown here.
SWEP.NZPreventBox		= false	-- If true, this gun won't be placed in random boxes GENERATED. Users can still place it in manually.
SWEP.NZTotalBlackList	= false	-- if true, this gun can't be placed in the box, even manually, and can't be bought off a wall, even if placed manually. Only code can give this gun.

SWEP.Primary.MaxAmmo = 400
-- Max Ammo function

function SWEP:NZMaxAmmo()

	local ammo_type = self:GetPrimaryAmmoType() or self.Primary.Ammo

    if SERVER then
        self.Owner:SetAmmo( self.Primary.MaxAmmo, ammo_type )
    end
end

-- PaP Function
function SWEP:OnPaP()
self.Ispackapunched = 1
self.PrintName = "Scarab Gun"
self.Primary.MaxAmmo = 1000
self.Delay = 60 / 400
self.ShootEntity = "hunter_beam"
return true
end