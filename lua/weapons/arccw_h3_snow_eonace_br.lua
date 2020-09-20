SWEP.Base = "arccw_base"
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ArcCW - Halo 3" -- edit this if you like
SWEP.AdminOnly = false

SWEP.PrintName = "Battle Rifle"
SWEP.TrueName = "BR55HB SR"
SWEP.Trivia_Class = "Battle Rifle"
SWEP.Trivia_Desc = "The BR55 Service Rifle is a gas-operated, magazine-fed, mid-to-long range weapon capable of semi-automatic, fully automatic, and burst-firing modes. The BR55, having a rifled barrel, is 89.9cm long and is fitted with a scope for increased accuracy. The scope is mounted on the optics rail. The safety is also located above the handle of the weapon. The weapon fires the M634 X-HP-SAP round from a 36-round magazine. Additionally, the weapon features a scope attachment capable of 2x magnification. In addition to its initial role, the BR55 battle rifle can also fulfill the role of a designated marksman rifle."
SWEP.Trivia_Manufacturer = "Misriah Armory"
SWEP.Trivia_Calibre = "9.5x40mm M634 X-HP-SAP"
SWEP.Trivia_Mechanism = "Semi-Auto"

SWEP.Slot = 3

SWEP.VElements = {
	["numerals"] = { type = "Quad", bone = "frame gun", rel = "", pos = Vector(3.37, 0, 6.26), angle = Angle(0, -90, 60), size = 0.0057, draw_func = nil},
}

if GetConVar("arccw_truenames"):GetBool() then SWEP.PrintName = SWEP.TrueName end

SWEP.UseHands = true

if GetConVar("arccw_hce_bal"):GetInt() == 0 then -- HaloCW
   SWEP.Recoil = 0.75
	SWEP.RecoilSide = 0.25
	SWEP.Damage = 15
	SWEP.DamageMin = 30
	SWEP.AccuracyMOA = 0.07 -- accuracy in Minutes of Angle. There are 60 MOA in a degree.
	SWEP.HipDispersion = 50 -- inaccuracy added by hip firing.
	SWEP.MoveDispersion = 150
	SWEP.JumpDispersion = 0
	SWEP.ChamberSize = 0
elseif GetConVar("arccw_hce_bal"):GetInt() == 1 then -- halo purist
	SWEP.Recoil = 0
	SWEP.RecoilSide = 0
	SWEP.Damage = 15
	SWEP.DamageMin = 30
	SWEP.AccuracyMOA = 0
	SWEP.HipDispersion = 0
	SWEP.MoveDispersion = 0
	SWEP.JumpDispersion = 0
	SWEP.ChamberSize = 0
elseif GetConVar("arccw_hce_bal"):GetInt() == 2 then -- arccw
    SWEP.Recoil = 0.75
	SWEP.RecoilSide = 0.25
	SWEP.Damage = 15
	SWEP.DamageMin = 30
	SWEP.AccuracyMOA = 0.04 -- accuracy in Minutes of Angle. There are 60 MOA in a degree.
	SWEP.HipDispersion = 70 -- inaccuracy added by hip firing.
	SWEP.MoveDispersion = 175
	SWEP.ChamberSize = 1
end

SWEP.MeleeSwingSound = ""
SWEP.MeleeMissSound = ""
SWEP.MeleeHitSound = "hceworld"
SWEP.MeleeHitNPCSound = "hceslap"

SWEP.ViewModel = "models/snowysnowtime/eonace/c_hum_br55hb.mdl"
SWEP.WorldModel = "models/snowysnowtime/eonace/w_br55hb.mdl"
SWEP.ViewModelFOV = 70

SWEP.Range =  250 -- in METRES
SWEP.Penetration = 100
SWEP.DamageType = DMG_BULLET
SWEP.ShootEntity = nil -- entity to fire, if any
SWEP.MuzzleVelocity = 700 -- projectile or phys bullet muzzle velocity
-- IN M/S

SWEP.TracerNum = 1 -- tracer every X
SWEP.Tracer = "effect_astw2_halo3_tracer_human" -- tracer every X
SWEP.TracerCol = Color(25, 255, 25)
SWEP.TracerWidth = 3

SWEP.Primary.ClipSize = 36 -- DefaultClip is automatically set.
SWEP.ExtendedClipSize = 45
SWEP.ReducedClipSize = 24

SWEP.Delay = 60 / 900 -- 60 / RPM.
SWEP.Num = 1 -- number of shots per trigger pull.
SWEP.Firemodes = {
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

SWEP.NPCWeaponType = {"weapon_ar2","weapon_smg"}
SWEP.NPCWeight = 25

SWEP.ManualAction = false

SWEP.Primary.Ammo = "357" -- what ammo type the gun uses
SWEP.MagID = "hs338" -- the magazine pool this gun draws from

SWEP.ShootVol = 140 -- volume of shoot sound
SWEP.ShootPitch = 100 -- pitch of shoot sound

SWEP.FirstShootSound = "br_first"
SWEP.ShootSound = "br_fire"
SWEP.ShootSoundSilenced = "hcesup"
SWEP.DistantShootSound = "br_lod"

SWEP.MuzzleEffect = "astw2_halo_2_muzzle_battle_rifle"
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

SWEP.ActivePos = Vector(0, 0, 0)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.HolsterPos = Vector(2, -5.5, -2)
SWEP.HolsterAng = Angle(0, 40, -15)

SWEP.BarrelOffsetSighted = Vector(0, 0, -1)
SWEP.BarrelOffsetHip = Vector(2, 0, -2)

SWEP.BarrelLength = 35
SWEP.AttachmentElements = {
    ["color"] = {
        VMSkin = 5,
        WMSkin = 5,
    },
	["tf2spraylookingass"] = {
        VMSkin = 4,
        WMSkin = 4,
    },
	["hazard"] = {
        VMSkin = 3,
        WMSkin = 3,
    },
	["outback"] = {
        VMSkin = 2,
        WMSkin = 2,
    },
	["camo"] = {
        VMSkin = 1,
        WMSkin = 1,
    },
	["muzzle"] = {
        VMBodygroups = {{ind = 1, bg = 1}},
        WMBodygroups = {{ind = 1, bg = 1}},
    },
	["brscope"] = {
        VMBodygroups = {{ind = 2, bg = 1}},
        WMBodygroups = {{ind = 2, bg = 1}},
    },
}

SWEP.ExtraSightDist = 15

SWEP.Attachments = {
	{
        PrintName = "Optic", -- print name
        DefaultAttName = "10x Scope",
        Slot = {"optic", "optic_lp", "h3brsc"}, -- what kind of attachments can fit here, can be string or table
        Bone = "gun", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vpos = Vector(4.9, 0, 7.35), -- offset that the attachment will be relative to the bone
            vang = Angle(0, 0, 0),
            wpos = Vector(6, 2, -4.4),
            wang = Angle(-8.829, 0, 180)
        },
        CorrectivePos = Vector(0, 0, 0),
        CorrectiveAng = Angle(1, 0, 0),
    },
	{
        PrintName = "Muzzle",
        DefaultAttName = "Standard Muzzle",
        Slot = {"muzzle"},
        Bone = "gun",
        Offset = {
            vpos = Vector(21.9, 0, 4.9),
            vang = Angle(0, 0, 0),
            wpos = Vector(10, 2, -3.9),
            wang = Angle(-2.829, -4.9, 180)
        },
		VMScale = Vector(1, 0.9, 0.9),
		InstalledEles = {"muzzle"},
    },
    {
        PrintName = "Underbarrel",
        Slot = {"foregrip", "bipod", "ubgl"},
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
            vpos = Vector(12, 0, 5.7), -- offset that the attachment will be relative to the bone
            vang = Angle(0, 0, 180),
            wpos = Vector(6, 1.25, -3),
            wang = Angle(-8.829, -0.556, 90)
        },
		VMScale = Vector(0.4, 0.4, 0.4),
    },
    {
        PrintName = "Ammo Type",
        Slot = {"ammo_bullet"}
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
            vpos = Vector(6.25, -0.765, 4.6), -- offset that the attachment will be relative to the bone
            vang = Angle(0, 0, 10),
            wpos = Vector(6, 2.4, -3.5),
            wang = Angle(-10.393, 0, 180)
        },
		VMScale = Vector(0.7, 0.7, 0.7),
    },
	{
        PrintName = "Skin",
        Slot = {"skin_h3br"},
        DefaultAttName = "Factory Default",
        FreeSlot = true
    },
}

SWEP.Animations = {
    ["idle"] = {
        Source = "idle",
        Time = 4
    },
	["idle_sights"] = {
		Source = "aim",
	},
	["enter_sight"] = {
		Source = "aim",
	},
	["exit_sight"] = {
		Source = "aim",
		Time = 0.01,
	},
	["enter_inspect"] = {
		Source = "pose1",
	},
	["exit_inspect"] = {
		Source = "pose2",
		Time = 3,
	},
	["fire_iron"] = {
        Source = {"fire1","fire2","fire3"},
		Time = 0.35,
    },
    ["draw"] = {
        Source = "deploy",
        Time = 1,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.25,
    },
    ["fire"] = {
        Source = { "fire1","fire2","fire3" },
        Time = 0.35,
    },
	["bash"] = {
        Source = "melee1",
		Time = 1,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.6,
    },
    ["reload"] = {
        Source = "reload",
        Time = 2.15,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        Checkpoints = {24, 33, 51, 58, 62, 74, 80},
        FrameRate = 30,
        LHIK = true,
        LHIKIn = 0.1,
        LHIKOut = 0.55,
    },
}