SWEP.Base = "arccw_base"
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ArcCW - Halo 3" -- edit this if you like
SWEP.AdminOnly = false

SWEP.PrintName = "Covenant Carbine"
SWEP.TrueName = "Type-51 Carbine"
SWEP.Trivia_Class = "Carbine"
SWEP.Trivia_Desc = ""
SWEP.Trivia_Manufacturer = "Iruiru Armory"
SWEP.Trivia_Calibre = "	M118 7.62x51mm FMJ-AP"
SWEP.Trivia_Mechanism = "Semi-Auto"
SWEP.Trivia_Country = "never heard of her"

SWEP.Slot = 3

if GetConVar("arccw_truenames"):GetBool() then SWEP.PrintName = SWEP.TrueName end

SWEP.UseHands = true

SWEP.ViewModel = "models/snowysnowtime/eonace/c_hum_covcarbine.mdl"
SWEP.WorldModel = "models/snowysnowtime/eonace/w_carbine.mdl"
SWEP.ViewModelFOV = 70

--  You will need this for the journey ahead
--  Probably should set this to your first mode
	SWEP.Recoil = 0.2
	SWEP.RecoilSide = 0.2
	SWEP.Damage = 25
	SWEP.DamageMin = 15
	SWEP.AccuracyMOA = 0.01
	SWEP.HipDispersion = 125
	SWEP.JumpDispersion = 0
	SWEP.ChamberSize = 0

local balance = {
    [0] = {
        -- HaloCW
        Recoil = 0.2,
        RecoilSide = 0.2,
        Damage = 25,
        DamageMin = 25,
        AccuracyMOA = 0.01,
        HipDispersion = 125,
        JumpDispersion = 0,
        ChamberSize = 0,
    },
    [1] = {
        -- halo purist
        Recoil = 0,
        RecoilSide = 0,
        Damage = 25,
        DamageMin = 25,
        JumpDispersion = 0,
        HipDispersion = 0,
        MoveDispersion = 0,
        ChamberSize = 0,
    },
    [2] = {
        -- arccw
        Recoil = 0.2,
        RecoilSide = 0.2,
        Damage = 30,
        DamageMin = 20,
        AccuracyMOA = 0.05,
        HipDispersion = 360,
        MoveDispersion = 120,
        ChamberSize = 1,
    }
}

function SWEP:ArcCW_Halo_Setup()
    local val = GetConVar("arccw_hce_bal"):GetInt()
    for i, v in pairs(balance[val]) do
        self[i] = v
    end
end

SWEP.MeleeSwingSound = ""
SWEP.MeleeMissSound = ""
SWEP.MeleeHitSound = "hceworld"
SWEP.MeleeHitNPCSound = "hceslap"

SWEP.Range =  600 -- in METRES
SWEP.Penetration = 30
SWEP.DamageType = DMG_BULLET
SWEP.ShootEntity = nil -- entity to fire, if any
SWEP.MuzzleVelocity = 700 -- projectile or phys bullet muzzle velocity
-- IN M/S

SWEP.TracerNum = 1 -- tracer every X
SWEP.Tracer 	= "effect_astw2_halo3_tracer_carbine"

SWEP.Primary.ClipSize = 18 -- DefaultClip is automatically set.
SWEP.ExtendedClipSize = 20
SWEP.ReducedClipSize = 16

SWEP.Delay = 60 / 250 -- 60 / RPM.
SWEP.Num = 1 -- number of shots per trigger pull.
SWEP.Firemodes = {
    {
        Mode = 1,
    },
    {
        Mode = 0
    }
}

SWEP.NPCWeaponType = {"weapon_ar2","weapon_smg"}
SWEP.NPCWeight = 25

SWEP.ManualAction = false

SWEP.Primary.Ammo = "ar2" -- what ammo type the gun uses
SWEP.MagID = "hs338" -- the magazine pool this gun draws from

SWEP.ShootVol = 140 -- volume of shoot sound
SWEP.ShootPitch = 100 -- pitch of shoot sound
SWEP.AlwaysPhysBullet = true
SWEP.PhysTracerProfile = 2

SWEP.ShootSound = Sound("h3.carbine_fire")
SWEP.ShootSoundSilenced = "weapons/arccw/m4a1/m4a1_silencer_01.wav"
SWEP.DistantShootSound = "car_lod"

SWEP.MuzzleEffect = "astw2_halo_3_muzzle_carbine"
SWEP.ImpactEffect = ""
SWEP.ShellModel = "models/shells/shell_338mag.mdl"
SWEP.ShellPitch = 80
SWEP.ShellScale = 1.5

SWEP.MuzzleEffectAttachment = 1 -- which attachment to put the muzzle on
SWEP.CaseEffectAttachment = 2 -- which attachment to put the case effect on

SWEP.SightTime = 0.5
SWEP.SpeedMult = 0.85
SWEP.SightedSpeedMult = 0.25
SWEP.MeleeTime = 1

SWEP.BulletBones = { -- the bone that represents bullets in gun/mag
    -- [0] = "bulletchamber",
    -- [1] = "bullet1"
}

SWEP.ProceduralRegularFire = false
SWEP.ProceduralIronFire = false

SWEP.CaseBones = {}

SWEP.IronSightStruct = {
    Pos = Vector(-1, -7, 0),
    Ang = Angle(-0.2, 0.01, 0),
    Magnification = 1,
}

SWEP.HoldtypeHolstered = "passive"
SWEP.HoldtypeActive = "ar2"
SWEP.HoldtypeSights = "rpg"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2

SWEP.ActivePos = Vector(0, 0, 0)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.HolsterPos = Vector(3, -3, -0.5)
SWEP.HolsterAng = Angle(-10, 30, -10)

SWEP.BarrelOffsetSighted = Vector(0, 0, 0)
SWEP.BarrelOffsetHip = Vector(2, 0, -2)

SWEP.BarrelLength = 35

SWEP.ExtraSightDist = 10

SWEP.AttachmentElements = {
    ["rail"] = {
        VMBodygroups = {{ind = 1, bg = 1}},
        WMBodygroups = {{ind = 1, bg = 1}},
    },
	["hq"] = {
        VMBodygroups = {{ind = 0, bg = 1}},
        WMBodygroups = {{ind = 0, bg = 1}},
    },
	["h5c"] = {
        VMBodygroups = {{ind = 0, bg = 2}},
        WMBodygroups = {{ind = 0, bg = 2}},
    },
}

SWEP.Attachments = {
	{
        PrintName = "Optic", -- print name
        DefaultAttName = "No Sights",
        Slot = {"halo_optics"}, -- what kind of attachments can fit here, can be string or table
        Bone = "hood", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vpos = Vector(0.1, 0, 1.65), -- offset that the attachment will be relative to the bone
            vang = Angle(0, 0, 0),
            wpos = Vector(7.92, 1.09, -6.8),
            wang = Angle(-13, -1, 182.3)
        },
        CorrectivePos = Vector(0, 0, 0),
        CorrectiveAng = Angle(2.6, 0, 0),
        InstalledEles = {"rail"}
    },
		{
        PrintName = "Muzzle",
        DefaultAttName = "Standard Muzzle",
        Slot = {"halo_muzzle"},
        Bone = "gun",
        Offset = {
            vpos = Vector(22, 0, 0.85),
            vang = Angle(0, 0, -90),
            wpos = Vector(30.3, 2.75, -6.8),
            wang = Angle(-10, 0, 180)
        },
		VMScale = Vector(1, 1, 1),
    },
	{
        PrintName = "Tactical",
        Slot = "tac",
        Bone = "gun",
        Offset = {
            vpos = Vector(17, 0, 0.25), -- offset that the attachment will be relative to the bone
            vang = Angle(0, 0, 0),
            wpos = Vector(15.95, 1.7, -4.15),
            wang = Angle(-13, 0, -87.7)
        },
    },
    {
        PrintName = "Ammo Type",
        Slot = "ammo_halo"
    },
    {
        PrintName = "Perk",
        Slot = {"perk"},
    },
    {
        PrintName = "Charm",
        Slot = "charm",
        FreeSlot = true,
        Bone = "hood", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vpos = Vector(0, -1.1, 0), -- offset that the attachment will be relative to the bone
            vang = Angle(0, 0, 12),
            wpos = Vector(7.03, 1.7, -3.85),
            wang = Angle(-10, 0, 180)
        },
    },
	{
        PrintName = "Model",
        Slot = {"skin_h3car"},
        DefaultAttName = "Halo 3",
        FreeSlot = true
    },
	{
        PrintName = "Skins",
        Slot = {"skin_h3cars","skin_halouniversal"},
        DefaultAttName = "Factory Default",
        FreeSlot = true
    },
	{
        PrintName = "Passive",
        Slot = {"halo_passive"},
		Installed = "passive_halo_prec_wep_mult",
		Integral = true
    },
}

SWEP.Animations = {
    ["idle"] = {
        Source = "idle1",
        Time = 99/30
    },
	["idle_sights"] = {
		Source = "aim",
	},
	["enter_sight"] = {
		Source = "aim",
	},
	["exit_sight"] = {
		Source = "aimout",
	},
	["exit_inspect"] = {
		Source = "fidget",
	},
    ["draw"] = {
        Source = "draw",
		Time = 18/30,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.25,
    },
    ["fire"] = {
        Source = { "fire1", "fire2", "fire3" },
        Time = 8/30,
    },
	["bash"] = {
		Source = "melee",
		Time = 29/30,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.8,
    },
    ["reload"] = {
        Source = "reload",
        Time = 68/30,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Checkpoints = {00, 08, 45, 58},
        FrameRate = 30,
        LHIK = true,
        LHIKIn = 1,
        LHIKOut = 0.4,
    },
    ["reload_empty"] = {
        Source = "reload",
        Time = 68/30,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Checkpoints = {00, 08, 45, 58},
        FrameRate = 30,
        LHIK = true,
        LHIKIn = 1,
        LHIKOut = 0.4,
    },
}

if engine.ActiveGamemode() == "nzombies" then
SWEP.Attachments = nil
end

-- nZombies Stuff
SWEP.NZWonderWeapon		= false	-- Is this a Wonder-Weapon? If true, only one player can have it at a time. Cheats aren't stopped, though.
--SWEP.NZRePaPText		= "your text here"	-- When RePaPing, what should be shown? Example: Press E to your text here for 2000 points.
SWEP.NZPaPName				= "Type-69 Carbang"
--SWEP.NZPaPReplacement 	= ""	-- If Pack-a-Punched, replace this gun with the entity class shown here.
SWEP.NZPreventBox		= false	-- If true, this gun won't be placed in random boxes GENERATED. Users can still place it in manually.
SWEP.NZTotalBlackList	= false	-- if true, this gun can't be placed in the box, even manually, and can't be bought off a wall, even if placed manually. Only code can give this gun.

SWEP.Primary.MaxAmmo = 90
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
self.PrintName = "Type-69 Carbang"
self.MagExtender = true
self.ActivateElements = {"extendedmag"}
self.Primary.MaxAmmo = 100
self.Damage = 30
self.DamageMin = 30
self.Delay = 60 / 300
self.Firemodes = {
    {
        Mode = 2,
    },
    {
        Mode = 0
    }
}
return true
end