SWEP.Base = "arccw_base"
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ArcCW - Halo Custom Edition" -- edit this if you like
SWEP.AdminOnly = false

SWEP.PrintName = "SMG"
SWEP.TrueName = "M7 SMG"
SWEP.Trivia_Class = "SMG"
SWEP.Trivia_Desc = "The M7/Caseless Submachine Gun, more simply known as the SMG, is a United Nations Space Command infantry and special operations weapon. Sustained fire tends to cause the muzzle to ''walk'' upwards as recoil compounds. "
SWEP.Trivia_Manufacturer = "Misriah Armory"
SWEP.Trivia_Calibre = "5x23mm M443 Caseless Full Metal Jacket"
SWEP.Trivia_Mechanism = "Automatic"
SWEP.Trivia_Country = "SPV3"

SWEP.Slot = 2

if GetConVar("arccw_truenames"):GetBool() then SWEP.PrintName = SWEP.TrueName end

SWEP.UseHands = true

SWEP.ViewModel = "models/snowysnowtime/spv3/c_smg.mdl"
SWEP.WorldModel = "models/snowysnowtime/spv3/c_smg.mdl"
SWEP.ViewModelFOV = 70

--  You will need this for the journey ahead
--  Probably should set this to your first mode
	SWEP.Recoil = 0.2
	SWEP.RecoilSide = 0.2
	SWEP.Damage = 25
	SWEP.DamageMin = 18
	SWEP.AccuracyMOA = 15
	SWEP.HipDispersion = 270
	SWEP.JumpDispersion = 0
	SWEP.ChamberSize = 0

local balance = {
    [0] = {
        -- HaloCW
        Recoil = 0.2,
        RecoilSide = 0.2,
        Damage = 27,
        DamageMin = 15,
        AccuracyMOA = 15,
        HipDispersion = 270,
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
        Damage = 28,
        DamageMin = 25,
        AccuracyMOA = 15,
        HipDispersion = 270,
        MoveDispersion = 120,
        ChamberSize = 1,
    }
}

SWEP.MeleeSwingSound = ""
SWEP.MeleeMissSound = ""
SWEP.MeleeHitSound = "hceworld"
SWEP.MeleeHitNPCSound = "hceslap"

SWEP.Range =  50 -- in METRES
SWEP.Penetration = 10
SWEP.DamageType = DMG_BULLET
SWEP.ShootEntity = nil -- entity to fire, if any
SWEP.MuzzleVelocity = 100 -- projectile or phys bullet muzzle velocity
-- IN M/S

SWEP.TracerNum = 1 -- tracer every X

SWEP.Primary.ClipSize = 60 -- DefaultClip is automatically set.
SWEP.ExtendedClipSize = 80
SWEP.ReducedClipSize = 48

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

SWEP.RejectAttachments = {
    ["ammo_cerberus"] = true, -- fuck cerberus
    ["acwatt_perk_fastbolt"] = true, -- whats the point of this on my weapons?
    ["acwatt_perk_beefficient"] = true, -- never heard of her
}

SWEP.NPCWeaponType = {"weapon_ar2","weapon_smg"}
SWEP.NPCWeight = 10

SWEP.ManualAction = false

SWEP.Primary.Ammo = "smg1" -- what ammo type the gun uses
SWEP.MagID = "hs338" -- the magazine pool this gun draws from

SWEP.ShootVol = 80 -- volume of shoot sound
SWEP.ShootPitch = 100 -- pitch of shoot sound

SWEP.ShootSound = Sound("smg_soup")
SWEP.ShootSoundSilenced = "smg_fire"
SWEP.DistantShootSound = nil

SWEP.MuzzleEffect = "astw2_halo_3_muzzle_SMG"
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
    Pos = Vector(-3.375, -3, 0),
    Ang = Angle(0.792, 0.017, 0),
    Magnification = 1.1,
}

SWEP.HoldtypeHolstered = "normal"
SWEP.HoldtypeActive = "smg"
SWEP.HoldtypeSights = "ar2"
SWEP.MeleeTime = 0.9

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_RPG

SWEP.ActivePos = Vector(0, -1, 1)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.HolsterPos = Vector(3, -3, -0.5)
SWEP.HolsterAng = Angle(-10, 30, -10)

SWEP.BarrelOffsetSighted = Vector(0, 0, -1)
SWEP.BarrelOffsetHip = Vector(2, 0, -2)

SWEP.CustomizePos = Vector(1.824, -4.5, -0.897)
SWEP.CustomizeAng = Angle(12.149, 30.547, 0)

SWEP.BarrelLength = 24
SWEP.AttachmentElements = {
	["ironsights"] = {
        VMBodygroups = {{ind = 1, bg = 1}},
        WMBodygroups = {{ind = 1, bg = 1}},
    },
	["body"] = {
        VMBodygroups = {{ind = 0, bg = 1}},
        WMBodygroups = {{ind = 0, bg = 1}},
    },
	["handle"] = {
        VMBodygroups = {{ind = 2, bg = 1}},
        WMBodygroups = {{ind = 2, bg = 1}},
    },
	["extmag"] = {
        VMBodygroups = {{ind = 7, bg = 1}},
        WMBodygroups = {{ind = 7, bg = 1}},
    },
	["stock1"] = {
        VMBodygroups = {{ind = 3, bg = 1}},
        WMBodygroups = {{ind = 3, bg = 1}},
    },
	["stock2"] = {
        VMBodygroups = {{ind = 3, bg = 2}},
        WMBodygroups = {{ind = 3, bg = 2}},
    },
	["amped"] = {
        VMSkin = 1,
        WMSkin = 1,
    },
}

SWEP.ExtraSightDist = 15

SWEP.Attachments = {
	{
        PrintName = "Optic", -- print name
        DefaultAttName = "None",
        Slot = {"optic", "optic_lp", "spv3smgsc"}, -- what kind of attachments can fit here, can be string or table
        Bone = "frame gun", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vpos = Vector(-1, 0, 4.7), -- offset that the attachment will be relative to the bone
            vang = Angle(0, 0, 0),
            wpos = Vector(6, 2, -4.4),
            wang = Angle(-8.829, 0, 180)
        },
        CorrectivePos = Vector(0, 0, 0),
        CorrectiveAng = Angle(0, 0, 0),
        Installed = "optic_smg_irons"
    },
	{
        PrintName = "Muzzle",
        DefaultAttName = "Standard Muzzle",
        Slot = {"muzzle"},
        Bone = "frame gun",
        Offset = {
            vpos = Vector(9, 0, 3.45),
            vang = Angle(0, 0, 0),
            wpos = Vector(10, 2, -3.9),
            wang = Angle(-2.829, -4.9, 180)
        },
		VMScale = Vector(1, 1, 1),
    },
    {
        PrintName = "Stock",
        Slot = {"stock", "spv3_stock"},
        DefaultAttName = "No Stock",
		Installed = "stock_spv3pos1"
    },
	{
        PrintName = "Grip",
        Slot = "grip",
        DefaultAttName = "Standard Grip"
    },	
	{
        PrintName = "Tactical",
        Slot = "tac",
        Bone = "frame gun",
        Offset = {
            vpos = Vector(5, -0.6, 2.9), -- offset that the attachment will be relative to the bone
            vang = Angle(0, 0, 90),
            wpos = Vector(6, 1.25, -3),
            wang = Angle(-8.829, -0.556, 90)
        },
    },
	{
        PrintName = "Underbarrel",
        Slot = {"foregrip", "spv3_foregrip","style_pistol"},
        Bone = "frame gun",
        Offset = {
            vpos = Vector(5.75, 0, 1.45),
            vang = Angle(0, 0, 0),
            wpos = Vector(13, 0.6, -3.5),
            wang = Angle(-10, 0, 180),
        },
		Installed = "foregrip_spv3smg"
    },
    {
        PrintName = "Ammo Type",
        Slot = {"ammo_bullet","ammo_spv3"}
    },
    {
        PrintName = "Perk",
        Slot = {"perk","go_perk"}
    },
	{
        PrintName = "Firetype",
        Slot = {"fcg","fcg_smg"}
    },
    {
        PrintName = "Charm",
        Slot = "charm",
        FreeSlot = true,
        Bone = "frame gun", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vpos = Vector(6, -0.45, 4), -- offset that the attachment will be relative to the bone
            vang = Angle(0, 0, 10),
            wpos = Vector(6, 2.4, -3.5),
            wang = Angle(-10.393, 0, 180)
        },
    },
	{
        PrintName = "Skin",
        Slot = {"skin_spv3smg"},
        DefaultAttName = "Factory Default",
        FreeSlot = true
    },
}

SWEP.Hook_TranslateAnimation = function(wep, anim)
    if wep.Attachments[7].Installed == "ammo_spv3_extend" then
		local annivtag = (
			anim == "reload_empty" or
			anim == "reload"
		)
		
		if annivtag then
			return anim .. "_extended" -- lol
		end
    end
end

SWEP.Animations = {
    ["idle"] = {
        Source = "idle",
        Time = 127/30
    },
	["fire_iron"] = {
        Source = "aim",
    },
	["idle_sights"] = {
		Source = "aim",
	},
	["enter_sight"] = {
		Source = "aim",
	},
	["exit_sight"] = {
		Source = "aim",
		Time = 1/30,
	},
    ["draw"] = {
        Source = "draw",
        Time = 32/30,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.25,
		SoundTable = {{s = "h3.m7_ready", t = 0.01}},
    },
    ["fire"] = {
        Source = "fire",
        Time = 4/30,
    },
	["bash"] = {
        Source = "melee",
        LHIK = true,
		Time = 33/30,
		SoundTable = {{s = "h3.m7_melee", t = 0.01}},
        LHIKIn = 0,
        LHIKOut = 0.2,
    },
    ["reload"] = {
        Source = "reload",
        Time = 54/30,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        Checkpoints = {24, 33, 51, 58, 62, 74, 80},
        FrameRate = 30,
		SoundTable = {{s = "h3.m7_reload1", t = 0.01},{s = "h3.m7_reload2", t = 0.85}},
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0.5,
    },
    ["reload_empty"] = {
        Source = "reload",
        Time = 54/30,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        Checkpoints = {24, 33, 51},
        FrameRate = 30,
		SoundTable = {{s = "h3.m7_reload1", t = 0.01},{s = "h3.m7_reload2", t = 0.85}},
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0.5,
    },
	["reload_extended"] = {
        Source = "reload_extmag",
        Time = 76/30,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        Checkpoints = {24, 33, 51, 58, 62, 74, 80},
        FrameRate = 30,
		SoundTable = {{s = "h3.m7_reload1", t = 0.25},{s = "h3.m7_reload2", t = 1.325}},
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0.5,
    },
	["reload_empty_extended"] = {
        Source = "reload_extmag",
        Time = 76/30,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        Checkpoints = {24, 33, 51, 58, 62, 74, 80},
        FrameRate = 30,
		SoundTable = {{s = "h3.m7_reload1", t = 0.25},{s = "h3.m7_reload2", t = 1.325}},
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0.5,
    },
}