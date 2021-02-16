SWEP.Base = "arccw_base"
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ArcCW - Halo Reanimated" -- edit this if you like
SWEP.AdminOnly = false

SWEP.PrintName = "Magnum"
SWEP.TrueName = "M6D PDWS"
SWEP.Trivia_Class = "Pistol"
SWEP.Trivia_Desc = "The M6D is a recoil-operated, magazine-fed handgun, chambered in 12.7x40mm ammunition, typically employed with semi-armor-piercing, high-explosive (SAPHE) rounds of that chambering, and feeding from 12-round detachable box magazines. It has also been known to be chambered in the .450 Magnum load.[The weapon is somewhat unusual for a handgun in that it is capable of both semi-automatic and automatic firing. The M6D is one of the M6 series’ upscaled variants, being larger than non-upscaled M6s by roughly 117%. The M6D is also an officer’s model, and in this capacity was employed by Captain Jacob Keyes on the UNSC Pillar of Autumn. Like other officer’s model M6s, the weapon is fitted with smart-linked KFA-2 optic for utilization by those employing a heads-up display."
SWEP.Trivia_Manufacturer = "Misriah Armory"
SWEP.Trivia_Calibre = "12.7x40mmn M225 SAP-HE"
SWEP.Trivia_Mechanism = "Semi-Auto"
SWEP.Trivia_Country = "Reanimated by Fleshy Mammal"
SWEP.Trivia_Year = 2460

SWEP.Slot = 1

if GetConVar("arccw_truenames"):GetBool() then SWEP.PrintName = SWEP.TrueName end

SWEP.UseHands = true

SWEP.ViewModel = "models/snowysnowtime/c_magnum_reanim_fml.mdl"
SWEP.WorldModel = "models/snowysnowtime/w_m6d.mdl"
SWEP.ViewModelFOV = 70

    SWEP.Recoil = 2
	SWEP.RecoilSide = 1
	SWEP.Damage = 40
	SWEP.DamageMin = 45
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
        Damage = 40,
        DamageMin = 45,
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
        Damage = 35,
        DamageMin = 40,
        AccuracyMOA = 0.06,
        HipDispersion = 100,
        MoveDispersion = 350,
        ChamberSize = 1,
    }
}

SWEP.Range =  100 -- in METRES
SWEP.Penetration = 100
SWEP.DamageType = DMG_BULLET
SWEP.ShootEntity = nil -- entity to fire, if any
SWEP.MuzzleVelocity = 6000 -- projectile or phys bullet muzzle velocity
-- IN M/S

SWEP.Primary.ClipSize = 12 -- DefaultClip is automatically set.
SWEP.ExtendedClipSize = 24
SWEP.ReducedClipSize = 8

SWEP.Delay = 60 / 210 -- 60 / RPM.
SWEP.Num = 1 -- number of shots per trigger pull.
SWEP.Firemodes = {
    {
        Mode = 2,
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

SWEP.ShootSound = "hce_magnumfire"
SWEP.ShootSoundSilenced = "hcesup"
SWEP.DistantShootSound = "m6_lod"

SWEP.TracerNum = 1 -- tracer every X
SWEP.Tracer = nil
SWEP.MuzzleEffect = "astw2_halo_ce_muzzle_pistol"
SWEP.ImpactEffect = "hce_pistol_impact"
SWEP.ShellModel = "models/shells/shell_338mag.mdl"
SWEP.ShellPitch = 80
SWEP.ShellScale = 1.5

SWEP.MuzzleEffectAttachment = 1 -- which attachment to put the muzzle on
SWEP.CaseEffectAttachment = 2 -- which attachment to put the case effect on

SWEP.SightTime = 0.35
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
    Pos = Vector(-2.76, 1, 0.36),
    Ang = Angle(0, 0, 0),
    Magnification = 1.5,
}

SWEP.HoldtypeHolstered = "normal"
SWEP.HoldtypeActive = "pistol"
SWEP.HoldtypeSights = "revolver"

SWEP.RejectAttachments = {
    ["ammo_cerberus"] = true, -- fuck cerberus
    ["acwatt_perk_fastbolt"] = true, -- whats the point of this on my weapons?
    ["acwatt_perk_beefficient"] = true, -- never heard of her
    ["foregrip_boondoggle"] = true, -- looks fucking stupid
    ["foregrip_boondoggle2"] = true, -- looks fucking stupid
    ["foregrip_perfunctory"] = true, -- looks fucking stupid
    ["foregrip_perfunctory2"] = true, -- looks fucking stupid
}

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_357

SWEP.ActivePos = Vector(-0.5, 6, -1)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.HolsterPos = Vector(1, 0, -6.5)
SWEP.HolsterAng = Angle(40, 0, 0)

SWEP.BarrelOffsetSighted = Vector(0, 0, -1)
SWEP.BarrelOffsetHip = Vector(2, 0, -2)

SWEP.CustomizePos = Vector(2.824, 1, -1.897)
SWEP.CustomizeAng = Angle(12.149, 30.547, 0)

SWEP.BarrelLength = 17
SWEP.AttachmentElements = {
    ["cherry"] = {
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
        VMSkin = 5,
        WMSkin = 5,
    },
	["hazard"] = {
        VMSkin = 4,
        WMSkin = 4,
    },
	["toy"] = {
        VMSkin = 6,
        WMSkin = 6,
    },
	["woodlands"] = {
        VMSkin = 7,
        WMSkin = 7,
    },
	["anniv"] = {
        VMBodygroups = {{ind = 0, bg = 1}},
        WMBodygroups = {{ind = 0, bg = 1}},
    },
}

SWEP.ExtraSightDist = 8

SWEP.Attachments = {
	{
        PrintName = "Optic", -- print name
        DefaultAttName = "Ironsights",
        Slot = {"optic", "optic_lp"}, -- what kind of attachments can fit here, can be string or table
        Bone = "Weapon", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vpos = Vector(0, -3.5, 4), -- offset that the attachment will be relative to the bone
            vang = Angle(90, 0, -90),
            wpos = Vector(6, 2, -4.4),
            wang = Angle(-8.829, 0, 180)
        },
    },
	{
        PrintName = "Muzzle",
        DefaultAttName = "Standard Muzzle",
        Slot = {"muzzle"},
        Bone = "Weapon",
        Offset = {
            vpos = Vector(0, -2.7, 5.5),
            vang = Angle(90, 0, -90),
            wpos = Vector(8.1, 2, -3.6),
            wang = Angle(0, 0, 180)
        },
		VMScale = Vector(0.7, 0.7, 0.7),
    },
    {
        PrintName = "Stock",
        Slot = "stock",
        DefaultAttName = "Standard Stock"
    },
	{
        PrintName = "Underbarrel",
        Slot = "style_pistol",
        DefaultAttName = "None",
		Bone = "Weapon",
		Offset = {
            vpos = Vector(-0.04, -2, 5),
            vang = Angle(90, 0, -90),
            wpos = Vector(10, 2, -3.9),
            wang = Angle(-2.829, -4.9, 180)
        },
    },
	{
        PrintName = "Tactical",
        Slot = "tac",
        Bone = "Weapon",
        Offset = {
            vpos = Vector(0, -3.5, 5), -- offset that the attachment will be relative to the bone
            vang = Angle(90, 0, -90),
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
        Bone = "Weapon", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vpos = Vector(0.7, -2.535, 4.25), -- offset that the attachment will be relative to the bone
            vang = Angle(90, 0, -90),
            wpos = Vector(6, 2.4, -3.5),
            wang = Angle(-10.393, 0, 180)
        },
		VMScale = Vector(0.7, 0.7, 0.7),
    },
	{
        PrintName = "Skin",
        Slot = {"skin_hcem6d"},
        DefaultAttName = "Factory Default",
        FreeSlot = true
    },
}
SWEP.Hook_TranslateAnimation = function(wep, anim)
    if wep.Attachments[9].Installed == "hce_anniv" or wep.Attachments[9].Installed == "hce_annivsound" then
		local annivtag = (
			anim == "reload_empty" or
			anim == "reload"
		)
		
		if annivtag then
			return anim .. "_anal" -- lol
		end
    end
end

SWEP.Hook_GetShootSound = function(wep, sound)
    if wep.Attachments[9].Installed == "hce_anniv" or wep.Attachments[9].Installed == "hce_annivsound" then
		return "hcea_magnumfire"
    end
end

SWEP.Animations = {
	["fire_iron"] = {
        Source = "iron",
    },
	["ready"] = {
        Source = "deploy",
    },	
    ["draw"] = {
        Source = "draw",
        LHIK = false,
        LHIKIn = 0,
        LHIKOut = 0.25,
    },
    ["draw_empty"] = {
        Source = "draw_empty",
        LHIK = false,
        LHIKIn = 0,
        LHIKOut = 0.25,
    },	
    ["fire"] = {
        Source = "fire",
		Time = 0.85,
    },
    ["fire_empty"] = {
        Source = "fire_empty",
		Time = 0.85,
    },	
    ["fire_iron"] = {
        Source = "iron",
    },		
    ["fire_iron_empty"] = {
        Source = "iron_empty",
    },		
	["bash"] = {
        Source = "melee",
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.6,
    },
	["bash_empty"] = {
        Source = "melee_empty",
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.6,
    },	
    ["reload"] = {
        Source = "wet",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0.5,
    },
    ["reload_empty"] = {
        Source = "dry",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0.5,
    },
    ["reload_anal"] = {
        Source = "wet_anal",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
		Time = 135/60,		
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0.5,
    },
    ["reload_empty_anal"] = {
        Source = "dry_anal",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
		Time = 180/60,
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0.5,
    },	
}


sound.Add({
	name = 			"ArcCW_Halo_Reanim_M6.Out",
	channel = 		CHAN_ITEM,
	volume = 		1.0,
	sound = 			"m6_reanim/out.wav"
})

sound.Add({
	name = 			"ArcCW_Halo_Reanim_M6.Foley",
	channel = 		CHAN_ITEM,
	volume = 		1.0,
	sound = 			"m6_reanim/foley.wav"
})

sound.Add({
	name = 			"ArcCW_Halo_Reanim_M6.In",
	channel = 		CHAN_ITEM,
	volume = 		1.0,
	sound = 			"m6_reanim/in.wav"
})

sound.Add({
	name = 			"ArcCW_Halo_Reanim_M6.Bolt1",
	channel = 		CHAN_ITEM,
	volume = 		1.0,
	sound = 			"m6_reanim/bolt1.wav"
})

sound.Add({
	name = 			"ArcCW_Halo_Reanim_M6.Bolt2",
	channel = 		CHAN_ITEM,
	volume = 		1.0,
	sound = 			"m6_reanim/bolt2.wav"
})

sound.Add({
	name = 			"ArcCW_Halo_Reanim_M62.Out",
	channel = 		CHAN_ITEM,
	volume = 		1.0,
	sound = 			"m6_reanim/anal_out.wav"
})

sound.Add({
	name = 			"ArcCW_Halo_Reanim_M62.Foley",
	channel = 		CHAN_ITEM,
	volume = 		1.0,
	sound = 			"m6_reanim/anal_foley.wav"
})

sound.Add({
	name = 			"ArcCW_Halo_Reanim_M62.In",
	channel = 		CHAN_ITEM,
	volume = 		1.0,
	sound = 			"m6_reanim/anal_in.wav"
})

sound.Add({
	name = 			"ArcCW_Halo_Reanim_M62.Bolt1",
	channel = 		CHAN_ITEM,
	volume = 		1.0,
	sound = 			"m6_reanim/anal_bolt1.wav"
})

sound.Add({
	name = 			"ArcCW_Halo_Reanim_M62.Bolt2",
	channel = 		CHAN_ITEM,
	volume = 		1.0,
	sound = 			"m6_reanim/anal_bolt2.wav"
})

-- nZombies Stuff
SWEP.NZWonderWeapon		= false	-- Is this a Wonder-Weapon? If true, only one player can have it at a time. Cheats aren't stopped, though.
--SWEP.NZRePaPText		= "your text here"	-- When RePaPing, what should be shown? Example: Press E to your text here for 2000 points.
SWEP.NZPaPName				= "God Pistol"
--SWEP.NZPaPReplacement 	= ""	-- If Pack-a-Punched, replace this gun with the entity class shown here.
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
self.Primary.ClipSize = 12
self.Primary.MaxAmmo = 120
self.Damage = 100
self.DamageMin = 105
self.Delay = 60 / 210
return true
end