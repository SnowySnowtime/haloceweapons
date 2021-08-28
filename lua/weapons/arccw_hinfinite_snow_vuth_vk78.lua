SWEP.Base = "arccw_base"
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ArcCW - Halo Extras" -- edit this if you like
SWEP.AdminOnly = false

SWEP.PrintName = "VK78"
SWEP.TrueName = "VK78 Commando"
SWEP.Trivia_Class = "Tactical Rifle"
SWEP.Trivia_Desc = "German select-fire carbine in 2495 which was initially employed by the Colonial Military Administration to replacing aging stocks of HMG-38s, and later the UNSC post Human-Covenant War."
SWEP.Trivia_Manufacturer = "Vakara GesmbH"
SWEP.Trivia_Calibre = "6.55mm"
SWEP.Trivia_Mechanism = "Automatic"
SWEP.Trivia_Country = "never heard of her"

SWEP.Slot = 2

if GetConVar("arccw_truenames"):GetBool() then SWEP.PrintName = SWEP.TrueName end

SWEP.UseHands = true

SWEP.ViewModel = "models/snowysnowtime/vuthakral/infinite/c_hum_vk78.mdl"
SWEP.MirrorVMWM = true

SWEP.WorldModelOffset = {
    pos = Vector(-8, 5, -4),
    ang = Angle(-16, 0, 180),
    bone = "ValveBiped.Bip01_R_Hand",
    scale = 1
}
SWEP.ViewModelFOV = 70

--  You will need this for the journey ahead
--  Probably should set this to your first mode
	SWEP.Recoil = 1
	SWEP.RecoilSide = 0.5
	SWEP.Damage = 25
	SWEP.DamageMin = 15
	SWEP.AccuracyMOA = 10
	SWEP.HipDispersion = 25
	SWEP.JumpDispersion = 0
	SWEP.ChamberSize = 0

local balance = {
    [0] = {
        -- HaloCW
        Recoil = 1,
        RecoilSide = 0.5,
        Damage = 30,
        DamageMin = 20,
        AccuracyMOA = 10,
        HipDispersion = 30,
        JumpDispersion = 0,
        ChamberSize = 0,
    },
    [1] = {
        -- halo purist
        Recoil = 0.7,
        RecoilSide = 0.3,
        Damage = 30,
        DamageMin = 20,
        JumpDispersion = 0,
        HipDispersion = 0,
        MoveDispersion = 0,
        ChamberSize = 0,
    },
    [2] = {
        -- arccw
        Recoil = 1,
        RecoilSide = 0.5,
        Damage = 36,
        DamageMin = 20,
        AccuracyMOA = 10,
        HipDispersion = 30,
        MoveDispersion = 10,
		JumpDispersion = 50,
        ChamberSize = 1,
    }
}

SWEP.MeleeSwingSound = ""
SWEP.MeleeMissSound = ""
SWEP.MeleeHitSound = "hceworld"
SWEP.MeleeHitNPCSound = "hceslap"

SWEP.Range =  100 -- in METRES
SWEP.Penetration = 25
SWEP.DamageType = DMG_BULLET
SWEP.ShootEntity = nil -- entity to fire, if any
SWEP.MuzzleVelocity = 600 -- projectile or phys bullet muzzle velocity
-- IN M/S

SWEP.TracerNum = 1 -- tracer every X
SWEP.Tracer = "effect_astw2_halo3_tracer_br" -- tracer every X
SWEP.Primary.ClipSize = 20 -- DefaultClip is automatically set.
SWEP.ExtendedClipSize = 40
SWEP.ReducedClipSize = 12

SWEP.Delay = 60 / 380 -- 60 / RPM.
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

SWEP.ShootSound = Sound("drc.vk78_fire")
SWEP.ShootSoundSilenced = "br_fire7"
SWEP.DistantShootSound = "br_lod"

SWEP.MuzzleEffect = "astw2_halo_ce_muzzle_assault_rifle"
SWEP.ShellModel = "models/shells/shell_338mag.mdl"
SWEP.ShellPitch = 80
SWEP.ShellScale = 1.5

SWEP.MuzzleEffectAttachment = 1 -- which attachment to put the muzzle on
SWEP.CaseEffectAttachment = 2 -- which attachment to put the case effect on

SWEP.SightTime = 0.2
SWEP.SpeedMult = 1
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
    Pos = Vector(-4.3, -11, 1),
    Ang = Angle(0, 0, 0),
    Magnification = 1.3,
}

SWEP.HoldtypeHolstered = "passive"
SWEP.HoldtypeActive = "ar2"
SWEP.HoldtypeSights = "rpg"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2

SWEP.ActivePos = Vector(0, -2, 0.5)
SWEP.ActiveAng = Angle(2, 0, 0)

SWEP.HolsterPos = Vector(1, -2, 2)
SWEP.HolsterAng = Angle(-10, 30, -10)

SWEP.BarrelOffsetSighted = Vector(0, 0, -1)
SWEP.BarrelOffsetHip = Vector(2, 0, -2)

SWEP.CustomizePos = Vector(5, -1, -1)
SWEP.CustomizeAng = Angle(12.149, 30.547, 0)

SWEP.BarrelLength = 30
SWEP.AttachmentElements = {
	["color"] = {
        VMSkin = 1,
        WMSkin = 1,
    },
    ["wood"] = {
        VMSkin = 2,
        WMSkin = 2,
    },
	["circum"] = {
        VMSkin = 3,
        WMSkin = 3,
    },
	["camo1"] = {
        VMSkin = 4,
        WMSkin = 4,
    },
	["camo2"] = {
        VMSkin = 5,
        WMSkin = 5,
    },
	["camo3"] = {
        VMSkin = 6,
        WMSkin = 6,
    },
	["camo4"] = {
        VMSkin = 7,
        WMSkin = 7,
    },
	["camo5"] = {
        VMSkin = 8,
        WMSkin = 8,
    },
	["camo6"] = {
        VMSkin = 9,
        WMSkin = 9,
    },
	["camo7"] = {
        VMSkin = 10,
        WMSkin = 10,
    },
	["vkmuzzle"] = {
        VMBodygroups = {{ind = 5, bg = 1}},
        WMBodygroups = {{ind = 5, bg = 1}},
    },
	["vkirons"] = {
        VMBodygroups = {{ind = 6, bg = 1}},
        WMBodygroups = {{ind = 6, bg = 1}},
    },
	["vkoptic"] = {
        VMBodygroups = {{ind = 4, bg = 1}},
        WMBodygroups = {{ind = 4, bg = 1}},
    },
}
SWEP.GuaranteeLaser = true
SWEP.ExtraSightDist = 5
SWEP.Attachments = {
	{
        PrintName = "Optic", -- print name
        DefaultAttName = "3x Smart Scope",
        Slot = {"optic", "optic_lp"}, -- what kind of attachments can fit here, can be string or table
        Bone = "W_Main", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vpos = Vector(0, -4.6, 2), -- offset that the attachment will be relative to the bone
            vang = Angle(90, 0, -90),
            wpos = Vector(6, 2, -4.4),
            wang = Angle(0, 0, 0)
        },
        CorrectivePos = Vector(0, 0, 0),
        CorrectiveAng = Angle(0, 0, 0),
		InstalledEles = {"vkirons", "vkoptic"}
    },
	{
        PrintName = "Muzzle",
        DefaultAttName = "Standard Muzzle",
        Slot = {"muzzle"},
        Bone = "W_Main",
        Offset = {
            vpos = Vector(0, -3.2, 22),
            vang = Angle(90, 0, -90),
            wpos = Vector(25, 0.9, -9.25),
            wang = Angle(-12, -1.155, 180)
        },
		VMScale = Vector(1, 1, 1),
		InstalledEles = {"vkmuzzle"}
    },
	{
        PrintName = "Tactical",
        Slot = "tac",
        Bone = "W_Main",
        Offset = {
            vpos = Vector(1.15, -3.15, 15), -- offset that the attachment will be relative to the bone
            vang = Angle(90, 0, 0),
            wpos = Vector(6, 1.25, -3),
            wang = Angle(-8.829, -0.556, 90)
        },
    },
	{
        PrintName = "Underbarrel",
        Slot = {"foregrip", "bipod"},
        Bone = "W_Main",
        Offset = {
            vpos = Vector(0, -0.4, 15),
            vang = Angle(90, 0, -90),
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
        PrintName = "Ammo Type",
        Slot = "ammo_bullet"
    },
    {
        PrintName = "Perk",
        Slot = {"perk","go_perk"}
    },
    {
        PrintName = "Charm",
        Slot = "charm",
        FreeSlot = true,
        Bone = "W_Main", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vpos = Vector(0.65, -1.85, 3.6), -- offset that the attachment will be relative to the bone
            vang = Angle(90, 0, -90),
            wpos = Vector(6, 2.4, -3.5),
            wang = Angle(-10.393, 0, 180)
        },
    },
	{
        PrintName = "Skin",
        Slot = {"skin_hivk"},
        DefaultAttName = "Factory Default",
        FreeSlot = true
    },
	{
        PrintName = "Passive",
        Slot = {"halo_passive"},
		Installed = "passive_halo_prec_wep_mult_reduced",
		Integral = true
    },
}

SWEP.Animations = {
    ["idle"] = {
        Source = "idle",
        Time = 1/30
    },
	["fire_iron"] = {
        Source = "iron",
		Time = 10/30
    },
    ["draw"] = {
        Source = "draw",
        Time = 30/30,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.25,
    },
    ["fire"] = {
        Source = { "fire"},
		Time = 13/30,
    },
	["bash"] = {
        Source = { "melee" },
		Time = 48/48,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.2,
    },
    ["reload"] = {
        Source = "reload",
        Time = 89/35,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Checkpoints = {24, 33, 51},
        FrameRate = 30,
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0.5,
    },
    ["reload_empty"] = {
        Source = "reload_empty",
        Time = 115/35,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Checkpoints = {24, 33, 51},
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0.5,
    },
}

-- nZombies Stuff
SWEP.NZWonderWeapon		= false	-- Is this a Wonder-Weapon? If true, only one player can have it at a time. Cheats aren't stopped, though.
--SWEP.NZRePaPText		= "your text here"	-- When RePaPing, what should be shown? Example: Press E to your text here for 2000 points.
SWEP.NZPaPName				= "AK78"
--SWEP.NZPaPReplacement 	= ""	-- If Pack-a-Punched, replace this gun with the entity class shown here.
SWEP.NZPreventBox		= false	-- If true, this gun won't be placed in random boxes GENERATED. Users can still place it in manually.
SWEP.NZTotalBlackList	= false	-- if true, this gun can't be placed in the box, even manually, and can't be bought off a wall, even if placed manually. Only code can give this gun.

SWEP.Primary.MaxAmmo = 352
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
self.PrintName = "AK78"
self.Primary.ClipSize = 32
self.Primary.MaxAmmo = 352
self.Damage = 35
self.DamageMin = 25
self.Delay = 60 / 600
return true
end