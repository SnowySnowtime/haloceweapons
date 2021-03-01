SWEP.Base = "arccw_halo_subbase"
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ArcCW - Halo Combat Evolved" -- edit this if you like
SWEP.AdminOnly = false

SWEP.PrintName = "Plasma Pistol"
SWEP.TrueName = "Type-25 PP"
SWEP.Trivia_Class = "Pistol"
SWEP.Trivia_Desc = "The Type-25 Directed Energy Pistol (Type-25 DEP), also known as the plasma pistol, is a Covenant infantry firearm, carried commonly by the smaller species, such as the Unggoy, Kig-Yar, and the Yanme'e, but is occasionally used by larger species such as the Sangheili and Jiralhanae; as such it is the most commonly encountered Covenant energy weapon. While weak on its own, the plasma pistol has a wide variety of functions and becomes deadly in large numbers. "
SWEP.Trivia_Manufacturer = "Misriah Armory"
SWEP.Trivia_Calibre = "Superheated Plasma"
SWEP.Trivia_Mechanism = "Semi-Auto"
SWEP.Trivia_Country = "never heard of her"
SWEP.Trivia_Year = 2460

SWEP.Slot = 1

if GetConVar("arccw_truenames"):GetBool() then SWEP.PrintName = SWEP.TrueName end

SWEP.UseHands = true

SWEP.ViewModel = "models/snowysnowtime/c_ce_pp.mdl"
SWEP.WorldModel = "models/snowysnowtime/w_m6d.mdl"
SWEP.ViewModelFOV = 70

if GetConVar("arccw_hce_bal"):GetInt() == 0 then -- HaloCW
    SWEP.Recoil = 0.5
	SWEP.RecoilSide = 0.5
	SWEP.Damage = 40
	SWEP.DamageMin = 45
	SWEP.AccuracyMOA = 0.04
	SWEP.HipDispersion = 0.09
	SWEP.MoveDispersion = 0
	SWEP.JumpDispersion = 0
	SWEP.ChamberSize = 0
elseif GetConVar("arccw_hce_bal"):GetInt() == 1 then -- halo purist
	SWEP.Recoil = 0
	SWEP.RecoilSide = 0
	SWEP.Damage = 20
	SWEP.DamageMin = 16
	SWEP.AccuracyMOA = 0
	SWEP.HipDispersion = 0
	SWEP.MoveDispersion = 0
	SWEP.JumpDispersion = 0
	SWEP.ChamberSize = 0
elseif GetConVar("arccw_hce_bal"):GetInt() == 2 then -- arccw
    SWEP.Recoil = 0.5
	SWEP.RecoilSide = 0.5
	SWEP.Damage = 35
	SWEP.DamageMin = 40
	SWEP.AccuracyMOA = 0.06
	SWEP.HipDispersion = 100
	SWEP.MoveDispersion = 350
	SWEP.ChamberSize = 1
end

SWEP.Range =  100 -- in METRES
SWEP.Penetration = 0
SWEP.DamageType = DMG_BULLET
SWEP.ShootEntity = nil -- entity to fire, if any
SWEP.MuzzleVelocity = 6000 -- projectile or phys bullet muzzle velocity
-- IN M/S
SWEP.NeverPhysBullet = true

SWEP.Primary.ClipSize = 1 -- DefaultClip is automatically set.
SWEP.ExtendedClipSize = 1
SWEP.ReducedClipSize = 1

SWEP.Delay = 60 / 750 -- 60 / RPM.
SWEP.Num = 1 -- number of shots per trigger pull.
SWEP.Firemodes = {
    {
        Mode = 1,
        PrintName = "PLAS",
        CustomBars = "--!--"
    },
    {
        Mode = 0
    }
}

SWEP.NPCWeaponType = {"weapon_357","weapon_pistol"}
SWEP.NPCWeight = 25

SWEP.ManualAction = false


SWEP.Primary.Ammo = "arccwhce_plasmabattery" -- what ammo type the gun uses
SWEP.MagID = "hs338" -- the magazine pool this gun draws from

SWEP.ShootVol = 140 -- volume of shoot sound
SWEP.ShootPitch = 100 -- pitch of shoot sound

SWEP.ShootSound = "plasma_fire"
SWEP.ShootSoundSilenced = "hcesup"
SWEP.DistantShootSound = "m6d_lod"

SWEP.TracerNum = 1 -- tracer every X
SWEP.Tracer = "effect_astw2_halo_ce_tracer_pp"
SWEP.MuzzleEffect = "astw2_halo_ce_muzzle_plasma_pistol"
SWEP.ImpactEffect = "effect_astw2_halo_ce_impact_pp"
SWEP.ShellModel = "models/shells/shell_338mag.mdl"
SWEP.ShellPitch = 80
SWEP.ShellScale = 1.5

SWEP.MuzzleEffectAttachment = 1 -- which attachment to put the muzzle on
SWEP.CaseEffectAttachment = 2 -- which attachment to put the case effect on

SWEP.SightTime = 0.25
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
    Pos = Vector(0, 0, 2.99),
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

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_RPG

SWEP.ActivePos = Vector(0, 0, 1.5)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.HolsterPos = Vector(2, -6, -4)
SWEP.HolsterAng = Angle(40, 0, 0)

SWEP.BarrelOffsetSighted = Vector(0, 0, -1)
SWEP.BarrelOffsetHip = Vector(2, 0, -2)

SWEP.CustomizePos = Vector(2.824, -5, 0.897)
SWEP.CustomizeAng = Angle(12.149, 30.547, 0)

-- Fesiug's Plasma subbase
SWEP.Delay_Accel        = 0
SWEP.Delay_Decel        = 0
SWEP.Delay_Min      = 60 / 750
SWEP.Delay_Max      = 60 / 750
SWEP.Heat_Accel         = 0.16
SWEP.Heat_Decel         = 0.5
SWEP.BatteryConsumption     = 1/500

SWEP.Plasma_DischargeTime = 1.5
SWEP.ArcCW_Halo = SWEP.ArcCW_Halo or {}
SWEP.ArcCW_Halo.Accel = false

SWEP.BarrelLength = 17
SWEP.AttachmentElements = {
    ["brutal"] = {
        VMSkin = 1,
        WMSkin = 1,
    },
    ["schism"] = {
        VMSkin = 2,
        WMSkin = 2,
    },
    ["ultra"] = {
        VMSkin = 3,
        WMSkin = 3,
    },
    ["zealot"] = {
        VMSkin = 4,
        WMSkin = 4,
    },
	["mcc"] = {
        VMSkin = 5,
        WMSkin = 5,
    },
	["anniv"] = {
        VMBodygroups = {{ind = 0, bg = 1}},
        WMBodygroups = {{ind = 0, bg = 1}},
    },
}

SWEP.ExtraSightDist = 7

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
		ExcludeFlags = {"anniv"},
    },
	{
        PrintName = "Underbarrel",
        Slot = {"style_pistol"},
        Bone = "frame gun",
        Offset = {
            vpos = Vector(8, -0, 2),
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
        Slot = {"skin_hcepp","skin_halouniversal"},
        DefaultAttName = "Factory Default",
        FreeSlot = true
    },
	{
        PrintName = "Passive",
        Slot = {"halo_passive"},
		Installed = "passive_halo_non_prec_wep_mult",
		Integral = true
    },
}

SWEP.Animations = {
    ["idle"] = {
        Source = "idle",
        Time = 59/30
    },
	["fire_iron"] = {
        Source = "fire",
    },
	["exit_inspect"] = {
		Source = "fidget",
		Time = 135/30,
	},
	["exit_inspect_anniv"] = {
		Source = "anniv_fidget",
		Time = 135/30,
	},
    ["draw"] = {
        Source = "draw",
        Time = 34/30,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.25,
    },
    ["fire"] = {
        Source = "fire",
        Time = 10/30,
    },
	["bash"] = {
        Source = "melee",
		Time = 44/30,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.6,
    },
    ["enter_vent"] = {
        Source = "reload",
        Time = 50/30,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0.5,
    },
    ["reload"] = {
        Source = "reload",
        Time = 50/30,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        Checkpoints = {24, 33, 51, 58, 62, 74, 80},
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0.5,
    },
    ["reload_empty"] = {
        Source = "reloadempty",
        Time = 66/30,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        Checkpoints = {24, 33, 51},
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0.5,
    },
}

-- nZombies Stuff
SWEP.NZWonderWeapon		= false	-- Is this a Wonder-Weapon? If true, only one player can have it at a time. Cheats aren't stopped, though.
--SWEP.NZRePaPText		= "your text here"	-- When RePaPing, what should be shown? Example: Press E to your text here for 2000 points.
SWEP.NZPaPName				= "God Pistol"
SWEP.NZPaPReplacement 	= "arccw_hre_snow_fml_m6d"	-- If Pack-a-Punched, replace this gun with the entity class shown here.
SWEP.NZPreventBox		= false	-- If true, this gun won't be placed in random boxes GENERATED. Users can still place it in manually.
SWEP.NZTotalBlackList	= false	-- if true, this gun can't be placed in the box, even manually, and can't be bought off a wall, even if placed manually. Only code can give this gun.

SWEP.Primary.MaxAmmo = 120
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
self.PrintName = "God Pistol"
return true
end