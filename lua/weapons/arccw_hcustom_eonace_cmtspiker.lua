SWEP.Base = "arccw_base"
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ArcCW - Halo Custom Edition" -- edit this if you like
SWEP.AdminOnly = false

SWEP.PrintName = "CMT Spiker"
SWEP.TrueName = "Type-25 Spiker"
SWEP.Trivia_Class = "Carbine"
SWEP.Trivia_Desc = "A strange modified variant of the brute spiker created by a mysterious group of individuals only known as 'CMT'"
SWEP.Trivia_Manufacturer = "CMT"
SWEP.Trivia_Calibre = "Superheated Spikes"
SWEP.Trivia_Mechanism = "Automatic"
SWEP.Trivia_Country = "ported by EonAce"

SWEP.Slot = 2

if GetConVar("arccw_truenames"):GetBool() then SWEP.PrintName = SWEP.TrueName end

SWEP.UseHands = true

SWEP.ViewModel = "models/snowysnowtime/eonace/c_fp_cmtspiker.mdl"
SWEP.WorldModel = "models/snowysnowtime/eonace/w_cmtspiker.mdl"
SWEP.ViewModelFOV = 70

if GetConVar("arccw_hce_bal"):GetInt() == 0 then -- HaloCW
	SWEP.Recoil = 0.25
	SWEP.RecoilSide = 0.25
	SWEP.Damage = 25
	SWEP.DamageMin = 15 -- damage done at maximum range
	SWEP.AccuracyMOA = 40 -- accuracy in Minutes of Angle. There are 60 MOA in a degree.
	SWEP.HipDispersion = 150 -- inaccuracy added by hip firing.
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
    SWEP.Recoil = 0.25
	SWEP.RecoilSide = 0.25
	SWEP.Damage = 25
	SWEP.DamageMin = 15 -- damage done at maximum range
	SWEP.AccuracyMOA = 40 -- accuracy in Minutes of Angle. There are 60 MOA in a degree.
	SWEP.HipDispersion = 150 -- inaccuracy added by hip firing.
	SWEP.MoveDispersion = 100
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
SWEP.Tracer 	= "effect_astw2_halo3_tracer_spiker"

SWEP.Primary.ClipSize = 40 -- DefaultClip is automatically set.
SWEP.ExtendedClipSize = 50
SWEP.ReducedClipSize = 30

SWEP.Delay = 60 / 650 -- 60 / RPM.
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

SWEP.ShootSound = Sound("cmtspiker_fire")
SWEP.ShootSoundSilenced = "weapons/arccw/m4a1/m4a1_silencer_01.wav"
SWEP.DistantShootSound = "ar_lod"

SWEP.MuzzleEffect = "astw2_halo_3_muzzle_spiker"
SWEP.ImpactEffect = "effect_astw2_halo3_impact_spiker"
SWEP.ShellModel = "models/shells/shell_338mag.mdl"
SWEP.ShellPitch = 80
SWEP.ShellScale = 1.5

SWEP.MuzzleEffectAttachment = 1 -- which attachment to put the muzzle on
SWEP.CaseEffectAttachment = 2 -- which attachment to put the case effect on

SWEP.SightTime = 0.35
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
    Pos = Vector(-3.375, -3, 0),
    Ang = Angle(0.792, 0.017, 0),
    Magnification = 1.1,
}

SWEP.HoldtypeHolstered = "passive"
SWEP.HoldtypeActive = "pistol"
SWEP.HoldtypeSights = "rpg"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2

SWEP.ActivePos = Vector(0, 0, 0)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.HolsterPos = Vector(3, -3, -0.5)
SWEP.HolsterAng = Angle(-10, 30, -10)

SWEP.BarrelOffsetSighted = Vector(0, 0, -1)
SWEP.BarrelOffsetHip = Vector(2, 0, -2)

SWEP.BarrelLength = 20

SWEP.ExtraSightDist = 15

SWEP.Attachments = {
	{
        PrintName = "Optic", -- print name
        DefaultAttName = "Iron Sights",
        Slot = {"optic", "optic_lp"}, -- what kind of attachments can fit here, can be string or table
        Bone = "frame gun", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vpos = Vector(13, 0, 2.6), -- offset that the attachment will be relative to the bone
            vang = Angle(0, 0, 0),
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
            vpos = Vector(14.9, 0, 1.18),
            vang = Angle(0, 0, 0),
            wpos = Vector(18.3, 0.85, -5.8),
            wang = Angle(-12.5, -0.5, 183)
        },
		VMScale = Vector(1, 1, 1),
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
            vpos = Vector(12.4, -1, 0), -- offset that the attachment will be relative to the bone
            vang = Angle(0, 0, 90),
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
        Slot = {"fcg","fcg_smg"},
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
            vpos = Vector(3.6, -1, 1.7), -- offset that the attachment will be relative to the bone
            vang = Angle(0, 0, 0),
            wpos = Vector(7.03, 1.7, -3.85),
            wang = Angle(-10, 0, 180)
        },
    },
}

SWEP.Animations = {
    ["idle"] = {
        Source = "idle",
        Time = 70/30,
    },
	["exit_inspect"] = {
		Source = "fidget2",
		Time = 21/30,
	},
	["idle_inspect"] = {
		Source = "fidget_idle",
		Time = 70/30,
	},
	["enter_inspect"] = {
		Source = "fidget1",
		Time = 21/30,
	},
	["fire_iron"] = {
        Source = "fire",
    },
    ["draw"] = {
        Source = "draw",
        Time = 29/30,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.25,
    },
	["holster"] = {
        Source = "holster",
        Time = 29/30,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.25,
    },
    ["fire"] = {
        Source = "fire",
        Time = 25/30,
    },
	["bash"] = {
        Source = "melee",
		Time = 35/30,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.2,
    },
    ["reload"] = {
        Source = "reload",
        Time = 68/22,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Checkpoints = {24, 33, 51, 58, 62, 74, 80},
        FrameRate = 30,
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0.5,
    },
    ["reload_empty"] = {
        Source = "reload",
        Time = 68/22,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Checkpoints = {24, 33, 51},
        FrameRate = 30,
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0.5,
    },
}

-- nZombies Stuff
SWEP.NZWonderWeapon		= false	-- Is this a Wonder-Weapon? If true, only one player can have it at a time. Cheats aren't stopped, though.
--SWEP.NZRePaPText		= "your text here"	-- When RePaPing, what should be shown? Example: Press E to your text here for 2000 points.
SWEP.NZPaPName				= "Impaler"
--SWEP.NZPaPReplacement 	= ""	-- If Pack-a-Punched, replace this gun with the entity class shown here.
SWEP.NZPreventBox		= false	-- If true, this gun won't be placed in random boxes GENERATED. Users can still place it in manually.
SWEP.NZTotalBlackList	= false	-- if true, this gun can't be placed in the box, even manually, and can't be bought off a wall, even if placed manually. Only code can give this gun.

SWEP.Primary.MaxAmmo = 160
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
self.PrintName = "Impaler"
self.MagReducer = true
att.ActivateElements = {"reducedmag"}
self.Primary.MaxAmmo = 120
self.Damage = 75
self.DamageMin = 100
self.Delay = 60 / 200
return true
end