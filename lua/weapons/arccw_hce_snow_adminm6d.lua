SWEP.Base = "arccw_base"
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ArcCW - Halo Combat Evolved" -- edit this if you like
SWEP.AdminOnly = true

SWEP.PrintName = "The Halo 1 Pistol™"
SWEP.TrueName = "The Halo 1 Pistol™"
SWEP.Trivia_Class = "OH MY GOD"
SWEP.Trivia_Desc = "RUN FOR YOUR LIFE!!! HE'S GOT THE HALO 1 PISTOL!!! BARKJDGKJ"
SWEP.Trivia_Manufacturer = "Administration Incorporated"
SWEP.Trivia_Calibre = "Fuck-You"
SWEP.Trivia_Mechanism = "Semi-Auto"
SWEP.Trivia_Year = 2460

SWEP.Slot = 1

if GetConVar("arccw_truenames"):GetBool() then SWEP.PrintName = SWEP.TrueName end

SWEP.UseHands = true

SWEP.MeleeSwingSound = ""
SWEP.MeleeMissSound = ""
SWEP.MeleeHitSound = "hceworld"
SWEP.MeleeHitNPCSound = "hceslap"

SWEP.ViewModel = "models/snowysnowtime/c_fp_cemagnum.mdl"
SWEP.WorldModel = "models/snowysnowtime/w_m6d.mdl"
SWEP.ViewModelFOV = 70

SWEP.Damage = 69420
SWEP.DamageMin = 69420 -- damage done at maximum range
SWEP.Range =  0 -- in METRES
SWEP.Penetration = 69420
SWEP.DamageType = DMG_BULLET
SWEP.ShootEntity = nil -- entity to fire, if any
SWEP.MuzzleVelocity = 69420 -- projectile or phys bullet muzzle velocity
-- IN M/S

SWEP.TracerNum = 1 -- tracer every X
SWEP.TracerName 	= "hce_sr_tracer"

SWEP.ChamberSize = 0-- how many rounds can be chambered.
SWEP.Primary.ClipSize = 12 -- DefaultClip is automatically set.
SWEP.ExtendedClipSize = 24
SWEP.ReducedClipSize = 8

SWEP.Recoil = 0.8
SWEP.RecoilSide = 0.8
SWEP.MeleeTime = 0.1

SWEP.Delay = 60 / 210 -- 60 / RPM.
SWEP.Num = 1 -- number of shots per trigger pull.
SWEP.Firemodes = {
    {
        Mode = 1,
    },
    {
        Mode = 0
    }
}
SWEP.NotForNPCs = true

SWEP.ManualAction = true

SWEP.AccuracyMOA = 0 -- accuracy in Minutes of Angle. There are 60 MOA in a degree.
SWEP.HipDispersion = 0 -- inaccuracy added by hip firing.
SWEP.MoveDispersion = 100

SWEP.Primary.Ammo = "357" -- what ammo type the gun uses
SWEP.MagID = "hs338" -- the magazine pool this gun draws from

SWEP.ShootVol = 140 -- volume of shoot sound
SWEP.ShootPitch = 100 -- pitch of shoot sound

SWEP.ShootSound = "hcea_magnumfire"
SWEP.ShootSoundSilenced = "hce/grenade_expl_1.wav"
SWEP.DistantShootSound = nil

SWEP.MuzzleEffect = "muzzleflash_5"
SWEP.ShellModel = "models/shells/shell_338mag.mdl"
SWEP.ShellPitch = 80
SWEP.ShellScale = 1.5

SWEP.MuzzleEffectAttachment = 1 -- which attachment to put the muzzle on
SWEP.CaseEffectAttachment = 2 -- which attachment to put the case effect on

SWEP.SightTime = 0.35
SWEP.SpeedMult = 0.95
SWEP.SightedSpeedMult = 0.25

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

SWEP.HoldtypeHolstered = "normal"
SWEP.HoldtypeActive = "pistol"
SWEP.HoldtypeSights = "revolver"

SWEP.RejectAttachments = {
}

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_RPG

SWEP.ActivePos = Vector(0, 0, 1)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.HolsterPos = Vector(2, -6, -4)
SWEP.HolsterAng = Angle(40, 0, 0)

SWEP.BarrelOffsetSighted = Vector(0, 0, -1)
SWEP.BarrelOffsetHip = Vector(2, 0, -2)

SWEP.BarrelLength = 17
SWEP.AttachmentElements = {
    ["cherry"] = {
        VMSkin = 1,
        WMSkin = 1,
    },
    ["desert"] = {
        VMSkin = 2,
        WMSkin = 2,
    },
    ["gold"] = {
        VMSkin = 3,
        WMSkin = 3,
    },
    ["greatjourney"] = {
        VMSkin = 5,
        WMSkin = 5,
    },
	["hazard"] = {
        VMSkin = 4,
        WMSkin = 4,
    },
	["toy"] = {
        VMSkin = 6,
        WMSkin = 6,
    },
	["woodlands"] = {
        VMSkin = 7,
        WMSkin = 7,
    },
	["anniv"] = {
        VMBodygroups = {{ind = 0, bg = 1}},
        WMBodygroups = {{ind = 0, bg = 1}},
    },
}

SWEP.ExtraSightDist = 15

SWEP.Attachments = {
	{
        PrintName = "Optic", -- print name
        DefaultAttName = "10x Scope",
        Slot = {"optic", "optic_lp"}, -- what kind of attachments can fit here, can be string or table
        Bone = "frame gun", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vpos = Vector(3, 0, 3.5), -- offset that the attachment will be relative to the bone
            vang = Angle(0, 0, 0),
            wpos = Vector(6, 2, -4.4),
            wang = Angle(-8.829, 0, 180)
        },
    },
	{
        PrintName = "Muzzle",
        DefaultAttName = "Standard Muzzle",
        Slot = {"muzzle"},
        Bone = "frame gun",
        Offset = {
            vpos = Vector(4, 0, 2.65),
            vang = Angle(0, 0, 0),
            wpos = Vector(8.1, 2, -3.6),
            wang = Angle(0, 0, 180)
        },
		VMScale = Vector(0.7, 0.7, 0.7),
    },
	{
        PrintName = "Underbarrel",
        Slot = {"style_pistol","bipod"},
        Bone = "frame gun",
        Offset = {
            vpos = Vector(3.5, -0, 2),
            vang = Angle(0, 0, 5),
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
        Bone = "frame gun",
        Offset = {
            vpos = Vector(3, -0.1, 3.64), -- offset that the attachment will be relative to the bone
            vang = Angle(0, 0, -90),
            wpos = Vector(6, 1.25, -3),
            wang = Angle(-8.829, -0.556, 90)
        },
		VMScale = Vector(0.1, 0.1, 0.1),
    },
    {
        PrintName = "Ammo Type",
        Slot = {"ammo_bullet", "ammo_hce"}
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
            vpos = Vector(3.25, -0.45, 2.8), -- offset that the attachment will be relative to the bone
            vang = Angle(0, 0, 10),
            wpos = Vector(6, 2.4, -3.5),
            wang = Angle(-10.393, 0, 180)
        },
		VMScale = Vector(0.7, 0.7, 0.7),
    },
	{
        PrintName = "Skin",
        Slot = {"skin_hcem6d","skin_halouniversal"},
        DefaultAttName = "Factory Default",
        FreeSlot = true
    },
}

SWEP.Animations = {
    ["idle"] = {
        Source = "idle",
        Time = 4
    },
	["exit_inspect"] = {
		Source = "fidget",
	},
	["fire_iron"] = {
        Source = "fire",
    },
    ["draw"] = {
        Source = "draw",
        Time = 1,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.25,
		SoundTable = {{s = "hce_deploymagnum", t = 0}},
    },
    ["fire"] = {
        Source = "fire",
        Time = 1,
    },
	["bash"] = {
        Source = "melee",
		Time = 1.325,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.6,
    },
    ["reload"] = {
        Source = "reload",
        Time = 2,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        Checkpoints = {24, 33, 51, 58, 62, 74, 80},
        FrameRate = 30,
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0.5,
		SoundTable = {{s = "hcea_annivpistolreload", t = 0}},
    },
    ["reload_empty"] = {
        Source = "reloadempty",
        Time = 2,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        Checkpoints = {24, 33, 51},
        FrameRate = 30,
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0.5,
		SoundTable = {{s = "hcea_annivpistolreload", t = 0}},
    },
}