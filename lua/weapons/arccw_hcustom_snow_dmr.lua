SWEP.Base = "arccw_base"
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ArcCW - Halo Custom Edition" -- edit this if you like
SWEP.AdminOnly = false

SWEP.PrintName = "DMR"
SWEP.TrueName = "M393 DMR"
SWEP.Trivia_Class = "Designated Marksman Rifle"
SWEP.Trivia_Desc = "The M393 Designated Marksman Rifle, more commonly known as the DMR, is a long-range infantry firearm and a successor to the M392 Designated Marksman Rifle. While the introduction of the BR55 Battle Rifle did see it supersede the M392 Designated Marksman Rifle as the standard armament within the UNSC Navy, this only resulted in the latter series being retooled to suit a more niche combat role, beginning with introduction of the M393 Designated Marksman Rifle."
SWEP.Trivia_Manufacturer = "Misriah Armory"
SWEP.Trivia_Calibre = "7.62x51mm NATO"
SWEP.Trivia_Mechanism = "Semi-Auto"
SWEP.Trivia_Country = "never heard of her"
SWEP.Trivia_Year = 2460

SWEP.Slot = 3

if GetConVar("arccw_truenames"):GetBool() then SWEP.PrintName = SWEP.TrueName end

SWEP.UseHands = true

SWEP.ViewModel = "models/snowysnowtime/spv3/c_dmr.mdl"
SWEP.WorldModel = "models/snowysnowtime/spv3/c_dmr.mdl"
SWEP.ViewModelFOV = 70

    SWEP.Recoil = 1
	SWEP.RecoilSide = 0.2
	SWEP.Damage = 35
	SWEP.DamageMin = 35
	SWEP.AccuracyMOA = 0.04
	SWEP.HipDispersion = 20
	SWEP.MoveDispersion = 0
	SWEP.JumpDispersion = 0
	SWEP.ChamberSize = 0

local balance = {
    [0] = {
        -- HaloCW
        Recoil = 1,
        RecoilSide = 0.2,
        Damage = 35,
        DamageMin = 35,
        AccuracyMOA = 0.04,
        HipDispersion = 20,
        MoveDispersion = 0,
        JumpDispersion = 0,
        ChamberSize = 0,
    },
    [1] = {
        -- halo purist
        Recoil = 0,
        RecoilSide = 0,
        Damage = 35,
        DamageMin = 35,
        AccuracyMOA = 0,
        HipDispersion = 10,
        MoveDispersion = 0,
        JumpDispersion = 0,
        ChamberSize = 0,
    },
    [2] = {
        -- arccw
        Recoil = 1,
        RecoilSide = 0.2,
        Damage = 35,
        DamageMin = 35,
        AccuracyMOA = 0.06,
        HipDispersion = 100,
        MoveDispersion = 350,
        ChamberSize = 1,
    }
}

function SWEP:ArcCW_Halo_Setup()
    local val = GetConVar("arccw_hce_bal"):GetInt()
    for i, v in pairs(balance[val]) do
        self[i] = v
    end
end

DEFINE_BASECLASS("arccw_base")
function SWEP:Initialize()
    BaseClass.Initialize(self)

    self:ArcCW_Halo_Setup()
end

SWEP.Range =  350 -- in METRES
SWEP.Penetration = 100
SWEP.DamageType = DMG_BULLET
SWEP.ShootEntity = nil -- entity to fire, if any
SWEP.MuzzleVelocity = 6000 -- projectile or phys bullet muzzle velocity
-- IN M/S

SWEP.AlwaysPhysBullet = true

SWEP.Primary.ClipSize = 15 -- DefaultClip is automatically set.
SWEP.ExtendedClipSize = 20
SWEP.ReducedClipSize = 7

SWEP.Delay = 60 / 175 -- 60 / RPM.
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


SWEP.Primary.Ammo = "AR2" -- what ammo type the gun uses
SWEP.MagID = "hs338" -- the magazine pool this gun draws from

SWEP.ShootVol = 140 -- volume of shoot sound
SWEP.ShootPitch = 100 -- pitch of shoot sound

SWEP.ShootSound = "h3.dmr_fire"
SWEP.ShootSoundSilenced = "hcesup"
SWEP.DistantShootSound = nil -- does not exist -- "m6d_lod"

SWEP.TracerNum = 1 -- tracer every X
SWEP.Tracer = nil
SWEP.MuzzleEffect = "astw2_halo_ce_muzzle_pistol"
SWEP.ImpactEffect = "hce_pistol_impact"
SWEP.ShellModel = "models/shells/shell_338mag.mdl"
SWEP.ShellPitch = 80
SWEP.ShellScale = 1.5

SWEP.MuzzleEffectAttachment = 1 -- which attachment to put the muzzle on
SWEP.CaseEffectAttachment = 2 -- which attachment to put the case effect on

SWEP.SightTime = 0.35
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
    Pos = Vector(0, 0, 2.99),
    Ang = Angle(0.792, 0.017, 0),
    Magnification = 1.5,
}

SWEP.HoldtypeHolstered = "passive"
SWEP.HoldtypeActive = "ar2"
SWEP.HoldtypeSights = "rpg"

SWEP.MirrorWorldModel = true


SWEP.WorldModelOffset = {
    pos        =    Vector(-7.7, 5.55, -5.5),
    ang        =    Angle(-12, 0, 180),
    bone    =    "ValveBiped.Bip01_R_Hand",
    scale   =   1
}

SWEP.RejectAttachments = {
    ["ammo_cerberus"] = true, -- fuck cerberus
    ["acwatt_perk_fastbolt"] = true, -- whats the point of this on my weapons?
    ["acwatt_perk_beefficient"] = true, -- never heard of her
}

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2

SWEP.ActivePos = Vector(0, 0, 1.5)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.HolsterPos = Vector(3, -3, 1)
SWEP.HolsterAng = Angle(-10, 30, -10)

SWEP.BarrelOffsetSighted = Vector(0, 0, -1)
SWEP.BarrelOffsetHip = Vector(2, 0, -2)

SWEP.CustomizePos = Vector(0, 0, -0.7)
SWEP.CustomizeAng = Angle(0, 0, 0)

SWEP.BarrelLength = 17
SWEP.AttachmentElements = {
	["irons"] = {
        VMBodygroups = {{ind = 3, bg = 1}},
        WMBodygroups = {{ind = 3, bg = 1}},
    },
	["ammocounter"] = {
        VMBodygroups = {{ind = 2, bg = 1}},
        WMBodygroups = {{ind = 2, bg = 1}},
    },
	["how"] = {
        VMBodygroups = {{ind = 1, bg = 1}},
        WMBodygroups = {{ind = 1, bg = 1}},
    },
	["the"] = {
        VMBodygroups = {{ind = 3, bg = 0}},
        WMBodygroups = {{ind = 3, bg = 0}},
    },
}

SWEP.ExtraSightDist = 7

SWEP.Attachments = {
	{
        PrintName = "Optic", -- print name
        DefaultAttName = "10x Scope",
        Slot = {"optic", "optic_lp"}, -- what kind of attachments can fit here, can be string or table
        Bone = "frame gun", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vpos = Vector(5.255, 0.01, 5.277), -- offset that the attachment will be relative to the bone
            vang = Angle(0, 0, 0),
            wpos = Vector(8.655, 1.015, -6.8),
            wang = Angle(-12, 0, 180)
        },
		Installed = "optic_dmr_scope",
		InstalledEles = {"irons","ammocounter"},
    },
	{
        PrintName = "Muzzle",
        DefaultAttName = "Standard Muzzle",
        Slot = {"muzzle"},
        Bone = "frame gun",
        Offset = {
            vpos = Vector(26.1, 0, 4),
            vang = Angle(0, 0, 0),
            wpos = Vector(29, 1.025, -9.7),
            wang = Angle(-12, 0, 180)
        },
    },
	{
        PrintName = "Underbarrel",
        Slot = {"foregrip", "bipod"},
        Bone = "frame gun",
        Offset = {
            vpos = Vector(11, -0.4, 2.5),
            vang = Angle(0, 0, 0),
            wpos = Vector(15, 0.6, -4.9),
            wang = Angle(-12, 0, 180),
        },
		InstalledEles = {"how"},
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
        Bone = "frame gun",
        Offset = {
            vpos = Vector(14, -0.65, 3), -- offset that the attachment will be relative to the bone
            vang = Angle(0, 0, 90),
            wpos = Vector(17.85, 2, -6.3),
            wang = Angle(-12, 0, -90)
        },
    },
    {
        PrintName = "Perk",
        Slot = {"perk","go_perk"}
    },
    {
        PrintName = "Charm",
        Slot = "charm",
        FreeSlot = true,
        Bone = "frame gun", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vpos = Vector(5, -0.75, 4.3), -- offset that the attachment will be relative to the bone
            vang = Angle(0, 0, 10),
            wpos = Vector(8.65, 1.8, -5.65),
            wang = Angle(-10.393, 0, 180)
        },
		VMScale = Vector(0.7, 0.7, 0.7),
    },
	{
        PrintName = "Physbullet Colors",
        Slot = {"ammo_dmr_halo"},
		Installed = "ammo_tracer_gofork"
    },
	{
        PrintName = "Passive",
        Slot = {"halo_passive"},
		Installed = "passive_halo_prec_wep_mult_increased",
		Integral = true
    },
}

SWEP.Animations = {
    ["idle"] = {
        Source = "idle",
        Time = 121/30
    },
	["idle_sights"] = {
		Source = "aim",
	},
	["enter_sight"] = {
		Source = "aim",
	},
	["exit_sight"] = {
		Source = "aim",
	},
	["fire_iron"] = {
        Source = "aim",
    },
	["enter_inspect"] = {
		Source = "fidget",
		Time = 40/30,
	},
	["idle_inspect"] = {
		Source = "fidget_loop",
		Time = 80/30,
	},
	["exit_inspect"] = {
		Source = "fidget_end",
		Time = 81/30,
	},
    ["draw"] = {
        Source = "draw",
        Time = 34/30,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.25,
    },
    ["fire"] = {
        Source = "fire",
        Time = 14/30,
    },
	["bash"] = {
        Source = "melee",
		Time = 44/30,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.6,
    },
    ["reload"] = {
        Source = "reload",
        Time = 64/30,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        Checkpoints = {24, 33, 51, 58, 62, 74, 80},
		SoundTable = {{s = "h3.dmr_reload", t = 0.01},{s = "h3.dmr_reload2", t = 1.1}},
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0.5,
    },
    ["reload_empty"] = {
        Source = "reload",
        Time = 64/30,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        Checkpoints = {24, 33, 51},
		SoundTable = {{s = "h3.dmr_reload", t = 0.01},{s = "h3.dmr_reload2", t = 1.1}},
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0.5,
    },
}