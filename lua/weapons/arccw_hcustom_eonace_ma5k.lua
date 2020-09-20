SWEP.Base = "arccw_base"
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ArcCW - Halo Custom Edition" -- edit this if you like
SWEP.AdminOnly = false

SWEP.PrintName = "Assault Carbine"
SWEP.TrueName = "MA5K Assault Carbine"
SWEP.Trivia_Class = "Carbine"
SWEP.Trivia_Desc = "The MA5K carbine is a firearm used almost exclusively by United Nations Space Command special operations forces, notably the Spartan-III supersoldiers. It is part of Misriah Armory's MA5 series, and is a cut-down version of the standard MA5B assault rifle. It is fully automatic and receives a thirty-round magazine of 7.62×51mm FMJ-AP ammunition. The most conspicuous difference between the MA5K and other MA5 models is the replacement of the distinctive electronics housing with a removable carrying handle similar to that of the BR55 battle rifle."
SWEP.Trivia_Manufacturer = "Misriah Armory"
SWEP.Trivia_Calibre = "	M118 7.62x51mm FMJ-AP"
SWEP.Trivia_Mechanism = "Automatic"
SWEP.Trivia_Country = "never heard of her"

SWEP.Slot = 3

if GetConVar("arccw_truenames"):GetBool() then SWEP.PrintName = SWEP.TrueName end

SWEP.UseHands = true

SWEP.ViewModel = "models/snowysnowtime/eonace/c_fp_ma5k.mdl"
SWEP.WorldModel = "models/snowysnowtime/eonace/w_ma5k.mdl"
SWEP.ViewModelFOV = 70

if GetConVar("arccw_hce_bal"):GetInt() == 0 then -- HaloCW
	SWEP.Recoil = 0.7
	SWEP.RecoilSide = 0.7
	SWEP.Damage = 25
	SWEP.DamageMin = 15 -- damage done at maximum range
	SWEP.AccuracyMOA = 20 -- accuracy in Minutes of Angle. There are 60 MOA in a degree.
	SWEP.HipDispersion = 300 -- inaccuracy added by hip firing.
	SWEP.JumpDispersion = 0
	SWEP.ChamberSize = 0
elseif GetConVar("arccw_hce_bal"):GetInt() == 1 then -- halo purist
	SWEP.Recoil = 0
	SWEP.RecoilSide = 0
	SWEP.Damage = 25
	SWEP.DamageMin = 15 -- damage done at maximum range
	SWEP.JumpDispersion = 0
	SWEP.HipDispersion = 0
	SWEP.MoveDispersion = 0
	SWEP.ChamberSize = 1
elseif GetConVar("arccw_hce_bal"):GetInt() == 2 then -- arccw
    SWEP.Recoil = 0.4
	SWEP.RecoilSide = 0.4
	SWEP.Damage = 30
	SWEP.DamageMin = 10 -- damage done at maximum range
	SWEP.AccuracyMOA = 20 -- accuracy in Minutes of Angle. There are 60 MOA in a degree.
	SWEP.HipDispersion = 300 -- inaccuracy added by hip firing.
	SWEP.MoveDispersion = 120
	SWEP.ChamberSize = 1
end

SWEP.MeleeSwingSound = ""
SWEP.MeleeMissSound = ""
SWEP.MeleeHitSound = "hceworld"
SWEP.MeleeHitNPCSound = "hceslap"

SWEP.Range =  100 -- in METRES
SWEP.Penetration = 25
SWEP.DamageType = DMG_BULLET
SWEP.ShootEntity = nil -- entity to fire, if any
SWEP.MuzzleVelocity = 300 -- projectile or phys bullet muzzle velocity
-- IN M/S

SWEP.TracerNum = 1 -- tracer every X
SWEP.Tracer 	= ""

SWEP.Primary.ClipSize = 30 -- DefaultClip is automatically set.
SWEP.ExtendedClipSize = 60
SWEP.ReducedClipSize = 20

SWEP.Delay = 60 / 900 -- 60 / RPM.
SWEP.Num = 1 -- number of shots per trigger pull.
SWEP.Firemodes = {
    {
        Mode = 2,
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

SWEP.ShootSound = Sound("ma5k_fire")
SWEP.ShootSoundSilenced = "weapons/arccw/m4a1/m4a1_silencer_01.wav"
SWEP.DistantShootSound = "ar_lod"

SWEP.MuzzleEffect = "astw2_halo_spv3_muzzle_DMR"
SWEP.ImpactEffect = ""
SWEP.ShellModel = "models/shells/shell_338mag.mdl"
SWEP.ShellPitch = 80
SWEP.ShellScale = 1.5

SWEP.MuzzleEffectAttachment = 1 -- which attachment to put the muzzle on
SWEP.CaseEffectAttachment = 2 -- which attachment to put the case effect on

SWEP.SightTime = 0.4
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
    Pos = Vector(-4.51, -7, 1.23),
    Ang = Angle(-0.2, 0.01, 0),
    Magnification = 1.1,
}

SWEP.HoldtypeHolstered = "passive"
SWEP.HoldtypeActive = "ar2"
SWEP.HoldtypeSights = "rpg"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2

SWEP.ActivePos = Vector(0, -2, 1)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.HolsterPos = Vector(3, -3, -0.5)
SWEP.HolsterAng = Angle(-10, 30, -10)

SWEP.BarrelOffsetSighted = Vector(0, 0, 0)
SWEP.BarrelOffsetHip = Vector(2, 0, -2)

SWEP.BarrelLength = 30

SWEP.AttachmentElements = {
    ["ub"] = {
        VMBodygroups = {{ind = 1, bg = 1}},
        WMBodygroups = {{ind = 1, bg = 1}},
    },
}

SWEP.ExtraSightDist = 7

SWEP.Attachments = {
	{
        PrintName = "Optic", -- print name
        DefaultAttName = "Iron Sights",
        Slot = {"optic", "optic_lp"}, -- what kind of attachments can fit here, can be string or table
        Bone = "frame gun", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vpos = Vector(3.5, -6.5, -0.045), -- offset that the attachment will be relative to the bone
            vang = Angle(0, 0, -90),
            wpos = Vector(15.92, 0.75, -6.8),
            wang = Angle(-13, -1, 182.3)
        },
        CorrectivePos = Vector(0, 0, 0),
        CorrectiveAng = Angle(0, 0, 0),
        InstalledEles = {"mount"}
    },
		{
        PrintName = "Muzzle",
        DefaultAttName = "Standard Muzzle",
        Slot = {"muzzle"},
        Bone = "frame gun",
        Offset = {
            vpos = Vector(15, -3.35, -0.03),
            vang = Angle(0, 0, -90),
            wpos = Vector(18.3, 0.85, -5.8),
            wang = Angle(-12.5, -0.5, 183)
        },
		VMScale = Vector(1, 1, 1),
    },
	    {
        PrintName = "Underbarrel",
        Slot = {"foregrip", "ubgl", "bipod"},
        Bone = "frame gun",
        Offset = {
            vpos = Vector(8.3, -0.5, 0),
            vang = Angle(0, 0, -90),
            wpos = Vector(0, 0, 0),
            wang = Angle(0, 0, 0)
        },
        InstalledEles = {"ub"},
    },
    {
        PrintName = "Stock",
        Slot = "stock",
        DefaultAttName = "Standard Stock"
    },
	{
        PrintName = "Tactical",
        Slot = "tac",
        Bone = "frame gun",
        Offset = {
            vpos = Vector(11, -3.25, -0.85), -- offset that the attachment will be relative to the bone
            vang = Angle(0, 0, 0),
            wpos = Vector(15.95, 1.7, -4.15),
            wang = Angle(-13, 0, -87.7)
        },
    },
    {
        PrintName = "Ammo Type",
        Slot = "ammo_bullet"
    },
		{
        PrintName = "Firetype",
        Slot = {"ma5k", "fcg"},
		FreeSlot =  true,
		Installed = "ma5k_accel",
		DefaultAttName = "Factory FCG",
    },
    {
        PrintName = "Perk",
        Slot = "perk"
    },
    {
        PrintName = "Charm",
        Slot = "charm",
        FreeSlot = true,
        Bone = "frame gun", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vpos = Vector(1.8, -1.8, -0.95), -- offset that the attachment will be relative to the bone
            vang = Angle(0, 0, -92),
            wpos = Vector(7.03, 1.7, -3.85),
            wang = Angle(-10, 0, 180)
        },
    },
}

SWEP.Animations = {
	["idle_sights"] = {
		Source = "aim",
	},
	["enter_sight"] = {
		Source = "aim",
	},
    ["idle"] = {
        Source = "idle",
        Time = 4
    },
	["exit_inspect"] = {
		Source = "fidget",
	},
	["fire_iron"] = {
        Source = "aim_fire",
		Time = 0.2,
    },
    ["draw"] = {
        Source = "draw",
		Time = 0.7,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.25,
    },
    ["fire"] = {
        Source = "fire",
        Time = 0.2,
    },
	["bash"] = {
		Source = "melee",
		Time = 1,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.2,
    },
    ["reload"] = {
        Source = "reload",
        Time = 2.5,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Checkpoints = {06, 15, 37, 47},
        FrameRate = 30,
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0.5,
    },
    ["reload_empty"] = {
        Source = "reload_empty",
        Time = 3,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Checkpoints = {11, 16, 36, 47, 57},
        FrameRate = 30,
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0.5,
    },
}