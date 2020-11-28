SWEP.Base = "arccw_base"
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ArcCW - Halo 3" -- edit this if you like
SWEP.AdminOnly = false

SWEP.PrintName = "SMG"
SWEP.TrueName = "M7 SMG"
SWEP.Trivia_Class = "SMG"
SWEP.Trivia_Desc = "The M7/Caseless Submachine Gun, more simply known as the SMG, is a United Nations Space Command infantry and special operations weapon. Sustained fire tends to cause the muzzle to ''walk'' upwards as recoil compounds."
SWEP.Trivia_Manufacturer = "Misriah Armory"
SWEP.Trivia_Calibre = "5x23mm M443 Caseless Full Metal Jacket"
SWEP.Trivia_Mechanism = "Automatic"
SWEP.Trivia_Country = "never heard of her"
SWEP.Trivia_Year = 2460

SWEP.Slot = 2

if GetConVar("arccw_truenames"):GetBool() then SWEP.PrintName = SWEP.TrueName end

SWEP.UseHands = true

SWEP.ViewModel = "models/snowysnowtime/vuthakral/c_hum_m7.mdl"
SWEP.WorldModel = "models/snowysnowtime/vuthakral/w_m7.mdl"
SWEP.ViewModelFOV = 70

if GetConVar("arccw_hce_bal"):GetInt() == 0 then -- HaloCW
	SWEP.Recoil = 0.2
	SWEP.RecoilSide = 0.2
	SWEP.Damage = 18
	SWEP.DamageMin = 10 -- damage done at maximum range
	SWEP.AccuracyMOA = 30 -- accuracy in Minutes of Angle. There are 60 MOA in a degree.
	SWEP.HipDispersion = 370 -- inaccuracy added by hip firing.
	SWEP.MoveDispersion = 0
	SWEP.ChamberSize = 0
elseif GetConVar("arccw_hce_bal"):GetInt() == 1 then -- halo purist
	SWEP.Recoil = 0.1
	SWEP.RecoilSide = 0.1
	SWEP.Damage = 18
	SWEP.DamageMin = 10 -- damage done at maximum range
	SWEP.JumpDispersion = 0
	SWEP.HipDispersion = 0
	SWEP.MoveDispersion = 0
	SWEP.ChamberSize = 0
elseif GetConVar("arccw_hce_bal"):GetInt() == 2 then -- arccw
    SWEP.Recoil = 0.2
	SWEP.RecoilSide = 0.2
	SWEP.Damage = 18
	SWEP.DamageMin = 10 -- damage done at maximum range
	SWEP.AccuracyMOA = 25 -- accuracy in Minutes of Angle. There are 60 MOA in a degree.
	SWEP.HipDispersion = 350 -- inaccuracy added by hip firing.
	SWEP.MoveDispersion = 160
	SWEP.ChamberSize = 1
end

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
SWEP.TracerName 	= "hce_sr_tracer"

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

SWEP.ShootSound = Sound("h3.smg_fire")
SWEP.FirstShootSound = Sound("h3.smg_firstfire")
SWEP.ShootSoundSilenced = "h3sup"
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
    Pos = Vector(-3.73, -3, 0.225),
    Ang = Angle(-0.9, -1.1, 0),
    Magnification = 1.1,
}

SWEP.HoldtypeHolstered = "normal"
SWEP.HoldtypeActive = "smg"
SWEP.HoldtypeSights = "ar2"
SWEP.MeleeTime = 0.85

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_RPG

SWEP.ActivePos = Vector(0, -3.5, 0)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.HolsterPos = Vector(3, -3, -0.5)
SWEP.HolsterAng = Angle(-10, 30, -10)

SWEP.BarrelOffsetSighted = Vector(0, 0, -1)
SWEP.BarrelOffsetHip = Vector(2, 0, -2)

SWEP.CustomizePos = Vector(2.824, -5.5, -1.897)
SWEP.CustomizeAng = Angle(12.149, 30.547, 0)

SWEP.BarrelLength = 24
SWEP.AttachmentElements = {
	["anniv"] = {
        VMBodygroups = {{ind = 1, bg = 1}, {ind = 2, bg=1}},
        WMBodygroups = {{ind = 0, bg = 1}},
    },
	["yeet"] = {
        VMSkin = 1,
        WMSkin = 1,
    },
	["red"] = {
        VMSkin = 2,
        WMSkin = 2,
    },
	["tiger"] = {
        VMSkin = 3,
        WMSkin = 3,
    },
	["color"] = {
        VMSkin = 4,
        WMSkin = 4,
    },
	["gold"] = {
        VMSkin = 5,
        WMSkin = 5,
    },
	["green"] = {
        VMSkin = 6,
        WMSkin = 6,
    },
}

SWEP.ExtraSightDist = 15

SWEP.Attachments = {
	{
        PrintName = "Optic", -- print name
        DefaultAttName = "10x Scope",
        Slot = {"optic", "optic_lp"}, -- what kind of attachments can fit here, can be string or table
        Bone = "gun", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vpos = Vector(-2.5, 0.01, 3.7), -- offset that the attachment will be relative to the bone
            vang = Angle(0, 0, 0),
            wpos = Vector(6, 2, -4.4),
            wang = Angle(-8.829, 0, 180)
        },
        CorrectivePos = Vector(0, 0, 0.04),
        CorrectiveAng = Angle(1, 0, 0),
        InstalledEles = {"mount"},
		ExcludeFlags = {"halo_m7s"},
    },
	{
        PrintName = "Muzzle",
        DefaultAttName = "Standard Muzzle",
        Slot = {"muzzle"},
        Bone = "gun",
        Offset = {
            vpos = Vector(4.75, 0, 2.6),
            vang = Angle(0, 0, 0),
            wpos = Vector(10, 2, -3.9),
            wang = Angle(-2.829, -4.9, 180)
        },
		VMScale = Vector(1, 1, 1),
		ExcludeFlags = {"halo_m7s"},
    },
    {
        PrintName = "Stock",
        Slot = "stock",
        DefaultAttName = "Standard Stock"
    },
	{
        PrintName = "Tactical",
        Slot = "tac",
        Bone = "gun",
        Offset = {
            vpos = Vector(1.2, 0.75, 2.3), -- offset that the attachment will be relative to the bone
            vang = Angle(0, 0, -90),
            wpos = Vector(6, 1.25, -3),
            wang = Angle(-8.829, -0.556, 90)
        },
    },
    {
        PrintName = "Ammo Type",
        Slot = "ammo_bullet",
		ExcludeFlags = {"halo_m7s"}
    },
    {
        PrintName = "Perk",
        Slot = {"perk","go_perk"}
    },
	{
        PrintName = "Firetype",
        Slot = {"fcg","fcg_smg"},
		ExcludeFlags = {"halo_m7s"}
    },
    {
        PrintName = "Charm",
        Slot = "charm",
        FreeSlot = true,
        Bone = "gun", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vpos = Vector(1.25, -0.45, 3), -- offset that the attachment will be relative to the bone
            vang = Angle(0, 0, 15),
            wpos = Vector(6, 2.4, -3.5),
            wang = Angle(-10.393, 0, 180)
        },
    },
	{
        PrintName = "Skin",
		FreeSlot = true,
        Slot = {"skin_h3m7","skin_halouniversal"}
    },
	{
        PrintName = "Variant",
		Bone = "gun", -- relevant bone any attachments will be mostly referring to
        Slot = {"override_e"},
		Offset = {
            vpos = Vector(-1.75, 0, -0.85), -- offset that the attachment will be relative to the bone
            vang = Angle(0, 0, 0),
            wpos = Vector(6, 2, -4.4),
            wang = Angle(-8.829, 0, 180)
        },
    },
}

SWEP.Animations = {
    ["idle"] = {
        Source = "idle",
        Time = 88/30
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
		Time = 1/30
	},
	["enter_inspect"] = {
		Source = "pose2",
	},
	["exit_inspect"] = {
		Source = "pose1",
	},
	["fire_iron"] = {
        Source = "fire_fp",
		Time = 4/30,
    },
    ["draw"] = {
        Source = "draw",
        Time = 18/30,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.25,
    },
    ["fire"] = {
        Source = "fire_fp",
        Time = 4/30,
    },
	["bash"] = {
        Source = "melee",
        LHIK = true,
		Time = 25/30,
        LHIKIn = 0,
        LHIKOut = 0.2,
    },
    ["reload"] = {
        Source = "reload",
        Time = 49/30,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        Checkpoints = {24, 33, 51, 58, 62, 74, 80},
        FrameRate = 30,
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0.5,
    },
    ["reload_empty"] = {
        Source = "reload",
        Time = 49/30,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        Checkpoints = {24, 33, 51, 58, 62, 74, 80},
        FrameRate = 30,
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0.5,
    },
}

-- nZombies Stuff
SWEP.NZWonderWeapon		= false	-- Is this a Wonder-Weapon? If true, only one player can have it at a time. Cheats aren't stopped, though.
--SWEP.NZRePaPText		= "your text here"	-- When RePaPing, what should be shown? Example: Press E to your text here for 2000 points.
SWEP.NZPaPName				= "Bullet Hose"
--SWEP.NZPaPReplacement 	= ""	-- If Pack-a-Punched, replace this gun with the entity class shown here.
SWEP.NZPreventBox		= false	-- If true, this gun won't be placed in random boxes GENERATED. Users can still place it in manually.
SWEP.NZTotalBlackList	= false	-- if true, this gun can't be placed in the box, even manually, and can't be bought off a wall, even if placed manually. Only code can give this gun.

SWEP.Primary.MaxAmmo = 600
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
self.PrintName = "Bullet Hose"
self.MagExtender = true
self.ActivateElements = {"extendedmag"}
self.Primary.MaxAmmo = 800
self.Damage = 30
self.DamageMin = 15
self.Delay = 60 / 1000
return true
end