SWEP.Base = "arccw_halo_subbase"
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ArcCW - Halo 3" -- edit this if you like
SWEP.AdminOnly = false

SWEP.PrintName = "Beam Rifle"
SWEP.TrueName = "Type-50 Beam Rifle"
SWEP.Trivia_Class = "Sniper Rifle"
SWEP.Trivia_Desc = "The Particle Beam Rifle is a battery-powered, directed-energy weapon that fires ionized particles at its targets instead of accelerating small projectiles. The weapon is nearly silent, gives off a negligible muzzle report, weighs considerably less than its UNSC analog and inflicts wounds akin to the 14.5mm SRS 99 AM making it, by all assessments, a potent force multiplier. The use of particle acceleration offers the distinct advantage of superior penetration, as the beam will always pass through a target completely, even through cover. Although the size of the wounds inflicted on a target is small, the damage done is similar to most directed energy weapons used by the Covenant."
SWEP.Trivia_Manufacturer = "Assembly Forges"
SWEP.Trivia_Calibre = "Ionized Accelerated Hydrogen Particles"
SWEP.Trivia_Mechanism = "Semi-Auto"

SWEP.Slot = 4

if GetConVar("arccw_truenames"):GetBool() then SWEP.PrintName = SWEP.TrueName end

SWEP.UseHands = true

SWEP.Recoil = 1
SWEP.RecoilSide = 0.5
SWEP.Damage = 85
SWEP.DamageMin = 125
SWEP.AccuracyMOA = 0.03
SWEP.HipDispersion = 450
SWEP.MoveDispersion = 550

SWEP.MeleeSwingSound = ""
SWEP.MeleeMissSound = ""
SWEP.MeleeHitSound = "hceworld"
SWEP.MeleeHitNPCSound = "hceslap"

SWEP.ViewModel = "models/snowysnowtime/eonace/c_hum_beamrifle.mdl"
SWEP.WorldModel = "models/snowysnowtime/eonace/w_beamrifle.mdl"
SWEP.ViewModelFOV = 70

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
SWEP.ArcCW_Halo_Heat    = true
SWEP.ArcCW_Halo_Battery = true
SWEP.ArcCW_Halo_Accel   = false

SWEP.Heat_Accel     = 0.7
SWEP.Heat_Decel     = 0.575
SWEP.Heat_DecelOH   = 0.3

SWEP.BatteryConsumption     = 1/10
SWEP.Heat_Threshold     = 0.1

SWEP.Delay = 0.4 -- 60 / RPM.
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

SWEP.ShootSound = "h3.beam_fire"
SWEP.ShootSoundSilenced = "weapons/arccw/m4a1/m4a1_silencer_01.wav"
SWEP.DistantShootSound = "beam_lod"

SWEP.MuzzleEffect = "astw2_halo_3_muzzle_beam_rifle"
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

SWEP.ActivePos = Vector(0.175, -1.7, -1.5)
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
        Slot = {"h3_beamscope"}, -- what kind of attachments can fit here, can be string or table
        Bone = "gun", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vpos = Vector(0, 0, 0), -- offset that the attachment will be relative to the bone
            vang = Angle(0, 0, -47),
            wpos = Vector(7.36, 0.739, -5.201),
            wang = Angle(-9.738, 0, 180)
        },
		Installed = "optic_beam_scope",
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
        Source = "deploy",
        Time = 21/30,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.25,
    },
    ["reload"] = {
        Source = "deploy",
    },
	["enter_inspect"] = {
		Source = "pose1",
		Time = 88/30
	},
	["exit_inspect"] = {
		Source = "pose2",
		Time = 156/30,
	},
	["holster"] = {
		Source = "holster",
		Time = 5/30,
	},
	["bash"] = {
        Source = {"melee1", "melee2"},
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.2,
    },
    ["fire"] = {
        Source = {"fire1","fire2","fire3"},
        Time = 18/30,
    },
	["fire_iron"] = {
        Source = {"fire1","fire2","fire3"},
        Time = 18/30,
    },
	["enter_vent"] = {
       Source = "overheat_in",
        Time = 58/30,
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0,
    },
    ["idle_vent"] = {
        Source = "overheat_loop",
        Time = 58/300,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0,
    },
    ["exit_vent"] = {
        Source = "overheat_out",
        Time = 23/30,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.5,
    },
}

if engine.ActiveGamemode() == "terrortown" then
    SWEP.Kind = WEAPON_EQUIP1
    SWEP.Slot = 6
    SWEP.CanBuy = { ROLE_TRAITOR, ROLE_DETECTIVE }
    SWEP.LimitedStock = true
    SWEP.AutoSpawnable = false
    SWEP.EquipMenuData = {
        type = "Weapon",
        desc = "A powerful sniper rifle. Uses typical rifle ammo, \nbut isn't lethal at point blank.\nPurchased weapons come with full attachments."
    };
    SWEP.Icon = "entities/arccw_h3_eonace_beamrifle.png"
end

-- nZombies Stuff
SWEP.NZWonderWeapon		= false	-- Is this a Wonder-Weapon? If true, only one player can have it at a time. Cheats aren't stopped, though.
--SWEP.NZRePaPText		= "your text here"	-- When RePaPing, what should be shown? Example: Press E to your text here for 2000 points.
SWEP.NZPaPName				= "Jackal"
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
self.PrintName = "Jackal"
self.MagExtender = true
self.ActivateElements = {"extendedmag"}
self.Primary.MaxAmmo = 30
self.Damage = 115
self.DamageMin = 175
self.AccuracyMOA = 0.01 -- accuracy in Minutes of Angle. There are 60 MOA in a degree.
self.HipDispersion = 0
return true
end