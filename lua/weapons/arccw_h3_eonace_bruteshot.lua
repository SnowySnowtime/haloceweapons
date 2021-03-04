SWEP.Base = "arccw_base"
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ArcCW - Halo 3" -- edit this if you like
SWEP.AdminOnly = false

SWEP.PrintName = "Brute Shot"
SWEP.TrueName = "Type-25 Brute Shot"
SWEP.Trivia_Class = "Grenade Launcher"
SWEP.Trivia_Desc = ""
SWEP.Trivia_Manufacturer = "Sacred Promissory"
SWEP.Trivia_Calibre = "Type-25 Exotic/High-Explosive Antipersonnel Grenade"
SWEP.Trivia_Mechanism = "Semi-Automatic"

SWEP.Slot = 3

if GetConVar("arccw_truenames"):GetBool() then SWEP.PrintName = SWEP.TrueName end

SWEP.UseHands = true

--  You will need this for the journey ahead
--  Probably should set this to your first mode
	SWEP.Recoil = 1
	SWEP.RecoilSide = 0.5
	SWEP.Damage = 25
	SWEP.DamageMin = 15
	SWEP.AccuracyMOA = 0
	SWEP.HipDispersion = 0
	SWEP.JumpDispersion = 0
	SWEP.ChamberSize = 0

local balance = {
    [0] = {
        -- HaloCW
        Recoil = 0.3,
        RecoilSide = 0.3,
        Damage = 20,
        DamageMin = 20,
        AccuracyMOA = 0.01,
        HipDispersion = 125,
        JumpDispersion = 0,
        ChamberSize = 0,
    },
    [1] = {
        -- halo purist
        Recoil = 0,
        RecoilSide = 0,
        Damage = 9,
        DamageMin = 9,
        JumpDispersion = 0,
        HipDispersion = 0,
        MoveDispersion = 0,
        ChamberSize = 0,
    },
    [2] = {
        -- arccw
        Recoil = 0.2,
        RecoilSide = 0.2,
        Damage = 20,
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

SWEP.ViewModel = "models/snowysnowtime/eonace/c_hum_bruteshot.mdl"
SWEP.WorldModel = "models/snowysnowtime/eonace/w_bruteshot.mdl"
SWEP.ViewModelFOV = 70

SWEP.Range =  20 -- in METRES
SWEP.Penetration = 100
SWEP.DamageType = DMG_BULLET
SWEP.ShootEntity = "arccw_halo3_bruteshot_nade" -- entity to fire, if any
SWEP.MuzzleVelocity = 2000 -- projectile or phys bullet muzzle velocity
-- IN M/S

SWEP.TracerNum = 1 -- tracer every X
SWEP.Tracer = "" -- tracer every X
SWEP.TracerCol = Color(25, 255, 25)
SWEP.TracerWidth = 3

SWEP.Primary.ClipSize = 6 -- DefaultClip is automatically set.
SWEP.ExtendedClipSize = 8
SWEP.ReducedClipSize = 4

SWEP.Delay = 60 / 160 -- 60 / RPM.
SWEP.Num = 1 -- number of shots per trigger pull.
SWEP.Firemodes = {
    {
        Mode = 1,
    },
    {
        Mode = 0,
    }
}

SWEP.NPCWeaponType = {"weapon_ar2","weapon_smg"}
SWEP.NPCWeight = 25

SWEP.ManualAction = false

SWEP.Primary.Ammo = "357" -- what ammo type the gun uses
SWEP.MagID = "hs338" -- the magazine pool this gun draws from

SWEP.ShootVol = 140 -- volume of shoot sound
SWEP.ShootPitch = 100 -- pitch of shoot sound

SWEP.ShootSound = "h3.bruteshot_fire"
SWEP.ShootSoundSilenced = "hcesup"
SWEP.DistantShootSound = "spike_lod"

SWEP.MuzzleEffect = "astw2_halo_3_muzzle_spiker"
SWEP.ImpactEffect = "effect_astw2_halo3_impact_spiker"
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
    Pos = Vector(-5.7, -3, -0.4),
    Ang = Angle(-1.8, -0.45, 0.8),
    Magnification = 1.5,
}

SWEP.HoldtypeHolstered = "passive"
SWEP.HoldtypeActive = "ar2"
SWEP.HoldtypeSights = "rpg"

SWEP.RejectAttachments = {
    ["ammo_cerberus"] = true, -- fuck cerberus
    ["acwatt_perk_fastbolt"] = true, -- whats the point of this on my weapons?
    ["acwatt_perk_beefficient"] = true, -- never heard of her
}

SWEP.MeleeTime = 1.2

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_RPG

SWEP.ActivePos = Vector(0, -3, 0)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.HolsterPos = Vector(2, -6, -3)
SWEP.HolsterAng = Angle(-2, 40, -15)

SWEP.BarrelOffsetSighted = Vector(0, 0, -1)
SWEP.BarrelOffsetHip = Vector(2, 0, -2)

SWEP.CustomizePos = Vector(5, -9, -4)
SWEP.CustomizeAng = Angle(12.149, 30.547, 0)

SWEP.BarrelLength = 35

SWEP.ExtraSightDist = 10

SWEP.Attachments = {
	{
        PrintName = "Optic", -- print name
        DefaultAttName = "No Sights",
        Slot = {"optic", "optic_lp",}, -- what kind of attachments can fit here, can be string or table
        Bone = "gun", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vpos = Vector(0.5, -4.1, 0), -- offset that the attachment will be relative to the bone
            vang = Angle(0, 180, 90),
            wpos = Vector(7.42, 0.43, -7.95),
            wang = Angle(-12, -1.155, 180)
        },
    },
	{
        PrintName = "Muzzle",
        DefaultAttName = "Standard Muzzle",
        Slot = {"muzzle"},
        Bone = "gun",
        Offset = {
            vpos = Vector(-10, -2, 0),
            vang = Angle(0, 180, 90),
            wpos = Vector(20.2, 0.7, -7.5),
            wang = Angle(-12, -1.155, 180)
        },
		VMScale = Vector(1, 0.9, 0.9),
    },
    {
        PrintName = "Underbarrel",
        Slot = {"foregrip", "bipod", "ubgl"},
        Bone = "gun",
        Offset = {
            vpos = Vector(-3, 1.8, 0),
            vang = Angle(0, 180, 90),
            wpos = Vector(14, 0.65, -2),
            wang = Angle(-14, -1.155, 183),
        },        
    },
    {
        PrintName = "Grip",
        Slot = "grip",
        DefaultAttName = "Standard Grip"
    },    
    {
        PrintName = "Stock",
        Slot = "stock",
        DefaultAttName = "Standard Stock"
    },
    {
        PrintName = "Firetype",
        Slot = {"fcg"}
    },
    {
        PrintName = "Tactical",
        Slot = "tac",
        Bone = "gun",
        Offset = {
            vpos = Vector(-3.5, -2, 1.7), -- offset that the attachment will be relative to the bone
            vang = Angle(0, 180, 180),
            wpos = Vector(13.95, 2.3, -5.95),
            wang = Angle(-13, -1.155, -87),
        },
        VMScale = Vector(0.7, 0.7, 0.7),
		WMScale = Vector(0.7, 0.7, 0.7),
    },
    {
        PrintName = "Perk",
        Slot = {"perk","go_perk"}
    },
    {
        PrintName = "Charm",
        Slot = "charm",
        FreeSlot = true,
        Bone = "gun", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vpos = Vector(2.5, -1.2, 1.4), -- offset that the attachment will be relative to the bone
            vang = Angle(0, 180, 90),
            wpos = Vector(8.1, 1.8, -3.85),
            wang = Angle(-12, -1.155, 183)
        },
		VMScale = Vector(0.7, 0.7, 0.7),
		WMScale = Vector(0.7, 0.7, 0.7),
    },
}

SWEP.Animations = {
    ["idle"] = {
        Source = "idle",
        Time = 98/30
    },
	["idle_sights"] = {
		Source = "aim",
		Time = 1/30,
	},
	["enter_sight"] = {
		Source = "aim",
		Time = 1/30,
	},
	["exit_sight"] = {
		Source = "aim",
		Time = 1/30,
	},
	["enter_inspect"] = {
		Source = "pose1",
		Time = 114/30,
	},
	["exit_inspect"] = {
		Source = "pose2",
		Time = 118/30,
	},
	["fire_iron"] = {
        Source = { "fire1", "fire2", "fire3" },
		Time = 28/30,
    },
    ["draw"] = {
        Source = "deploy",
        Time = 18/30,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.25,
    },
	["holster"] = {
		Source = "holster",
		Time = 4/30,
	},
    ["fire"] = {
        Source = { "fire1", "fire2", "fire3" },
        Time = 28/30,
    },
	["bash"] = {
        Source = { "melee1", "melee2", },
		Time = 27/30,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.6,
    },
    ["reload"] = {
        Source = "reload",
        Time = 94/30,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        Checkpoints = {7, 29, 43},
        FrameRate = 30,
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0.5,
    },
    ["reload_empty"] = {
        Source = "reload",
        Time = 94/30,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        Checkpoints = {7, 29, 43},
        FrameRate = 30,
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0.5,
    },
}

if engine.ActiveGamemode() == "nzombies" then
SWEP.Attachments = nil
end

-- nZombies Stuff
SWEP.NZWonderWeapon		= false	-- Is this a Wonder-Weapon? If true, only one player can have it at a time. Cheats aren't stopped, though.
--SWEP.NZRePaPText		= "your text here"	-- When RePaPing, what should be shown? Example: Press E to your text here for 2000 points.
SWEP.NZPaPName				= "Javelin"
--SWEP.NZPaPReplacement 	= ""	-- If Pack-a-Punched, replace this gun with the entity class shown here.
SWEP.NZPreventBox		= false	-- If true, this gun won't be placed in random boxes GENERATED. Users can still place it in manually.
SWEP.NZTotalBlackList	= false	-- if true, this gun can't be placed in the box, even manually, and can't be bought off a wall, even if placed manually. Only code can give this gun.

SWEP.Primary.MaxAmmo = 160
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
self.PrintName = "Javelin"
self.Primary.ClipSize = 20
self.Primary.MaxAmmo = 120
self.Damage = 200
self.DamageMin = 200
self.Delay = 60 / 250
return true
end