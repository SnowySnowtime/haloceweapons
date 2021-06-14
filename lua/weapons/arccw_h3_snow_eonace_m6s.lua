SWEP.Base = "arccw_base"
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ArcCW - Halo 3" -- edit this if you like
SWEP.AdminOnly = false

SWEP.PrintName = "Automag"
SWEP.TrueName = "M6C/SOCOM"
SWEP.Trivia_Class = "Pistol"
SWEP.Trivia_Desc = "The M6C/SOCOM variant is a special issued handgun to the UNSC's special operations units. The M6C/SOCOM variant has an integrated sound suppressor, and muzzle brake. It is the secondary weapon of special forces Orbital Drop Shock Troopers and is used in operations that rely on stealth rather than direct engagements. In lieu of the KFA-2 sight used on the M6D PDWS, the M6C/SOCOM utilizes the VnSLS/V 6E smart linked 4× scope, enabling the user to eliminate targets at long range while incurring limited recoil due to the integral sound suppressor and compensator. It has a considerably high rate of fire with an long effective range, being able to hit a target accurately at about fifty meters. The M6C/SOCOM is, like its M6C counterpart, weaker than the standard-issue M6G PDWS due to lower efficiency against shielded and heavily armored targets."
SWEP.Trivia_Manufacturer = "Misriah Armory"
SWEP.Trivia_Calibre = "12.7x40mmn M228 SAP-HP"
SWEP.Trivia_Mechanism = "Semi-Auto"
SWEP.Trivia_Country = "never heard of her"
SWEP.Trivia_Year = 2415

SWEP.Slot = 1

if GetConVar("arccw_truenames"):GetBool() then SWEP.PrintName = SWEP.TrueName end

SWEP.UseHands = true

SWEP.ViewModel = "models/snowysnowtime/eonace/c_hum_automag.mdl"
SWEP.WorldModel = "models/snowysnowtime/eonace/w_automag.mdl"
SWEP.ViewModelFOV = 70

--  You will need this for the journey ahead
--  Probably should set this to your first mode
	SWEP.Recoil = 0.3
	SWEP.RecoilSide = 0.3
	SWEP.Damage = 25
	SWEP.DamageMin = 15
	SWEP.AccuracyMOA = 0.01
	SWEP.HipDispersion = 2
	SWEP.JumpDispersion = 0
	SWEP.ChamberSize = 0

local balance = {
    [0] = {
        -- HaloCW
        Recoil = 0.3,
        RecoilSide = 0.3,
        Damage = 15,
        DamageMin = 15,
        AccuracyMOA = 0.01,
        HipDispersion = 0.001,
        JumpDispersion = 0,
        ChamberSize = 0,
    },
    [1] = {
        -- halo purist
        Recoil = 0,
        RecoilSide = 0,
        Damage = 15,
        DamageMin = 15,
        JumpDispersion = 0,
        HipDispersion = 0,
        MoveDispersion = 0,
        ChamberSize = 0,
    },
    [2] = {
        -- arccw
        Recoil = 0.2,
        RecoilSide = 0.2,
        Damage = 17,
        DamageMin = 17,
        AccuracyMOA = 0.05,
        HipDispersion = 0.05,
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

SWEP.Range =  100 -- in METRES
SWEP.Penetration = 100
SWEP.DamageType = DMG_BULLET
SWEP.ShootEntity = nil -- entity to fire, if any
SWEP.MuzzleVelocity = 427 -- projectile or phys bullet muzzle velocity
-- IN M/S

SWEP.Primary.ClipSize = 12 -- DefaultClip is automatically set.
SWEP.ExtendedClipSize = 18
SWEP.ReducedClipSize = 8

SWEP.Delay = 60 / 500 -- 60 / RPM.
SWEP.Num = 1 -- number of shots per trigger pull.
SWEP.Firemodes = {
    {
        Mode = 1,
    },
    {
        Mode = 0
    }
}

SWEP.NPCWeaponType = {"weapon_357","weapon_pistol"}
SWEP.NPCWeight = 25

SWEP.ManualAction = false


SWEP.Primary.Ammo = "357" -- what ammo type the gun uses
SWEP.MagID = "hs338" -- the magazine pool this gun draws from

SWEP.ShootVol = 140 -- volume of shoot sound
SWEP.ShootPitch = 100 -- pitch of shoot sound

SWEP.ShootSound = "h3_magnumfire"
SWEP.ShootSoundSilenced = "hcesup"
SWEP.DistantShootSound = "m6d_lod"

SWEP.WorldModelOffset = {
	pos = Vector(16, 1.5, 0),
	ang = Angle(180, 0, 0)
}

SWEP.TracerNum = 1 -- tracer every X
SWEP.Tracer = nil
SWEP.MuzzleEffect = "astw2_halo_3_muzzle_magnum"
SWEP.ShellModel = "models/shells/shell_338mag.mdl"
SWEP.ShellPitch = 80
SWEP.ShellScale = 1.5

SWEP.MuzzleEffectAttachment = 1 -- which attachment to put the muzzle on
SWEP.CaseEffectAttachment = 2 -- which attachment to put the case effect on

SWEP.SightTime = 0.15
SWEP.SpeedMult = 0.95
SWEP.SightedSpeedMult = 0.25
SWEP.MeleeTime = 1
SWEP.MeleeSwingSound = ""
SWEP.MeleeMissSound = ""
SWEP.MeleeHitSound = "hceworld"
SWEP.MeleeHitNPCSound = "hceslap"

SWEP.BulletBones = { -- the bone that represents bullets in gun/mag
    -- [0] = "bulletchamber",
    -- [1] = "bullet1"
}

SWEP.ProceduralRegularFire = false
SWEP.ProceduralIronFire = false

SWEP.CaseBones = {}

SWEP.IronSightStruct = {
    Pos = Vector(-4.02, 2, 1.5),
    Ang = Angle(0, 0.05, 0),
    Magnification = 1.5,
}

SWEP.HoldtypeHolstered = "normal"
SWEP.HoldtypeActive = "pistol"
SWEP.HoldtypeSights = "revolver"

SWEP.RejectAttachments = {
    ["ammo_cerberus"] = true, -- fuck cerberus
    ["acwatt_perk_fastbolt"] = true, -- whats the point of this on my weapons?
    ["acwatt_perk_beefficient"] = true, -- never heard of her
}

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_PISTOL

SWEP.ActivePos = Vector(0, 0, 0)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.HolsterPos = Vector(0, -6, -5)
SWEP.HolsterAng = Angle(40, 0, 0)

SWEP.BarrelOffsetSighted = Vector(0, 0, -1)
SWEP.BarrelOffsetHip = Vector(2, 0, -2)

SWEP.CustomizePos = Vector(6.824, -3, -2.897)
SWEP.CustomizeAng = Angle(12.149, 30.547, 0)

SWEP.BarrelLength = 5
SWEP.AttachmentElements = {
    ["magnum"] = {
        VMBodygroups = {{ind = 0, bg = 1}},
        WMBodygroups = {{ind = 0, bg = 1}},
    },
}

SWEP.ExtraSightDist = 10

SWEP.Hook_NameChange = function(wep, name)

	if wep:GetBuff_Override("SOCOM") then
        return "M6C/SOCOM"
    else return "M6C PDWS"
    end
end

SWEP.Attachments = {
	{
        PrintName = "Optic", -- print name
        DefaultAttName = "Iron Sights",
        Slot = {"optic_lp", "m6scope"}, -- what kind of attachments can fit here, can be string or table
        Bone = "slide", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vpos = Vector(1, 0, 0.7), -- offset that the attachment will be relative to the bone
            vang = Angle(0, 0, 0),
            wpos = Vector(3.1, 0.44, -4.4),
            wang = Angle(-13, 0, 180)
        },
    },
	{
        PrintName = "Muzzle",
        DefaultAttName = "Standard Muzzle",
        Slot = {"muzzle"},
        Bone = "gun",
        Offset = {
            vpos = Vector(6, 0, 2.7),
            vang = Angle(0, 0, 0),
            wpos = Vector(10, 0.44, -5),
            wang = Angle(-13, 0, 180)
        },
		VMScale = Vector(0.7, 0.7, 0.7),
		ExcludeFlags = {"halo_m6s"},
    },
    {
        PrintName = "Underbarrel",
        Slot = {"style_pistol"},
        Bone = "gun",
        Offset = {
            vpos = Vector(11, -0.3, 1.8),
            vang = Angle(0, 0, 0),
            wpos = Vector(13, 0.6, -3.5),
            wang = Angle(-10, 0, 180),
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
        Slot = {"fcg","fcg_smg"}
    },
	{
        PrintName = "Tactical",
        Slot = "tac",
        Bone = "gun",
        Offset = {
            vpos = Vector(5.5, 0, 1.5), -- offset that the attachment will be relative to the bone
            vang = Angle(0, 0, 0),
            wpos = Vector(9.1, 0.44, -3.4),
            wang = Angle(-13, 0, 180)
        },
		VMScale = Vector(0.5, 0.5, 0.5),
		WMScale = Vector(0.5, 0.5, 0.5),
    },
    {
        PrintName = "Ammo Type",
        Slot = {"ammo_bullet", "ammo_hce"}
    },
    {
        PrintName = "Perk",
        Slot = "perk"
    },
    {
        PrintName = "Charm",
        Slot = "charm",
        FreeSlot = true,
        Bone = "gun", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vpos = Vector(3.25, -0.6, 2.7), -- offset that the attachment will be relative to the bone
            vang = Angle(0, -1, 5),
            wpos = Vector(6, 2.4, -3.5),
            wang = Angle(-10.393, 0, 180)
        },
		VMScale = Vector(0.7, 0.7, 0.7),
    },
	{
        PrintName = "Variant",
        DefaultAttName = "M6C",
		Bone = "gun", -- relevant bone any attachments will be mostly referring to
        Slot = {"override_s"},
		Offset = {
            vpos = Vector(0, 0, 0), -- offset that the attachment will be relative to the bone
            vang = Angle(0, 0, 0),
            wpos = Vector(0, 0, 0),
            wang = Angle(0, 0, 0)
        },
		Installed = "h3_m6s"
    },
}

SWEP.Hook_NameChange = function(wep, name)

    if wep:GetBuff_Override("SOCOM") and GetConVar("arccw_truenames"):GetBool() then
        return "M6C/SOCOM"
    elseif GetConVar("arccw_truenames"):GetBool() then return "M6C PDWS"
    end
end

SWEP.Animations = {
    ["idle"] = {
        Source = "idle",
        Time = 88/30,
    },
    ["idle_sights"] = {
        Source = "aim",
        Time = 88/30,
    },
	["enter_sight"] = {
		Source = "aim",
        Time = 88/30,
	},
	["exit_sight"] = {
		Source = "aim",
        Time = 88/30,
	},
	["exit_inspect"] = {
		Source = "pose1",
		Time = 115/30,
	},
	["fire_iron"] = {
        Source = { "fire_rand1","fire_rand2","fire_rand3" },
        Time = 5/30,
    },
    ["draw"] = {
        Source = "draw",
        Time = 20/30,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.25,
    },
	["holster"] = {
		Source = "holster",
		Time = 3/30,
	},
    ["fire"] = {
        Source = { "fire_rand1","fire_rand2","fire_rand3" },
        Time = 5/30,
    },
	["bash"] = {
        Source = "melee",
		Time = 28/30,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.6,
    },
    ["reload"] = {
        Source = "reload",
        Time =  46/30,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0.5,
    },
    ["reload_empty"] = {
        Source = "reload",
        Time =  46/30,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0.5,
    },
}

-- nZombies Stuff
SWEP.NZWonderWeapon		= false	-- Is this a Wonder-Weapon? If true, only one player can have it at a time. Cheats aren't stopped, though.
--SWEP.NZRePaPText		= "your text here"	-- When RePaPing, what should be shown? Example: Press E to your text here for 2000 points.
SWEP.NZPaPName				= "M666C Helljumper"
--SWEP.NZPaPReplacement 	= ""	-- If Pack-a-Punched, replace this gun with the entity class shown here.
SWEP.NZPreventBox		= false	-- If true, this gun won't be placed in random boxes GENERATED. Users can still place it in manually.
SWEP.NZTotalBlackList	= false	-- if true, this gun can't be placed in the box, even manually, and can't be bought off a wall, even if placed manually. Only code can give this gun.

SWEP.Primary.MaxAmmo = 120
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
self.PrintName = "M666C Helljumper"
self.MagExtender = true
self.Primary.MaxAmmo = 180
self.Damage = 60
self.DamageMin = 60
self.Delay = 60 / 800
self.Firemodes = {
    {
        Mode = -3,
		RunawayBurst = true,
		PostBurstDelay = 0.255,
    },
	{
        Mode = 1,
    },
    {
        Mode = 0,
    }
}
return true
end