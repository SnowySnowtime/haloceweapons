SWEP.Base = "arccw_base"
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ArcCW - Halo 3" -- edit this if you like
SWEP.AdminOnly = false

SWEP.PrintName = "Fuel Rod"
SWEP.TrueName = "Type-33(B)"
SWEP.Trivia_Class = "Flak Cannon"
SWEP.Trivia_Desc = "The Type-33 Light Anti-Armor Weapon (T-33 LAAW), colloquially known as the fuel rod gun, is a shoulder-fired flak cannon/radiation weapon, used by the Covenant. It is also sometimes called the flak cannon or fuel rod cannon though the latter term is usually reserved for vehicle-mounted weapons based on the same technology. "
SWEP.Trivia_Manufacturer = "Assembly Forges"
SWEP.Trivia_Calibre = "Class-2 38mm radioactive explosive fuel rods"
SWEP.Trivia_Mechanism = "Semi-Auto"
SWEP.Trivia_Country = "never heard of her"
SWEP.Trivia_Year = 2460

SWEP.Slot = 4

if GetConVar("arccw_truenames"):GetBool() then SWEP.PrintName = SWEP.TrueName end

SWEP.UseHands = true

SWEP.ViewModel = "models/snowysnowtime/vuthakral/c_hum_t33b.mdl"
SWEP.WorldModel = "models/snowysnowtime/vuthakral/w_t33b.mdl"
SWEP.ViewModelFOV = 70

if GetConVar("arccw_hce_bal"):GetInt() == 0 then -- HaloCW
	SWEP.Recoil = 4
	SWEP.RecoilSide = 1
	SWEP.MaxRecoilBlowback = 10
elseif GetConVar("arccw_hce_bal"):GetInt() == 1 then -- halo purist
	SWEP.Recoil = 0
	SWEP.RecoilSide = 0
	SWEP.MaxRecoilBlowback = 0
elseif GetConVar("arccw_hce_bal"):GetInt() == 2 then -- arccw
    SWEP.Recoil = 5
end

SWEP.MeleeSwingSound = nil
SWEP.MeleeHitSound = "hceworld"
SWEP.MeleeHitNPCSound = "hceslap"

SWEP.Primary.ClipSize = 5
SWEP.ExtendedClipSize = 10

SWEP.Damage = 40
SWEP.DamageMin = 45 -- damage done at maximum range
SWEP.Range =  700 -- in METRES
SWEP.Penetration = 100
SWEP.DamageType = DMG_BULLET
SWEP.ShootEntity = "arccw_halo3_fuelrod_projectile" -- entity to fire, if any
SWEP.MuzzleVelocity = 3000 -- projectile or phys bullet muzzle velocity
SWEP.PhysBulletDontInheritPlayerVelocity = true
-- IN M/S

SWEP.TracerNum = 0 -- tracer every X
SWEP.TracerName 	= "hce_sr_tracer"

SWEP.ChamberSize = 0-- how many rounds can be chambered.
SWEP.ReducedClipSize = 1

SWEP.Delay = 60 / 125 -- 60 / RPM.
SWEP.Num = 1 -- number of shots per trigger pull.
SWEP.Firemodes = {
    {
        Mode = 1,
    },
    {
        Mode = 0
    }
}

SWEP.NPCWeaponType = {"weapon_rpg"}
SWEP.NPCWeight = 25

SWEP.ManualAction = false

SWEP.AccuracyMOA = 0 -- accuracy in Minutes of Angle. There are 60 MOA in a degree.
SWEP.HipDispersion = 0 -- inaccuracy added by hip firing.
SWEP.MoveDispersion = 100

SWEP.Primary.Ammo = "RPG_Round" -- what ammo type the gun uses
SWEP.MagID = "hs338" -- the magazine pool this gun draws from

SWEP.ShootVol = 140 -- volume of shoot sound
SWEP.ShootPitch = 100 -- pitch of shoot sound

SWEP.ShootSound = "h3_fuelrod_fire"
SWEP.ShootSoundSilenced = "hcesup"
SWEP.DistantShootSound = "rl_lod"

SWEP.MuzzleEffect = "astw2_halo_3_muzzle_fuel_rod"
SWEP.ShellModel = "models/shells/shell_338mag.mdl"
SWEP.ShellPitch = 80
SWEP.ShellScale = 1.5

SWEP.MuzzleEffectAttachment = 1 -- which attachment to put the muzzle on
SWEP.CaseEffectAttachment = 2 -- which attachment to put the case effect on

SWEP.SightTime = 0.35
SWEP.SpeedMult = 0.70
SWEP.SightedSpeedMult = 0.25
SWEP.MeleeTime = 1.8

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
SWEP.HoldtypeActive = "rpg"
SWEP.HoldtypeSights = "smg"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_RPG

SWEP.ActivePos = Vector(0, 0, 1)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.HolsterPos = Vector(0, 6, 4)
SWEP.HolsterAng = Angle(-40, 0, 0)

SWEP.BarrelOffsetSighted = Vector(0, 0, -10)
SWEP.BarrelOffsetHip = Vector(0, 0, 0)

SWEP.CustomizePos = Vector(2.824, -1, -2.897)
SWEP.CustomizeAng = Angle(12.149, 30.547, 0)

SWEP.BarrelLength = 32
SWEP.AttachmentElements = {
    ["corrosion"] = {
        VMSkin = 1,
        WMSkin = 1,
    },
    ["desert"] = {
        VMSkin = 2,
        WMSkin = 2,
    },
	["huntersblood"] = {
        VMSkin = 3,
        WMSkin = 3,
    },
	["mcc"] = {
        VMSkin = 4,
        WMSkin = 4,
    },
	["anniv"] = {
        VMBodygroups = {{ind = 0, bg = 1}},
        WMBodygroups = {{ind = 0, bg = 1}},
    },
}

SWEP.ExtraSightDist = 5

SWEP.Attachments = {
	{
        PrintName = "Optic", -- print name
        DefaultAttName = "10x Scope",
        Slot = {"optic", "optic_lp"}, -- what kind of attachments can fit here, can be string or table
        Bone = "frame gun", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vpos = Vector(12, -2.5, 2), -- offset that the attachment will be relative to the bone
            vang = Angle(0, 0, -45),
            wpos = Vector(6, 2, -4.4),
            wang = Angle(-8.829, 0, 180)
        },
    },
	{
        PrintName = "Tactical",
        Slot = "tac",
        Bone = "frame gun",
        Offset = {
            vpos = Vector(0, 2.5, 3.64), -- offset that the attachment will be relative to the bone
            vang = Angle(0, 0, -90),
            wpos = Vector(6, 1.25, -3),
            wang = Angle(-8.829, -0.556, 90)
        },
		VMScale = Vector(0.1, 0.1, 0.1),
    },
    {
        PrintName = "Charm",
        Slot = "charm",
        FreeSlot = true,
        Bone = "frame gun", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vpos = Vector(10, -2.45, 0.85), -- offset that the attachment will be relative to the bone
            vang = Angle(0, 0, 10),
            wpos = Vector(6, 2.4, -3.5),
            wang = Angle(-10.393, 0, 180)
        },
		VMScale = Vector(0.7, 0.7, 0.7),
    },
}

SWEP.Animations = {
    ["idle"] = {
        Source = "idle",
        Time = 59/30
    },
    ["holster"] = {
        Source = "holster",
        Time = 21/30
    },
	["fire_iron"] = {
        Source = {"fire1","fire2","fire3"},
    },
    ["draw"] = {
        Source = "draw",
        Time = 21/30,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.25,
    },
    ["fire"] = {
        Source = {"fire_rand1","fire_rand2","fire_rand3"},
        Time = 24/30,
    },
	["bash"] = {
        Source = "melee_rand0",
		Time = 42/30,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.6,
    },
    ["reload"] = {
        Source = "reload",
        Time = 89/30,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_RPG,
        Checkpoints = {24, 33, 51, 58, 62, 74, 80},
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0.5,
    },
    ["reload_empty"] = {
        Source = "reload",
        Time = 89/30,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_RPG,
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
SWEP.NZPaPName				= "Flak"
--SWEP.NZPaPReplacement 	= ""	-- If Pack-a-Punched, replace this gun with the entity class shown here.
SWEP.NZPreventBox		= false	-- If true, this gun won't be placed in random boxes GENERATED. Users can still place it in manually.
SWEP.NZTotalBlackList	= false	-- if true, this gun can't be placed in the box, even manually, and can't be bought off a wall, even if placed manually. Only code can give this gun.

SWEP.Primary.MaxAmmo = 30
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
self.PrintName = "Flak"
self.MagExtender = true
self.Primary.MaxAmmo = 60
self.Delay = 60 / 200
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