SWEP.Base = "arccw_base"
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ArcCW - Halo Custom Edition" -- edit this if you like
SWEP.AdminOnly = false

SWEP.PrintName = "Assault Rifle"
SWEP.TrueName = "MA5C ICWS"
SWEP.Trivia_Class = "Assault Rifle"
SWEP.Trivia_Desc = "The MA5B was in service to some extent during the Insurrection, being considered a standard weapon in September of 2525, and played a significant role in the Covenant War that followed. MA5Bs were employed by various SPARTAN-IIs during Operation: SILENT STORM and the ensuing Netherop engagement in 2526. In 2531, the marine compliment of the UNSC Spirit of Fire made use of the MA5B on Harvest, Arcadia and Etran Harborage, while members of Blue Team deployed with it on their mission to the decommissioned Platform 966A the same year, and again during the Battle of Jericho VII in 2535. The MA5B saw particularly heavy use in 2552. On Reach, it was wielded by Orbital Drop Shock Troopers sent to engage John-117 during the live-fire test of MJOLNIR Mark V and Cortana, and by the Spartans of Red Team during the defense of Orbital Defense Generators. John-117 and the marine compliment of the UNSC Pillar of Autumn utilized the MA5B throughout the Battle of Halo Alpha, and in the skirmish over Threshold that followed. Spartan personnel during the Onyx conflict also made use of the weapon."
SWEP.Trivia_Manufacturer = "Misriah Armory"
SWEP.Trivia_Calibre = "7.62x51mm M118 FMJ-AP"
SWEP.Trivia_Mechanism = "Automatic"
SWEP.Trivia_Country = "never heard of her"

SWEP.Slot = 3

if GetConVar("arccw_truenames"):GetBool() then SWEP.PrintName = SWEP.TrueName end

SWEP.UseHands = true

SWEP.ViewModel = "models/snowysnowtime/c_fp_cmtar.mdl"
SWEP.WorldModel = "models/halomodels/haloce/w_haloassaultrifle.mdl"
SWEP.ViewModelFOV = 70

SWEP.DefaultBodygroups = "01"


if GetConVar("arccw_hce_bal"):GetInt() == 0 then -- HaloCW
	SWEP.Recoil = 0.2
	SWEP.RecoilSide = 0.2
	SWEP.Damage = 25
	SWEP.DamageMin = 15 -- damage done at maximum range
	SWEP.AccuracyMOA = 45 -- accuracy in Minutes of Angle. There are 60 MOA in a degree.
	SWEP.HipDispersion = 260 -- inaccuracy added by hip firing.
	SWEP.MoveDispersion = 120
	SWEP.JumpDispersion = 0
	SWEP.ChamberSize = 0
elseif GetConVar("arccw_hce_bal"):GetInt() == 1 then -- halo purist
	SWEP.Recoil = 0
	SWEP.RecoilSide = 0
	SWEP.Damage = 25
	SWEP.DamageMin = 18 -- damage done at maximum range
	SWEP.JumpDispersion = 0
	SWEP.HipDispersion = 0
	SWEP.MoveDispersion = 0
	SWEP.ChamberSize = 1
elseif GetConVar("arccw_hce_bal"):GetInt() == 2 then -- arccw
    SWEP.Recoil = 0.2
	SWEP.RecoilSide = 0.2
	SWEP.Damage = 30
	SWEP.DamageMin = 10 -- damage done at maximum range
	SWEP.AccuracyMOA = 50 -- accuracy in Minutes of Angle. There are 60 MOA in a degree.
	SWEP.HipDispersion = 260 -- inaccuracy added by hip firing.
	SWEP.MoveDispersion = 120
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
SWEP.MuzzleVelocity = 600 -- projectile or phys bullet muzzle velocity
-- IN M/S

SWEP.TracerNum = 1 -- tracer every X
SWEP.Tracer 	= "effect_astw2_halo3_tracer_human"

SWEP.Primary.ClipSize = 32 -- DefaultClip is automatically set.
SWEP.ExtendedClipSize = 60
SWEP.ReducedClipSize = 24

SWEP.Delay = 60 / 670 -- 60 / RPM.
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

SWEP.ShootSound = Sound("ar_h3_fire")
SWEP.ShootSoundSilenced = "weapons/arccw/m4a1/m4a1_silencer_01.wav"
SWEP.DistantShootSound = "ar_lod"

SWEP.MuzzleEffect = "astw2_halo_3_muzzle_assault_rifle"
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
SWEP.HoldtypeActive = "ar2"
SWEP.HoldtypeSights = "rpg"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2

SWEP.ActivePos = Vector(0, -2, 0)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.HolsterPos = Vector(3, -3, -0.5)
SWEP.HolsterAng = Angle(-10, 30, -10)

SWEP.BarrelOffsetSighted = Vector(0, 0, -1)
SWEP.BarrelOffsetHip = Vector(2, 0, -2)

SWEP.CustomizePos = Vector(2.824, -4, -1.897)
SWEP.CustomizeAng = Angle(12.149, 30.547, 0)

SWEP.BarrelLength = 30
SWEP.AttachmentElements = {
	["corrosion"] = {
        VMSkin = 1,
        WMSkin = 1,
    },
    ["gold"] = {
        VMSkin = 2,
        WMSkin = 2,
    },
    ["greatjourney"] = {
        VMSkin = 3,
        WMSkin = 3,
    },
	["luckyshot"] = {
        VMSkin = 4,
        WMSkin = 4,
    },
	["squirtgun"] = {
        VMSkin = 5,
        WMSkin = 5,
    },
	["desert"] = {
        VMSkin = 6,
        WMSkin = 6,
    },
	["mcc"] = {
        VMSkin = 7,
        WMSkin = 7,
    },
	["anniv"] = {
        VMBodygroups = {{ind = 0, bg = 2}},
        WMBodygroups = {{ind = 0, bg = 2}},
    },
}
SWEP.Hook_TranslateAnimation = function(wep, anim)
    if wep.Attachments[7].Installed == "hce_anniv" or wep.Attachments[7].Installed == "hce_annivsound" then
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
    if wep.Attachments[7].Installed == "hce_anniv" or wep.Attachments[7].Installed == "hce_annivsound" then
		return "ar_hcea_fire"
    end
end

SWEP.ExtraSightDist = 15

SWEP.Attachments = {
	{
        PrintName = "Optic", -- print name
        DefaultAttName = "10x Scope",
        Slot = {"optic", "optic_lp"}, -- what kind of attachments can fit here, can be string or table
        Bone = "frame gun", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vpos = Vector(10, 0, 7.8), -- offset that the attachment will be relative to the bone
            vang = Angle(0, 0, 0),
            wpos = Vector(6, 2, -4.4),
            wang = Angle(-8.829, 0, 180)
        },
        CorrectivePos = Vector(0, 0, 0),
        CorrectiveAng = Angle(0, 0, 0),
        InstalledEles = {"mount"}
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
            vpos = Vector(15, -0.8, 5), -- offset that the attachment will be relative to the bone
            vang = Angle(0, 0, 90),
            wpos = Vector(6, 1.25, -3),
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
        Bone = "frame gun", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vpos = Vector(9.5, -0.6, 5.25), -- offset that the attachment will be relative to the bone
            vang = Angle(0, 0, 10),
            wpos = Vector(6, 2.4, -3.5),
            wang = Angle(-10.393, 0, 180)
        },
    },
	{
        PrintName = "Skin",
        Slot = {"skin_hcear"},
        DefaultAttName = "Factory Default",
        FreeSlot = true
    },
}

SWEP.Animations = {
    ["idle"] = {
        Source = "idle",
        Time = 4
    },
	["fire_iron"] = {
		Source = { "fire_rand1","fire_rand2","fire_rand3" },
    },
    ["draw"] = {
        Source = "draw",
        Time = 0.76,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.25,
    },
    ["fire"] = {
        Source = { "fire1","fire2","fire3" },
    },
	["bash"] = {
        Source = "melee",
		Time = 1,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.2,
    },
    ["reload"] = {
        Source = "reload",
        Time = 2,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Checkpoints = {24, 33, 51, 58, 62, 74, 80},
        FrameRate = 30,
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0.5,
    },
    ["reload_empty"] = {
        Source = "reload",
        Time = 2,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Checkpoints = {24, 33, 51},
        FrameRate = 30,
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0.5,
    },
}