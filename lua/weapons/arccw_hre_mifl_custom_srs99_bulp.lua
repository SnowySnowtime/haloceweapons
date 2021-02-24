SWEP.Base = "arccw_base"
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ArcCW - Halo Reanimated" -- edit this if you like
SWEP.AdminOnly = false

SWEP.PrintName = "Bullpup Sniper Rifle"
SWEP.TrueName = "Bullpup SRS99C-S2 AM"
SWEP.Trivia_Class = "Sniper Rifle"
SWEP.Trivia_Desc = "Shorten-ed and Bullpup-ed version of an SRS99."
SWEP.Trivia_Manufacturer = "Misriah Armory"
SWEP.Trivia_Calibre = "14.5x114mm APFSDS"
SWEP.Trivia_Mechanism = "Semi-Auto"
SWEP.Trivia_Country = "never heard of her"
SWEP.Trivia_Year = 2460

SWEP.Slot = 4

if GetConVar("arccw_truenames"):GetBool() then SWEP.PrintName = SWEP.TrueName end

SWEP.UseHands = true

SWEP.MeleeSwingSound = nil
SWEP.MeleeHitSound = "hceworld"
SWEP.MeleeHitNPCSound = "hceslap"

SWEP.ViewModel = "models/snowysnowtime/c_mifl_custom_bullpup_srs99.mdl"
SWEP.WorldModel = "models/snowysnowtime/w_mifl_custom_bullpup_srs99.mdl"
SWEP.ViewModelFOV = 70

--  You will need this for the journey ahead
--  Probably should set this to your first mode
	SWEP.Recoil = 0.2
	SWEP.RecoilSide = 0.2
	SWEP.Damage = 125
	SWEP.DamageMin = 100
	SWEP.AccuracyMOA = 0.005
	SWEP.HipDispersion = 360
	SWEP.JumpDispersion = 0
	SWEP.ChamberSize = 0

local balance = {
    [0] = {
        -- HaloCW
        Recoil = 1,
        RecoilSide = 1,
        Damage = 125,
        DamageMin = 100,
        AccuracyMOA = 0.005,
        HipDispersion = 700,
        JumpDispersion = 0,
        ChamberSize = 0,
    },
    [1] = {
        -- halo purist
        Recoil = 0,
        RecoilSide = 0,
        Damage = 100,
        DamageMin = 100,
        JumpDispersion = 0,
        HipDispersion = 0,
        MoveDispersion = 0,
        ChamberSize = 0,
    },
    [2] = {
        -- arccw
        Recoil = 0.2,
        RecoilSide = 0.2,
        Damage = 125,
        DamageMin = 90,
        AccuracyMOA = 0.005,
        HipDispersion = 700,
        MoveDispersion = 120,
        ChamberSize = 1,
    }
}

SWEP.Range = 200 -- in METRES
SWEP.Penetration = 100
SWEP.DamageType = DMG_BULLET
SWEP.ShootEntity = nil -- entity to fire, if any
SWEP.MuzzleVelocity = 4000 -- projectile or phys bullet muzzle velocity
-- IN M/S

SWEP.TracerNum = 1 -- tracer every X
SWEP.Tracer 	= "hce_sr_tracer"

SWEP.Primary.ClipSize = 4 -- DefaultClip is automatically set.
SWEP.ExtendedClipSize = 6
SWEP.ReducedClipSize = 2

SWEP.Delay = 60 / 120 -- 60 / RPM.
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

SWEP.MuzzleEffect = "astw2_halo_ce_muzzle_sniper_rifle"
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
    Pos = Vector(-2, -5, 0),
    Ang = Angle(0.792, 0.017, 0),
    Magnification = 1.1,
}

SWEP.HoldtypeHolstered = "passive"
SWEP.HoldtypeActive = "ar2"
SWEP.HoldtypeSights = "rpg"

SWEP.RejectAttachments = {
    ["ammo_cerberus"] = true, -- fuck cerberus
    ["acwatt_perk_fastbolt"] = true, -- whats the point of this on my weapons?
    ["acwatt_perk_beefficient"] = true, -- never heard of her
    ["hce_anniv"] = true,	-- soz snow but im not hacking another model lol (yeah no thats fair -ss)
}

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_RPG

SWEP.ActivePos = Vector(0, 0, 0)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.HolsterPos = Vector(2, -10, -2)
SWEP.HolsterAng = Angle(-7.036, 60.016, 0)

SWEP.CustomizePos = Vector(1.824, -4.5, -1.897)
SWEP.CustomizeAng = Angle(12.149, 30.547, 0)

SWEP.MeleeTime = 0.5

SWEP.BarrelLength = 20 -- i mean its bullpup-ed AND obrez-ed sooooooooooooooooooo

SWEP.AttachmentElements = {
	 ["avalanche"] = {
        VMSkin = 1,
        WMSkin = 1,
    },
    ["desert"] = {
        VMSkin = 2,
        WMSkin = 2,
    },
    ["gold"] = {
        VMSkin = 3,
        WMSkin = 3,
    },
    ["greatjourney"] = {
        VMSkin = 4,
        WMSkin = 4,
    },
	["woodlands"] = {
        VMSkin = 5,
        WMSkin = 5,
    },
	["muzzle"] = {
        VMBodygroups = {{ind = 1, bg = 1}},
        WMBodygroups = {{ind = 1, bg = 1}},
    },
}

SWEP.ExtraSightDist = 5

SWEP.Attachments = {
	{
        PrintName = "Optic", 
        DefaultAttName = "10x Scope",
        Slot = {"optic", "optic_lp", "optic_sniper"}, -- lol snow where the fuck is the optic_sniper on the original 
        Bone = "Weapon", 
        Offset = {
            vpos = Vector(0, -5, -3.75), 
            vang = Angle(90, 0, -90),
            wpos = Vector(2, 0.739, -5.201),
            wang = Angle(-9.738, 0, 180)
        },
    },
    {
        PrintName = "Muzzle", -- why didnt you just bodygroup the muzzle brake lol
        DefaultAttName = "Standard Muzzle",
        Slot = {"muzzle"},
        Bone = "Weapon",
        Offset = {
            vpos = Vector(0, -4.1, 15),
            vang = Angle(90, 0, -90),
            wpos = Vector(19, 0.689, -7.5),
            wang = Angle(-9, 0, 180)
        },
        InstalledEles = {"muzzle"},		
	},
    {
        PrintName = "Underbarrel",
        Slot = {"foregrip", "bipod", "style_pistol"},
        Bone = "Weapon",
        Offset = {
            vpos = Vector(0, -0.8, 8),
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
        PrintName = "Tactical",
        Slot = "tac",
        Bone = "Weapon",
        Offset = {
            vpos = Vector(0, -2, 13), 
            vang = Angle(90, 0, -90),
            wpos = Vector(12, -0.253, -6.298),
            wang = Angle(-8.829, -0.556, 90)
        },
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
        Bone = "Weapon", 
        Offset = {
            vpos = Vector(1, -2.5, 3.1), 
            vang = Angle(90, 0, -90),
            wpos = Vector(8, 1.75, -3.5),
            wang = Angle(-10.393, 0, 180)
        },
    },
	{
        PrintName = "Skin",
        Slot = {"skin_hcesr"},
        DefaultAttName = "Factory Default",
        FreeSlot = true
    },
}

SWEP.Animations = { --- no bash, im lazy on this one lol
    ["idle"] = {
        Source = "idle",
    },
    ["draw"] = {
        Source = "draw",
        LHIK = false,
        LHIKIn = 0,
        LHIKOut = 0.25,
    },
    ["ready"] = {
        Source = "deploy",
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.25,
    },	
    ["fire"] = {
        Source = "fire",
        Time = 0.9,
        LHIK = false,
        LHIKIn = 0,
        LHIKOut = 0.25,		
    },
    ["fire_iron"] = {
        Source = "iron",
        Time = 1,
        LHIK = false,
        LHIKIn = 0,
        LHIKOut = 0.25,		
    },	
    ["reload"] = {
        Source = "wet",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Checkpoints = {24, 33, 51, 58, 62, 74, 80},
        FrameRate = 30,
        LHIK = true,
        LHIKIn = 0.35,
        LHIKOut = 0.5,
    },
    ["reload_empty"] = {
        Source = "dry",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Checkpoints = {24, 33, 51},
        FrameRate = 30,
        LHIK = true,
        LHIKIn = 0.35,
        LHIKOut = 0.35,
    },
}

--- sounds here ---
--- i might reanimate the normal sniper later idk ---

sound.Add({
	name = 			"ArcCW_Halo_Reanim_SRS.Out",
	channel = 		CHAN_ITEM,
	volume = 		1.0,
	sound = 			"halo_srs_reanim/out.wav"
})

sound.Add({
	name = 			"ArcCW_Halo_Reanim_SRS.In",
	channel = 		CHAN_ITEM,
	volume = 		1.0,
	sound = 			"halo_srs_reanim/in.wav"
})

sound.Add({
	name = 			"ArcCW_Halo_Reanim_SRS.bolt_bck",
	channel = 		CHAN_ITEM,
	volume = 		1.0,
	sound = 			"halo_srs_reanim/boltbck.wav"
})

sound.Add({
	name = 			"ArcCW_Halo_Reanim_SRS.bolt_fwd",
	channel = 		CHAN_ITEM,
	volume = 		1.0,
	sound = 			"halo_srs_reanim/boltfwd.wav"
})

-- nZombies Stuff
SWEP.NZWonderWeapon		= false	-- Is this a Wonder-Weapon? If true, only one player can have it at a time. Cheats aren't stopped, though.
--SWEP.NZRePaPText		= "your text here"	-- When RePaPing, what should be shown? Example: Press E to your text here for 2000 points.
SWEP.NZPaPName				= "SRS BULL"
--SWEP.NZPaPReplacement 	= ""	-- If Pack-a-Punched, replace this gun with the entity class shown here.
SWEP.NZPreventBox		= false	-- If true, this gun won't be placed in random boxes GENERATED. Users can still place it in manually.
SWEP.NZTotalBlackList	= false	-- if true, this gun can't be placed in the box, even manually, and can't be bought off a wall, even if placed manually. Only code can give this gun.

SWEP.Primary.MaxAmmo = 28
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
self.PrintName = "SRS BULL"
self.MagExtender = true
self.ActivateElements = {"extendedmag"}
self.Primary.MaxAmmo = 42
self.Damage = 110
self.DamageMin = 200
self.Delay = 60 / 120
return true
end