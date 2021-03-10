SWEP.Base = "arccw_base"
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ArcCW - Halo Online" -- edit this if you like
SWEP.AdminOnly = false

SWEP.PrintName = "HO | Battle Rifle"
SWEP.TrueName = "BR55"
SWEP.Trivia_Class = "Battle Rifle | Halo Online Variant Pack 1"
SWEP.Trivia_Desc = "The BR55 Service Rifle is a gas-operated, magazine-fed, mid-to-long range weapon capable of semi-automatic, fully automatic, and burst-firing modes. The BR55, having a rifled barrel, is 89.9cm long and is fitted with a scope for increased accuracy. The scope is mounted on the optics rail. The safety is also located above the handle of the weapon. The weapon fires the M634 X-HP-SAP round from a 36-round magazine. Additionally, the weapon features a scope attachment capable of 2x magnification. In addition to its initial role, the BR55 battle rifle can also fulfill the role of a designated marksman rifle."
SWEP.Trivia_Manufacturer = "Misriah Armory"
SWEP.Trivia_Calibre = "9.5x40mm M634 X-HP-SAP"
SWEP.Trivia_Mechanism = "Semi-Auto"

SWEP.Slot = 3

if GetConVar("arccw_truenames"):GetBool() then SWEP.PrintName = SWEP.TrueName end

SWEP.UseHands = true

--  You will need this for the journey ahead
--  Probably should set this to your first mode
	SWEP.Recoil = 0.3
	SWEP.RecoilSide = 0.3
	SWEP.Damage = 17
	SWEP.DamageMin = 17
	SWEP.AccuracyMOA = 0.01
	SWEP.HipDispersion = 125
	SWEP.JumpDispersion = 0
	SWEP.ChamberSize = 0

local balance = {
    [0] = {
        -- HaloCW
        Recoil = 0.3,
        RecoilSide = 0.3,
        Damage = 17,
        DamageMin = 17,
        AccuracyMOA = 0.01,
        HipDispersion = 125,
        JumpDispersion = 0,
        ChamberSize = 0,
    },
    [1] = {
        -- halo purist
        Recoil = 0,
        RecoilSide = 0,
        Damage = 10,
        DamageMin = 10,
        JumpDispersion = 0,
        HipDispersion = 0,
        MoveDispersion = 0,
        ChamberSize = 0,
    },
    [2] = {
        -- arccw
        Recoil = 0.2,
        RecoilSide = 0.2,
        Damage = 17,
        DamageMin = 17,
        AccuracyMOA = 0.05,
        HipDispersion = 360,
        MoveDispersion = 120,
        ChamberSize = 1,
    }
}

function SWEP:ArcCW_Halo_Setup()
    local val = GetConVar("arccw_hce_bal"):GetInt()
    for i, v in pairs(balance[val]) do
        self[i] = v
    end
end

SWEP.MeleeSwingSound = ""
SWEP.MeleeMissSound = ""
SWEP.MeleeHitSound = "hceworld"
SWEP.MeleeHitNPCSound = "hceslap"

SWEP.ViewModel = "models/snowysnowtime/ho/c_br1.mdl"
SWEP.WorldModel = "models/snowysnowtime/ho/c_br1.mdl"
SWEP.ViewModelFOV = 75
SWEP.WorldModelOffset = {
    pos        =    Vector(-4.75, 4.7, -3.5),
    ang        =    Angle(-12, 0, 175),
    bone    =    "ValveBiped.Bip01_R_Hand",
    scale   =   1
}

SWEP.Range =  100 -- in METRES
SWEP.Penetration = 30
SWEP.DamageType = DMG_BULLET
SWEP.ShootEntity = nil -- entity to fire, if any
SWEP.MuzzleVelocity = 700 -- projectile or phys bullet muzzle velocity
-- IN M/S

SWEP.TracerNum = 1 -- tracer every X
SWEP.Tracer = "effect_astw2_halo3_tracer_br" -- tracer every X
SWEP.TracerCol = Color(25, 255, 25)
SWEP.TracerWidth = 3

SWEP.Primary.ClipSize = 36 -- DefaultClip is automatically set.
SWEP.ExtendedClipSize = 45
SWEP.ReducedClipSize = 24

SWEP.Delay = 60 / 900 -- 60 / RPM.
SWEP.Num = 1 -- number of shots per trigger pull.
SWEP.Firemodes = {
    {
        Mode = -3,
		RunawayBurst = true,
		PostBurstDelay = 0.255,
    },
	{
        Mode = 1,
    },
    {
        Mode = 0,
    }
}

SWEP.NPCWeaponType = {"weapon_ar2","weapon_smg"}
SWEP.NPCWeight = 25

SWEP.ManualAction = false

SWEP.Primary.Ammo = "357" -- what ammo type the gun uses
SWEP.MagID = "hs338" -- the magazine pool this gun draws from

SWEP.ShootVol = 140 -- volume of shoot sound
SWEP.ShootPitch = 100 -- pitch of shoot sound

SWEP.FirstShootSound = "br_fire2"
SWEP.ShootSound = "br_fire2"
SWEP.ShootSoundSilenced = "hcesup"
SWEP.DistantShootSound = "br_lod"

SWEP.MuzzleEffect = "astw2_halo_2_muzzle_battle_rifle"
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
    Pos = Vector(-3.49, -2, -1),
	Ang = Angle(-0.76, 0.175, 0),
    Magnification = 1.5,
}

SWEP.HoldtypeHolstered = "passive"
SWEP.HoldtypeActive = "ar2"
SWEP.HoldtypeSights = "rpg"

SWEP.RejectAttachments = {
    ["ammo_cerberus"] = true, -- fuck cerberus
    ["acwatt_perk_fastbolt"] = true, -- whats the point of this on my weapons?
    ["acwatt_perk_beefficient"] = true, -- never heard of her
}

SWEP.MeleeTime = 1.2

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_RPG

SWEP.ActivePos = Vector(0, 0, 0)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.HolsterPos = Vector(2, -5.5, -2)
SWEP.HolsterAng = Angle(0, 40, -15)

SWEP.BarrelOffsetSighted = Vector(0, 0, -1)
SWEP.BarrelOffsetHip = Vector(2, 0, -2)

SWEP.CustomizePos = Vector(2.824, -1, -2.897)
SWEP.CustomizeAng = Angle(12.149, 30.547, 0)

SWEP.BarrelLength = 35
SWEP.AttachmentElements = {
	["acc"] = {
        VMBodygroups = {{ind = 0, bg = 1}},
        WMBodygroups = {{ind = 0, bg = 1}},
		NameChange = "BR55-L",
		TrueNameChange = "BR55-L",
    },
	["mag"] = {
        VMBodygroups = {{ind = 0, bg = 2}},
        WMBodygroups = {{ind = 0, bg = 2}},
		NameChange = "XBR55",
		TrueNameChange = "XBR55",
    },
	["rof"] = {
        VMBodygroups = {{ind = 0, bg = 3}},
        WMBodygroups = {{ind = 0, bg = 3}},
		NameChange = "BR55-R65 Barrage",
		TrueNameChange = "BR55-R65 Barrage",
    },
	["heavy"] = {
        VMBodygroups = {{ind = 0, bg = 4}},
        WMBodygroups = {{ind = 0, bg = 4}},
		NameChange = "BR55-D7",
		TrueNameChange = "BR55-D7",
		AttPosMods = {
             [2] = {
                vpos = Vector(3.7, -0.65, 4.824), -- offset that the attachment will be relative to the bone
				vang = Angle(0, 0, 0),
				wpos = Vector(8, 1.3, -7.55),
				wang = Angle(-12, -1.155, 175)
				},
		},
    },
	["rng"] = {
        VMBodygroups = {{ind = 0, bg = 5}},
        WMBodygroups = {{ind = 0, bg = 5}},
		NameChange = "BR55-S9",
		TrueNameChange = "BR55-S9",
    },
	["pow"] = {
        VMBodygroups = {{ind = 0, bg = 6}},
        WMBodygroups = {{ind = 0, bg = 6}},
		NameChange = "BR85HB",
		TrueNameChange = "BR85HB",
    },
}

SWEP.ExtraSightDist = 15

SWEP.Attachments = {
	{
        PrintName = "Optic", -- print name
        DefaultAttName = "No Sights",
        Slot = {"halo_optics"}, -- what kind of attachments can fit here, can be string or table
        Bone = "gun", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vpos = Vector(5.8, -0.20, 7.75), -- offset that the attachment will be relative to the bone
            vang = Angle(0, 0, 0),
            wpos = Vector(8, 1.3, -7.55),
            wang = Angle(-12, -1.155, 175)
        },
		Installed = "optic_ho_scope_nml",
		ExcludeFlags = {"heavy","dmg"},
    },
    {
        PrintName = "Tactical",
        Slot = "tac",
        Bone = "gun",
        Offset = {
            vpos = Vector(15, -0.5, 5.7), -- offset that the attachment will be relative to the bone
            vang = Angle(0, 0, 90),
            wpos = Vector(15, 0.65, -7.75),
            wang = Angle(-12, -1.2, 0),
        },
    },
    {
        PrintName = "Perk",
        Slot = {"perk"}
    },
	{
        PrintName = "Ammo Type",
        Slot = "ammo_halo"
    },
	{
        PrintName = "Charm",
        Slot = "charm",
        FreeSlot = true,
        Bone = "gun", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vpos = Vector(3, -0.95, 4.3), -- offset that the attachment will be relative to the bone
            vang = Angle(0, 0, 0),
            wpos = Vector(7.15, 1.35, -5.1),
            wang = Angle(-12, 0, 180)
        },
		VMScale = Vector(0.7, 0.7, 0.7),
		WMScale = Vector(0.7, 0.7, 0.7),
    },
	{
        PrintName = "Variant",
        Slot = {"variant_brho1"},
        DefaultAttName = "Standard Issue",
		Bone = "gun", -- relevant bone any attachments will be mostly referring to
		Offset = {
            vpos = Vector(-0.01, 0, 0.005), -- offset that the attachment will be relative to the bone
            vang = Angle(0, 0, 0),
            wpos = Vector(-4.9, 4.5, -3.5),
            wang = Angle(-12, -1.155, 175)
        },
        FreeSlot = true
    },
	{
        PrintName = "Animation Set",
        Slot = {"anim_br"},
        DefaultAttName = "Halo 3 Anims",
		Bone = "gun", -- relevant bone any attachments will be mostly referring to
		Offset = {
            vpos = Vector(0, 0, 6.87), -- offset that the attachment will be relative to the bone
            vang = Angle(0, 0, 0),
            wpos = Vector(-4.9, 4.5, -3.5),
            wang = Angle(-12, -1.155, 175)
        },
        FreeSlot = true
    },
}

SWEP.Animations = {
    ["idle"] = {
        Source = "idle",
        Time = 99/30
    },
	["idle_sights"] = {
		Source = "aim",
	},
	["enter_sight"] = {
		Source = "aim",
	},
	["exit_sights"] = {
		Source = "aim",
	},
	["enter_inspect"] = {
		Source = "pose1",
	},
	["exit_inspect"] = {
		Source = "pose2",
		Time = 87/30,
	},
	["fire_iron"] = {
        Source = {"aim"},
		Time = 1/30,
    },
    ["draw"] = {
        Source = "draw",
        Time = 18/30,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.25,
    },
    ["fire"] = {
        Source = { "fire1","fire2","fire3" },
        Time = 5/30,
    },
	["bash"] = {
        Source = {"melee1","melee2"},
		Time = 29/30,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.6,
    },
    ["reload"] = {
        Source = "reload",
        Time = 57/30,
		SoundTable = {{s = "h3.br_reload1", t = 0.15},{s = "h3.br_reload2", t = 0.75},{s = "h3.br_reload3", t = 1.35}},
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        Checkpoints = {12, 31, 48},
        FrameRate = 30,
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0.5,
    },
    ["reload_empty"] = {
        Source = "reload",
        Time = 57/30,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
		SoundTable = {{s = "h3.br_reload1", t = 0.15},{s = "h3.br_reload2", t = 0.75},{s = "h3.br_reload3", t = 1.35}},
        Checkpoints = {12, 31, 48},
        FrameRate = 30,
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0.5,
    },
	["idle_85"] = {
        Source = "idle_85",
        Time = 99/30
    },
	["idle_sights_85"] = {
		Source = "aim_85",
	},
	["enter_sight_85"] = {
		Source = "aim_85",
	},
	["exit_sights_85"] = {
		Source = "aim_85",
		Time = 1/1,
	},
	["enter_inspect_85"] = {
		Source = "pose1_85",
	},
	["exit_inspect_85"] = {
		Source = "pose2_85",
		Time = 87/30,
	},
	["fire_iron_85"] = {
        Source = {"aim_85"},
		Time = 1/30,
    },
    ["draw_85"] = {
        Source = "draw_85",
        Time = 18/30,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.25,
    },
    ["fire_85"] = {
        Source = { "fire0_85","fire1_85","fire2_85" },
        Time = 5/30,
    },
	["bash_85"] = {
        Source = {"melee1_85","melee2_85"},
		Time = 29/30,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.6,
    },
    ["reload_85"] = {
        Source = "reload_85",
        Time = 57/30,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
		SoundTable = {{s = "h3.br_reload1", t = 0.1},{s = "h3.br_reload2", t = 0.7},{s = "h3.br_reload3", t = 1.3}},
        Checkpoints = {12, 31, 48},
        FrameRate = 30,
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0.5,
    },
    ["reload_empty_85"] = {
        Source = "reload_85",
        Time = 57/30,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
		SoundTable = {{s = "h3.br_reload1", t = 0.1},{s = "h3.br_reload2", t = 0.7},{s = "h3.br_reload3", t = 1.3}},
        Checkpoints = {12, 31, 48},
        FrameRate = 30,
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0.5,
    },
}

SWEP.Hook_GetShootSound = function(wep, sound)
	local brtype = {
		["h3_bronline"] = "br_fire3",
		["h3_bronline_2"] = "br_fire4",
		["h3_bronline_3"] = "br_fire8",
		["h3_bronline_4"] = "br_fire5",
		["h3_bronline_5"] = "br_fire6",
		["h3_bronline_6"] = "br_fire7",
	}
	local attslot = wep.Attachments[6].Installed
	--print ( attslot ) keeping this for future use in other weapons
	--print ( brtype[attslot] )
    return brtype[attslot]
end

SWEP.Hook_BulletHit = function(wep, data) -- please fesiug help me im so inefficient at coding
    if CLIENT then return end
	local brhittype = {
		["h3_bronline"] = {
			["HEAD"] = 0.8,
			["LIMBS"] = 2.5,
		},
		["h3_bronline_2"] = {
			["HEAD"] = 0.8,
			["LIMBS"] = 3,
		},
		["h3_bronline_3"] = {
			["HEAD"] = 0.65,
			["LIMBS"] = 3,
		},
		["h3_bronline_4"] = {
			["HEAD"] = 0.8,
			["LIMBS"] = 2.6,
		},
		["h3_bronline_5"] = {
			["HEAD"] = 6,
			["LIMBS"] = 3,
		},
		["h3_bronline_6"] = {
			["HEAD"] = 0.8,
			["LIMBS"] = 3,
		},
	}
	
	local attslot = wep.Attachments[6].Installed
	-- print ( attslot )
	local dmgHead = 0.8
	local dmgLimbs = 3
		if attslot then 
		dmgHead = brhittype[attslot].HEAD
		dmgLimbs = brhittype[attslot].LIMBS
		end
	local HtGrpHlo = data.tr.HitGroup
	local ezlimbs = (
			HtGrpHlo == HITGROUP_LEFTARM or
			HtGrpHlo == HITGROUP_RIGHTARM or
			HtGrpHlo == HITGROUP_LEFTLEG or
			HtGrpHlo == HITGROUP_RIGHTLEG
		)
	
	if data.tr.HitGroup == HITGROUP_HEAD then
		data.damage = data.damage * dmgHead
	end
	if ezlimbs then
		data.damage = data.damage * dmgLimbs
	end
end

SWEP.Hook_TranslateAnimation = function(wep, anim)
    if wep.Attachments[7].Installed == "h3_bronline_anim" then
		local annivtag = (
			anim == "idle" or
			anim == "idle_sights" or
			anim == "enter_sight" or
			anim == "exit_sight" or
			anim == "enter_inspect" or
			anim == "exit_inspect" or
			anim == "fire_iron" or
			anim == "draw" or
			anim == "fire" or
			anim == "bash" or
			anim == "reload" or
			anim == "reload_empty"
		)
		
		if annivtag then
			return anim .. "_85" -- lol
		end
    end
end