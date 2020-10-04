SWEP.Base = "arccw_base"
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ArcCW - Halo 3" -- edit this if you like
SWEP.AdminOnly = false

SWEP.PrintName = "Sniper Rifle"
SWEP.TrueName = "SRS99D-S2 AM"
SWEP.Trivia_Class = "Sniper Rifle"
SWEP.Trivia_Desc = "The Sniper Rifle System 99 Anti-Materiel, (formally known as the Special Applications Rifle, Caliber 14.5 mm, SRS99), is a sniper rifle produced by Misriah Armory and used by the UNSC Armed Forces, and a part of the broader SRS99 family of weapons. The SRS99 entered service with the Army in 2460. Because of its modularity and ongoing manufacturer support, the SRS99 was adopted by all branches in 2521."
SWEP.Trivia_Manufacturer = "Misriah Armory"
SWEP.Trivia_Calibre = "14.5x114mm APFSDS"
SWEP.Trivia_Mechanism = "Semi-Auto"
SWEP.Trivia_Country = "never heard of her"
SWEP.Trivia_Year = 2460

SWEP.Slot = 4

if GetConVar("arccw_truenames"):GetBool() then SWEP.PrintName = SWEP.TrueName end

SWEP.UseHands = true

SWEP.MeleeSwingSound = ""
SWEP.MeleeMissSound = ""
SWEP.MeleeHitSound = "hceworld"
SWEP.MeleeHitNPCSound = "hceslap"

SWEP.ViewModel = "models/snowysnowtime/vuthakral/c_srs99d.mdl"
SWEP.WorldModel = "models/snowysnowtime/vuthakral/w_srs99d.mdl"
SWEP.ViewModelFOV = 70

if GetConVar("arccw_hce_bal"):GetInt() == 0 then -- HaloCW
    SWEP.Recoil = 2
	SWEP.RecoilSide = 1
	SWEP.Damage = 125
	SWEP.DamageMin = 175
	SWEP.AccuracyMOA = 0.05 -- accuracy in Minutes of Angle. There are 60 MOA in a degree.
	SWEP.HipDispersion = 500 -- inaccuracy added by hip firing.
	SWEP.MoveDispersion = 0
	SWEP.JumpDispersion = 0
	SWEP.ChamberSize = 0
elseif GetConVar("arccw_hce_bal"):GetInt() == 1 then -- halo purist
	SWEP.Recoil = 0
	SWEP.RecoilSide = 0
	SWEP.Damage = 100
	SWEP.DamageMin = 100
	SWEP.AccuracyMOA = 0
	SWEP.HipDispersion = 0
	SWEP.MoveDispersion = 0
	SWEP.JumpDispersion = 0
	SWEP.ChamberSize = 0
elseif GetConVar("arccw_hce_bal"):GetInt() == 2 then -- arccw
    SWEP.Recoil = 4
	SWEP.RecoilSide = 2
	SWEP.Damage = 120
	SWEP.DamageMin = 200
	SWEP.AccuracyMOA = 0.03
	SWEP.HipDispersion = 450
	SWEP.MoveDispersion = 550
	SWEP.ChamberSize = 1
end

SWEP.Range = 200 -- in METRES
SWEP.Penetration = 1000
SWEP.DamageType = DMG_BULLET
SWEP.ShootEntity = nil -- entity to fire, if any
SWEP.MuzzleVelocity = 4000 -- projectile or phys bullet muzzle velocity
-- IN M/S

SWEP.TracerNum = 1 -- tracer every X
SWEP.Tracer 	= "hce_sr_tracer"

SWEP.Primary.ClipSize = 4 -- DefaultClip is automatically set.
SWEP.ExtendedClipSize = 6
SWEP.ReducedClipSize = 2

SWEP.Delay = 60 / 80 -- 60 / RPM.
SWEP.Num = 1 -- number of shots per trigger pull.
SWEP.Firemodes = {
    {
        Mode = 1,
    },
    {
        Mode = 0
    }
}

SWEP.NPCWeaponType = {"weapon_ar2", "weapon_crossbow"}
SWEP.NPCWeight = 25

SWEP.ManualAction = false

SWEP.Primary.Ammo = "SniperPenetratedRound" -- what ammo type the gun uses
SWEP.MagID = "hs338" -- the magazine pool this gun draws from

SWEP.ShootVol = 1000 -- volume of shoot sound
SWEP.ShootPitch = 100 -- pitch of shoot sound

SWEP.ShootSound = "h3_sr_fire"
SWEP.ShootSoundSilenced = "weapons/arccw/m4a1/m4a1_silencer_01.wav"
SWEP.DistantShootSound = "sr_lodbetter"

SWEP.MuzzleEffect = "astw2_halo_3_muzzle_sniper_rifle"
SWEP.ShellModel = "models/shells/shell_338mag.mdl"
SWEP.ShellPitch = 80
SWEP.ShellScale = 1.5

SWEP.MuzzleEffectAttachment = 1 -- which attachment to put the muzzle on
SWEP.CaseEffectAttachment = 2 -- which attachment to put the case effect on

SWEP.SightTime = 0.15	
SWEP.SpeedMult = 1
SWEP.SightedSpeedMult = 0.3

SWEP.BulletBones = { -- the bone that represents bullets in gun/mag
    -- [0] = "bulletchamber",
    -- [1] = "bullet1"
}

SWEP.ProceduralRegularFire = false
SWEP.ProceduralIronFire = false

SWEP.CaseBones = {}

SWEP.IronSightStruct = {
    Pos = Vector(-4.75, -2, -0.78),
    Ang = Angle(0.792, 0.017, 0),
    Magnification = 2,
}

SWEP.MaxRecoilBlowback = 1
SWEP.HoldtypeHolstered = "passive"
SWEP.HoldtypeActive = "ar2"
SWEP.HoldtypeSights = "rpg"

SWEP.RejectAttachments = {
    ["ammo_cerberus"] = true, -- fuck cerberus
    ["acwatt_perk_fastbolt"] = true, -- whats the point of this on my weapons?
    ["acwatt_perk_beefficient"] = true, -- never heard of her
}

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_RPG

SWEP.ActivePos = Vector(0, -2.5, -1)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.HolsterPos = Vector(2, -9, -1)
SWEP.HolsterAng = Angle(-7.036, 45.016, 0)

SWEP.BarrelOffsetSighted = Vector(0, 0, -1)
SWEP.BarrelOffsetHip = Vector(2, 0, -2)
SWEP.MeleeTime = 1

SWEP.BarrelLength = 50
SWEP.AttachmentElements = {
	 ["aval"] = {
        VMSkin = 1,
        WMSkin = 1,
    },
    ["gold"] = {
        VMSkin = 2,
        WMSkin = 2,
    },
    ["desert"] = {
        VMSkin = 3,
        WMSkin = 3,
    },
	["woodland"] = {
        VMSkin = 4,
        WMSkin = 4,
    },
	["color"] = {
        VMSkin = 5,
        WMSkin = 5,
    },
	["woody"] = {
        VMSkin = 6,
        WMSkin = 6,
    },
}

SWEP.ExtraSightDist = 15

SWEP.Attachments = {
	{
        PrintName = "Optic", -- print name
        DefaultAttName = "10x Scope",
        Bone = "gun", -- relevant bone any attachments will be mostly referring to
		Slot = {"h3_srscope"}, -- what kind of attachments can fit here, can be string or table
        Offset = {
            vpos = Vector(-16.8, -4.025, 2.52), -- offset that the attachment will be relative to the bone
            vang = Angle(0, 90, 0),
            wpos = Vector(0, 0, 0),
            wang = Angle(0, 0, 0)
        },
		Installed = "optic_sr_scope",
		Integral = true, 
		Hidden = true,
    },
    {
        PrintName = "Underbarrel",
        Slot = {"foregrip", "bipod"},
        Bone = "gun",
        Offset = {
            vpos = Vector(11, -0.4, -3),
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
        Bone = "gun",
        Offset = {
            vpos = Vector(22, 0.6, -1.5), -- offset that the attachment will be relative to the bone
            vang = Angle(0, 0, 90),
            wpos = Vector(15.625, -0.253, -6.298),
            wang = Angle(-8.829, -0.556, 90)
        },
    },
    {
        PrintName = "Ammo Type",
        Slot = "ammo_bullet"
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
            vpos = Vector(6.25, -0.85, 1.1), -- offset that the attachment will be relative to the bone
            vang = Angle(0, 0, 10),
            wpos = Vector(8, 1.75, -3.5),
            wang = Angle(-10.393, 0, 180)
        },
    },
	{
        PrintName = "Skin",
        Slot = {"skin_h3sr"},
        DefaultAttName = "Factory Default",
        FreeSlot = true
    },
}

SWEP.Animations = {
	["idle"] = {
		Source = "idle",
	},
	["idle_sights"] = {
		Source = "aim",
	},
	["enter_sight"] = {
		Source = "aim",
	},
	["exit_sight"] = {
		Source = "aimout",
	},
	["enter_inspect"] = {
		Source = "pose2",
	},
	["exit_inspect"] = {
		Source = "pose1",
	},
	["fire_iron"] = {
        Source = { "fire_aim"} ,
        Time = 1,
    },
	["idle_iron"] = {
        Source = "aim",
        Time = 1
    },
    ["draw"] = {
        Source = "draw",
        Time = 20/30,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.25,
    },
	["bash"] = {
        Source = "melee_rand0",
		Time = 34/30,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.2,
    },
    ["fire"] = {
        Source = { "fire_rand1","fire_rand2","fire_rand3"} ,
        Time = 18/30,
    },
    ["reload"] = {
        Source = "reload",
        Time = 71/30,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
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
SWEP.NZPaPName				= "SRS BSNS"
--SWEP.NZPaPReplacement 	= ""	-- If Pack-a-Punched, replace this gun with the entity class shown here.
SWEP.NZPreventBox		= false	-- If true, this gun won't be placed in random boxes GENERATED. Users can still place it in manually.
SWEP.NZTotalBlackList	= false	-- if true, this gun can't be placed in the box, even manually, and can't be bought off a wall, even if placed manually. Only code can give this gun.

SWEP.Primary.MaxAmmo = 24
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
self.PrintName = "SRS BSNS"
self.MagExtender = true
self.ActivateElements = {"extendedmag"}
self.Primary.MaxAmmo = 36
self.Damage = 150
self.DamageMin = 200
self.Delay = 60 / 120
return true
end