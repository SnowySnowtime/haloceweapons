SWEP.Base = "arccw_halo_subbase"
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ArcCW - Halo Custom Edition" -- edit this if you like
SWEP.AdminOnly = false

SWEP.PrintName = "Particle Carbine"
SWEP.TrueName = "Type-52 Carbine"
SWEP.Trivia_Class = "Carbine"
SWEP.Trivia_Desc = "The Particle Carbine is a battery-powered, directed-energy weapon that fires ionized particles at its targets (Similarly to the Beam Rifle)."
SWEP.Trivia_Manufacturer = "Iruiru Armory"
SWEP.Trivia_Calibre = "Ionized Accelerated Hydrogen Particles"
SWEP.Trivia_Mechanism = "Semi-Auto"

SWEP.Slot = 4

if GetConVar("arccw_truenames"):GetBool() then SWEP.PrintName = SWEP.TrueName end

SWEP.UseHands = true

SWEP.MeleeSwingSound = ""
SWEP.MeleeMissSound = ""
SWEP.MeleeHitSound = "hceworld"
SWEP.MeleeHitNPCSound = "hceslap"

SWEP.ViewModel = "models/snowysnowtime/spv3/c_carbine.mdl"
SWEP.WorldModel = "models/snowysnowtime/spv3/c_carbine.mdl"
SWEP.ViewModelFOV = 70

SWEP.WorldModelOffset = {
    pos        =    Vector(-7.7, 5.55, -5.5),
    ang        =    Angle(-12, 0, 180),
    bone    =    "ValveBiped.Bip01_R_Hand",
    scale   =   1
}

	SWEP.Recoil = 1
	SWEP.RecoilSide = 0.2
	SWEP.Damage = 25
	SWEP.DamageMin = 25
	SWEP.AccuracyMOA = 0.04
	SWEP.HipDispersion = 120
	SWEP.MoveDispersion = 0
	SWEP.JumpDispersion = 0
	SWEP.ChamberSize = 0

SWEP.Range = 300 -- in METRES
SWEP.Penetration = 1000
SWEP.DamageType = DMG_BULLET
SWEP.ShootEntity = nil -- entity to fire, if any
SWEP.MuzzleVelocity = 3657 -- projectile or phys bullet muzzle velocity
-- IN M/S
SWEP.NeverPhysBullet = true

SWEP.TracerNum = 1 -- tracer every X
SWEP.Tracer = "effect_arccw_halo_ce_tracer_ar"
SWEP.MeleeTime = 1.1

-- Fesiug's Plasma subbase
SWEP.Heat_Accel     = 0.14
SWEP.Heat_Decel     = 0.35
SWEP.Heat_DecelOH   = 0.25

SWEP.BatteryConsumption     = 1/100
SWEP.Heat_Threshold     = 0.1

SWEP.ArcCW_Halo = SWEP.ArcCW_Halo or {}
SWEP.ArcCW_Halo_Accel = false

SWEP.Delay = 60/900 -- 60 / RPM.
SWEP.Num = 1 -- number of shots per trigger pull.
SWEP.Firemodes = {
    {
        Mode = 1,
        PrintName = "PLAS",
        CustomBars = "--!--"
        
    },
    {
        Mode = 0
    }
}

SWEP.NPCWeaponType = {"weapon_ar2", "weapon_crossbow"}
SWEP.NPCWeight = 25

SWEP.ManualAction = false

SWEP.Primary.Ammo = "arccwhce_plasmabattery" -- what ammo type the gun uses
SWEP.MagID = "hs338" -- the magazine pool this gun draws from

SWEP.ShootVol = 140 -- volume of shoot sound
SWEP.ShootPitch = 100 -- pitch of shoot sound

SWEP.ShootSound = "spvcarb_fire"
SWEP.ShootSoundSilenced = "weapons/arccw/m4a1/m4a1_silencer_01.wav"
SWEP.DistantShootSound = ""

SWEP.MuzzleEffect = "astw2_halo_spv3_muzzle_particle_carbine"
SWEP.ShellModel = "models/shells/shell_338mag.mdl"
SWEP.ShellPitch = 80
SWEP.ShellScale = 1.5

SWEP.MuzzleEffectAttachment = 1 -- which attachment to put the muzzle on
SWEP.CaseEffectAttachment = 2 -- which attachment to put the case effect on

SWEP.SightTime = 0.35
SWEP.SpeedMult = 0.80
SWEP.SightedSpeedMult = 0.25

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
    Magnification = 1.1,
}

SWEP.HoldtypeHolstered = "passive"
SWEP.HoldtypeActive = "ar2"
SWEP.HoldtypeSights = "rpg"

SWEP.RejectAttachments = {
    ["ammo_cerberus"] = true, -- fuck cerberus
    ["acwatt_perk_fastbolt"] = true, -- whats the point of this on my weapons?
    ["acwatt_perk_beefficient"] = true, -- never heard of her
}

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_RPG

SWEP.ActivePos = Vector(0, 0, 0)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.HolsterPos = Vector(2, -6, -2)
SWEP.HolsterAng = Angle(-7.036, 60.016, 0)

SWEP.BarrelOffsetSighted = Vector(0, 0, -1)
SWEP.BarrelOffsetHip = Vector(2, 0, -2)

SWEP.BarrelLength = 50
SWEP.AttachmentElements = {
}

SWEP.ExtraSightDist = 15

SWEP.Attachments = {
	{
        PrintName = "Optic", -- print name
        DefaultAttName = "None",
        Slot = {"h3bmsc"}, -- what kind of attachments can fit here, can be string or table
        Bone = "gun", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vpos = Vector(0, 0, 0), -- offset that the attachment will be relative to the bone
            vang = Angle(0, 0, -47),
            wpos = Vector(7.36, 0.739, -5.201),
            wang = Angle(-9.738, 0, 180)
        },
		Installed = "optic_bm_scopeh3",
		Integral = true, 
		Hidden = true,
    },
	{
        PrintName = "Tactical",
        Slot = "tac",
        Bone = "gun",
        Offset = {
            vpos = Vector(17, 0, -1.5), -- offset that the attachment will be relative to the bone
            vang = Angle(0, 0, 0),
            wpos = Vector(15.625, -0.253, -6.298),
            wang = Angle(-8.829, -0.556, 90)
        },
    },
    {
        PrintName = "Perk",
        Slot = "perk"
    },
    {
        PrintName = "Charm",
        Slot = "charm",
        FreeSlot = true,
        Bone = "scope_link", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vpos = Vector(-3.5, -3, 1.8), -- offset that the attachment will be relative to the bone
            vang = Angle(0, 0, -95),
            wpos = Vector(8, 1.75, -3.5),
            wang = Angle(-10.393, 0, 180)
        },
    },
}

SWEP.Animations = {
    ["idle"] = {
        Source = "idle",
        Time = 99/30
    },
    ["draw"] = {
        Source = "draw",
		SoundTable = {{s = "spvcarb_deploy", t = 0.01}},
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.25,
    },
	["bash"] = {
        Source = {"melee1", "melee2"},
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.2,
    },
    ["fire"] = {
        Source = {"fire"},
        Time = 18/30,
    },
	["fire_iron"] = {
        Source = {"fire"},
        Time = 18/30,
    },
	["enter_vent"] = {
		Source = "overheat_start",
		SoundTable = {{s = "spv3oh_start", t = 0.02}},
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0,
    },
    ["idle_vent"] = {
        Source = "overheat_loop",
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0,
    },
    ["exit_vent"] = {
        Source = "overheat_finish",
		SoundTable = {{s = "spv3oh_exit", t = 0.02}},
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.5,
    },
}