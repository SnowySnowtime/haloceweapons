SWEP.Base = "arccw_base"
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ArcCW - Halo 3" -- edit this if you like
SWEP.AdminOnly = false

SWEP.PrintName = "Magnum"
SWEP.TrueName = "M6G PDWS"
SWEP.Trivia_Class = "Pistol"
SWEP.Trivia_Desc = "The M6D is a recoil-operated, magazine-fed handgun, chambered in 12.7x40mm ammunition, typically employed with semi-armor-piercing, high-explosive (SAPHE) rounds of that chambering, and feeding from 12-round detachable box magazines. It has also been known to be chambered in the .450 Magnum load.[The weapon is somewhat unusual for a handgun in that it is capable of both semi-automatic and automatic firing. The M6D is one of the M6 series’ upscaled variants, being larger than non-upscaled M6s by roughly 117%. The M6D is also an officer’s model, and in this capacity was employed by Captain Jacob Keyes on the UNSC Pillar of Autumn. Like other officer’s model M6s, the weapon is fitted with smart-linked KFA-2 optic for utilization by those employing a heads-up display."
SWEP.Trivia_Manufacturer = "Misriah Armory"
SWEP.Trivia_Calibre = "12.7x40mmn M225 SAP-HE"
SWEP.Trivia_Mechanism = "Semi-Auto"
SWEP.Trivia_Country = "never heard of her"
SWEP.Trivia_Year = 2460

SWEP.Slot = 1

if GetConVar("arccw_truenames"):GetBool() then SWEP.PrintName = SWEP.TrueName end

SWEP.UseHands = true

SWEP.ViewModel = "models/snowysnowtime/vuthakral/c_hum_m6g.mdl"
SWEP.WorldModel = "models/snowysnowtime/vuthakral/w_m6g.mdl"
SWEP.ViewModelFOV = 70

    SWEP.Recoil = 2
	SWEP.RecoilSide = 1
	SWEP.Damage = 30
	SWEP.DamageMin = 30
	SWEP.AccuracyMOA = 0.04
	SWEP.HipDispersion = 0.09
	SWEP.MoveDispersion = 0
	SWEP.JumpDispersion = 0
	SWEP.ChamberSize = 0

local balance = {
    [0] = {
        -- HaloCW
        Recoil = 2,
        RecoilSide = 1,
        Damage = 30,
        DamageMin = 30,
        AccuracyMOA = 0.04,
        HipDispersion = 0.09,
        MoveDispersion = 0,
        JumpDispersion = 0,
        ChamberSize = 0,
    },
    [1] = {
        -- halo purist
        Recoil = 0,
        RecoilSide = 0,
        Damage = 25,
        DamageMin = 25,
        AccuracyMOA = 0,
        HipDispersion = 0,
        MoveDispersion = 0,
        JumpDispersion = 0,
        ChamberSize = 0,
    },
    [2] = {
        -- arccw
        Recoil = 2,
        RecoilSide = 1,
        Damage = 30,
        DamageMin = 30,
        AccuracyMOA = 0.06,
        HipDispersion = 100,
        MoveDispersion = 350,
        ChamberSize = 1,
    }
}

SWEP.Range =  100 -- in METRES
SWEP.Penetration = 35
SWEP.DamageType = DMG_BULLET
SWEP.ShootEntity = nil -- entity to fire, if any
SWEP.MuzzleVelocity = 427 -- projectile or phys bullet muzzle velocity
-- IN M/S

SWEP.Primary.ClipSize = 8 -- DefaultClip is automatically set.
SWEP.ExtendedClipSize = 12
SWEP.ReducedClipSize = 6

SWEP.Delay = 0.4 -- 60 / RPM.
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
    Pos = Vector(0, 2, -1.99),
    Ang = Angle(0.792, 0.017, 0),
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

SWEP.ActivePos = Vector(0, -4, -1)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.HolsterPos = Vector(0, -10, -10)
SWEP.HolsterAng = Angle(40, 0, 0)

SWEP.BarrelOffsetSighted = Vector(0, 0, -1)
SWEP.BarrelOffsetHip = Vector(2, 0, -2)

SWEP.CustomizePos = Vector(6.824, -8, -3.897)
SWEP.CustomizeAng = Angle(12.149, 30.547, 0)

SWEP.BarrelLength = 5
SWEP.AttachmentElements = {
    ["yeet"] = {
        VMSkin = 1,
        WMSkin = 1,
    },
    ["gold"] = {
        VMSkin = 2,
        WMSkin = 2,
    },
    ["oj"] = {
        VMSkin = 3,
        WMSkin = 3,
    },
    ["wornblue"] = {
        VMSkin = 4,
        WMSkin = 4,
    },
	["color"] = {
        VMSkin = 5,
        WMSkin = 5,
    },
	["camo"] = {
        VMSkin = 6,
        WMSkin = 6,
    },
	["hazardp"] = {
        VMSkin = 7,
        WMSkin = 7,
    },
	["mcc"] = {
        VMSkin = 8,
        WMSkin = 8,
    },
}

SWEP.ExtraSightDist = 10

SWEP.Attachments = {
	{
        PrintName = "Optic", -- print name
        DefaultAttName = "10x Scope",
        Slot = {"optic_lp"}, -- what kind of attachments can fit here, can be string or table
        Bone = "gun", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vpos = Vector(4, 0, 4.2), -- offset that the attachment will be relative to the bone
            vang = Angle(0, 0, 0),
            wpos = Vector(6, 2, -4.4),
            wang = Angle(-8.829, 0, 180)
        },
    },
	{
        PrintName = "Muzzle",
        DefaultAttName = "Standard Muzzle",
        Slot = {"muzzle"},
        Bone = "gun",
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
        Bone = "gun", -- relevant bone any attachments will be mostly referring to
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
        Slot = {"skin_h3m6","skin_halouniversal"},
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
        Time = 98/30
    },
	["fire_iron"] = {
        Source = "fire",
    },
    ["draw"] = {
        Source = "draw",
        Time = 21/30,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.25,
    },
    ["fire"] = {
        Source = { "fire_rand1","fire_rand2","fire_rand3" },
        Time = 15/30,
    },
	["bash"] = {
        Source = "melee",
        --Source = {"melee","melee1"}, fix ur shit
		Time = 28/30,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.6,
    },
    ["reload"] = {
        Source = "reload",
        Time =  49/30,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        Checkpoints = {24, 33, 51, 58, 62, 74, 80},
        FrameRate = 30,
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0.5,
    },
    ["reload_empty"] = {
        Source = "reload",
        Time =  49/30,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        Checkpoints = {24, 33, 51, 58, 62, 74, 80},
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
SWEP.NZPaPName				= "Hunter Killer"
--SWEP.NZPaPReplacement 	= ""	-- If Pack-a-Punched, replace this gun with the entity class shown here.
SWEP.NZPreventBox		= false	-- If true, this gun won't be placed in random boxes GENERATED. Users can still place it in manually.
SWEP.NZTotalBlackList	= false	-- if true, this gun can't be placed in the box, even manually, and can't be bought off a wall, even if placed manually. Only code can give this gun.

SWEP.Primary.MaxAmmo = 40
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
self.PrintName = "Hunter Killer"
self.MagExtender = true
self.ActivateElements = {"extendedmag"}
self.Primary.MaxAmmo = 120
self.Damage = 75
self.DamageMin = 75
self.Delay = 60 / 210
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