SWEP.Base = "arccw_halo_subbase"
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ArcCW - Halo Combat Evolved" -- edit this if you like
SWEP.AdminOnly = false

SWEP.PrintName = "Fuel Rod"
SWEP.TrueName = "Type-33A"
SWEP.Trivia_Class = "Rocket Launcher"
SWEP.Trivia_Desc = "The M41 Surface-to-Surface Rocket Medium Anti-Vehicle / Assault Weapon (M41 SSR MAV/AW), formally known as the Medium Anti-Vehicle / Assault Weapon, Bore 102mm, M41 Surface-to-Surface Rocket Launcher, and commonly known as the Jackhammer or the SPNKR (also stylised as SPNKr), is a heavy ordnance weapon used by the UNSC and Insurrectionists. It is manufactured by Misriah Armory."
SWEP.Trivia_Manufacturer = "Misriah Armory"
SWEP.Trivia_Calibre = "M19 102mm High-Explosive Shaped Charge Missiles"
SWEP.Trivia_Mechanism = "Semi-Auto"
SWEP.Trivia_Country = "never heard of her"
SWEP.Trivia_Year = 2460

SWEP.Slot = 4

if GetConVar("arccw_truenames"):GetBool() then SWEP.PrintName = SWEP.TrueName end

SWEP.UseHands = true

SWEP.ViewModel = "models/snowysnowtime/vuthakral/c_hum_t33a.mdl"
SWEP.WorldModel = "models/halomodels/haloce/w_halorocketlauncher.mdl"
SWEP.ViewModelFOV = 70

SWEP.MeleeSwingSound = nil
SWEP.MeleeHitSound = "hceworld"
SWEP.MeleeHitNPCSound = "hceslap"

SWEP.Damage = 40
SWEP.DamageMin = 45 -- damage done at maximum range
SWEP.Range =  700 -- in METRES
SWEP.Penetration = 100
SWEP.DamageType = DMG_BULLET
SWEP.ShootEntity = "arccw_halo_ce_fuel_rod_launched" -- entity to fire, if any
SWEP.MuzzleVelocity = 1000 -- projectile or phys bullet muzzle velocity
SWEP.PhysBulletDontInheritPlayerVelocity = true
-- IN M/S

SWEP.TracerNum = 0 -- tracer every X
SWEP.TracerName 	= "hce_sr_tracer"

SWEP.ChamberSize = 0-- how many rounds can be chambered.
SWEP.ReducedClipSize = 1

SWEP.Delay_Accel        = 0.2
SWEP.Delay_Decel        = 0.5
SWEP.Heat_Accel     = 0.4
SWEP.Heat_Decel     = 0.4
SWEP.Delay_Min          = 0.5
SWEP.Delay_Max          = 0.5
SWEP.BatteryConsumption     = 1/400

SWEP.Delay = 60 / 270 -- 60 / RPM.
SWEP.Num = 1 -- number of shots per trigger pull.
SWEP.Firemodes = {
    {
        Mode = 2,
        PrintName = "PLAS",
        CustomBars = "--!--"
        
    },
    {
        Mode = 0
    }
}

SWEP.NPCWeaponType = {"weapon_rpg"}
SWEP.NPCWeight = 25

SWEP.ManualAction = false

SWEP.AccuracyMOA = 0 -- accuracy in Minutes of Angle. There are 60 MOA in a degree.
SWEP.HipDispersion = 0 -- inaccuracy added by hip firing.
SWEP.MoveDispersion = 100

SWEP.Primary.Ammo = "RPG_Round" -- what ammo type the gun uses
SWEP.MagID = "hs338" -- the magazine pool this gun draws from

SWEP.ShootVol = 140 -- volume of shoot sound
SWEP.ShootPitch = 100 -- pitch of shoot sound

SWEP.ShootSound = "fuelrod_fire"
SWEP.ShootSoundSilenced = "hcesup"
SWEP.DistantShootSound = "rl_lod"

SWEP.MuzzleEffect = "astw2_halo_3_muzzle_fuel_rod"
SWEP.ShellModel = "models/shells/shell_338mag.mdl"
SWEP.ShellPitch = 80
SWEP.ShellScale = 1.5

SWEP.MuzzleEffectAttachment = 1 -- which attachment to put the muzzle on
SWEP.CaseEffectAttachment = 2 -- which attachment to put the case effect on

SWEP.SightTime = 0.35
SWEP.SpeedMult = 0.70
SWEP.SightedSpeedMult = 0.25
SWEP.MeleeTime = 1.8

SWEP.BulletBones = { -- the bone that represents bullets in gun/mag
    -- [0] = "bulletchamber",
    -- [1] = "bullet1"
}

SWEP.ProceduralRegularFire = false
SWEP.ProceduralIronFire = false

SWEP.CaseBones = {}

SWEP.IronSightStruct = {
    Pos = Vector(0, 0, 0),
    Ang = Angle(0.792, 0.017, 0),
    Magnification = 1.5,
}

SWEP.HoldtypeHolstered = "passive"
SWEP.HoldtypeActive = "rpg"
SWEP.HoldtypeSights = "smg"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_RPG

SWEP.ActivePos = Vector(0, 0, 1)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.HolsterPos = Vector(0, 6, 4)
SWEP.HolsterAng = Angle(-40, 0, 0)

SWEP.BarrelOffsetSighted = Vector(0, 0, -10)
SWEP.BarrelOffsetHip = Vector(0, 0, 0)

SWEP.CustomizePos = Vector(2.824, -1, -2.897)
SWEP.CustomizeAng = Angle(12.149, 30.547, 0)

SWEP.BarrelLength = 32
SWEP.AttachmentElements = {
    ["corrosion"] = {
        VMSkin = 1,
        WMSkin = 1,
    },
    ["desert"] = {
        VMSkin = 2,
        WMSkin = 2,
    },
	["huntersblood"] = {
        VMSkin = 3,
        WMSkin = 3,
    },
	["mcc"] = {
        VMSkin = 4,
        WMSkin = 4,
    },
	["anniv"] = {
        VMBodygroups = {{ind = 0, bg = 1}},
        WMBodygroups = {{ind = 0, bg = 1}},
    },
}

SWEP.ExtraSightDist = 5

SWEP.Attachments = {
	{
        PrintName = "Optic", -- print name
        DefaultAttName = "10x Scope",
        Slot = {"optic", "optic_lp"}, -- what kind of attachments can fit here, can be string or table
        Bone = "frame gun", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vpos = Vector(12, -2.5, 2), -- offset that the attachment will be relative to the bone
            vang = Angle(0, 0, -45),
            wpos = Vector(6, 2, -4.4),
            wang = Angle(-8.829, 0, 180)
        },
    },
	{
        PrintName = "Tactical",
        Slot = "tac",
        Bone = "frame gun",
        Offset = {
            vpos = Vector(0, 2.5, 3.64), -- offset that the attachment will be relative to the bone
            vang = Angle(0, 0, -90),
            wpos = Vector(6, 1.25, -3),
            wang = Angle(-8.829, -0.556, 90)
        },
		VMScale = Vector(0.1, 0.1, 0.1),
    },
    {
        PrintName = "Charm",
        Slot = "charm",
        FreeSlot = true,
        Bone = "frame gun", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vpos = Vector(10, -2.45, 0.85), -- offset that the attachment will be relative to the bone
            vang = Angle(0, 0, 10),
            wpos = Vector(6, 2.4, -3.5),
            wang = Angle(-10.393, 0, 180)
        },
		VMScale = Vector(0.7, 0.7, 0.7),
    },
}

SWEP.Hook_PostFireBullets = function(wep)
    if wep:Clip1() <= 0 then
        wep:SetNextPrimaryFire(0)
        wep:Reload()
    end
end

SWEP.Animations = {
    ["idle"] = {
        Source = "idle",
        Time = 59/30
    },
    ["holster"] = {
        Source = "holster",
        Time = 21/30
    },
	["fire_iron"] = {
        Source = "fire",
    },
    ["draw"] = {
        Source = "draw",
        Time = 21/30,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.25,
    },
	["draw_anniv"] = {
        Source = "anniv_draw",
        Time = 21/30,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.25,
    },
    ["fire"] = {
        Source = "fire",
        Time = 10/30,
    },
	["bash"] = {
        Source = "melee",
		Time = 34/30,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.6,
    },
    ["enter_vent"] = {
        Source = "overheat_start",
        Time = 12/30,
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0,
    },
    ["idle_vent"] = {
        Source = "overheat_loop",
        Time = 1/30,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0,
    },
    ["exit_vent"] = {
        Source = "overheat_finish",
        Time = 15/30,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.5,
    },
}

-- nZombies Stuff
SWEP.NZWonderWeapon		= false	-- Is this a Wonder-Weapon? If true, only one player can have it at a time. Cheats aren't stopped, though.
--SWEP.NZRePaPText		= "your text here"	-- When RePaPing, what should be shown? Example: Press E to your text here for 2000 points.
SWEP.NZPaPName				= "M420 SPANKr"
--SWEP.NZPaPReplacement 	= ""	-- If Pack-a-Punched, replace this gun with the entity class shown here.
SWEP.NZPreventBox		= false	-- If true, this gun won't be placed in random boxes GENERATED. Users can still place it in manually.
SWEP.NZTotalBlackList	= false	-- if true, this gun can't be placed in the box, even manually, and can't be bought off a wall, even if placed manually. Only code can give this gun.

SWEP.Primary.MaxAmmo = 10
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
self.PrintName = "M420 SPANKr"
self.MagExtender = true
self.Primary.MaxAmmo = 20
self.Delay = 60 / 150
return true
end