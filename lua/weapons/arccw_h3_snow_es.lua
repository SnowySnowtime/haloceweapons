SWEP.Base = "arccw_base_melee"
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ArcCW - Halo 3" -- edit this if you like
SWEP.AdminOnly = false

SWEP.PrintName = "Energy Sword"
SWEP.TrueName = "Type 1 Energy Sword"
SWEP.Trivia_Class = "Melee Weapon"
SWEP.Trivia_Desc = "The Type-1 Energy Weapon/Sword (T-1 EW/S), commonly known as the energy sword or the plasma sword, is a traditional Sangheili close-quarters weapon. The energy sword is intended to express its owner's personal skill, clerical honor, and combat viability."
SWEP.Trivia_Manufacturer = "Covenant"

SWEP.Slot = 0

SWEP.NotForNPCs = true

SWEP.UseHands = true

SWEP.ViewModel = "models/snowysnowtime/c_energysword.mdl"
SWEP.WorldModel = "models/snowysnowtime/c_energysword.mdl"
SWEP.ViewModelFOV = 60
SWEP.MirrorWorldModel = true

SWEP.WorldModelOffset = {
    pos        =    Vector(1.25, -9.2, 13.5),
    ang        =    Angle(-50, -20, 12.5),
    bone    =    "ValveBiped.Bip01_R_Hand",
    scale   =   1.3
}

SWEP.DefaultSkin = 0
SWEP.DefaultWMSkin = 0

SWEP.MeleeAttackTime = 0.27
SWEP.Melee2AttackTime = 0.5

SWEP.Primary.Ammo = ""

SWEP.PrimaryBash = true
SWEP.CanBash = true
SWEP.MeleeDamageType = DMG_SLASH
SWEP.MeleeDamage = 105
SWEP.MeleeRange = 70
SWEP.MeleeTime = 1.5
SWEP.MeleeGesture = ACT_HL2MP_GESTURE_RANGE_ATTACK_MELEE

SWEP.Melee2 = true
SWEP.Melee2Damage = 300
SWEP.Melee2Range = 95
SWEP.Melee2Time = 2
SWEP.Melee2Gesture = ACT_HL2MP_GESTURE_RANGE_ATTACK_MELEE2

SWEP.MeleeSwingSound = ""
SWEP.MeleeMissSound = ""
SWEP.MeleeHitSound = "customedition/sword_hit_env4.wav"
SWEP.MeleeHitNPCSound = "energysword_swingimp"

SWEP.NotForNPCs = true

SWEP.Firemodes = {
    {
        Mode = 1,
        PrintName = "MELEE"
    },
}

SWEP.HoldtypeHolstered = "normal"
SWEP.HoldtypeActive = "knife"

SWEP.Primary.ClipSize = -1

SWEP.AttachmentElements = {
}

SWEP.Attachments = {
	{
        PrintName = "Optic", -- print name
        DefaultAttName = "10x Scope",
        Slot = {"optic", "optic_lp"}, -- what kind of attachments can fit here, can be string or table
        Bone = "frame handle", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vpos = Vector(0, 0, 6.2), -- offset that the attachment will be relative to the bone
            vang = Angle(0, 0, 0),
            wpos = Vector(6, 2, -4.4),
            wang = Angle(-8.829, 0, 180)
        },
        CorrectivePos = Vector(0, 0, 0),
        CorrectiveAng = Angle(0, 0, 0),
        InstalledEles = {"mount"}
    },
	{
        PrintName = "Tactical",
        Slot = "tac",
        Bone = "frame handle",
        Offset = {
            vpos = Vector(7.5, -0.75, 3.4), -- offset that the attachment will be relative to the bone
            vang = Angle(0, 0, 90),
            wpos = Vector(6, 1.25, -3),
            wang = Angle(-8.829, -0.556, 90)
        },
    },
    {
        PrintName = "Perk",
        Slot = "perk"
    },
	{
        PrintName = "Underbarrel",
        Slot = {"foregrip", "ubgl", "bipod"},
        Bone = "frame handle",
        Offset = {
            vpos = Vector(0, 0, 0),
            vang = Angle(0, 0, 8),
            wpos = Vector(15, 1, 0),
            wang = Angle(-12, 0, 180)
        },
    },
    {
        PrintName = "Charm",
        Slot = "charm",
        FreeSlot = true,
        Bone = "frame handle", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vpos = Vector(5.5, -1.5, 3.6), -- offset that the attachment will be relative to the bone
            vang = Angle(0, 0, 10),
            wpos = Vector(6, 2.4, -3.5),
            wang = Angle(-10.393, 0, 180)
        },
    },
}

SWEP.Animations = {
	["idle"] = {
        Source = "idle",
        Time = 98/30,
    },
    ["draw"] = {
        Source = "draw",
		SoundTable = {{s = "h3.esdeploy", t = 0.2}},
        Time = 53/30,
    },
    ["ready"] = {
        Source = "draw",
		SoundTable = {{s = "h3.esdeploy", t = 0.2}},
        Time = 53/30,
    },
    ["bash"] = {
        Source = {"fire", "fire2"},
		SoundTable = {{s = "h3.eslungecloth", t = 0.05},{s = "h3.eslunge", t = 0.075}},
        Time = 43/30,
    },
    ["bash2"] = {
		Source = "fire3",
		SoundTable = {{s = "h3.eslungecloth", t = 0.37},{s = "h3.esairlunge", t = 0.03}},
        Time = 60/30,
    },
    ["exit_inspect"] = {
        Source = "fidget",
        Time = 118/30,
    },
}

SWEP.IronSightStruct = false

SWEP.BashPreparePos = Vector(0, 0, 0)
SWEP.BashPrepareAng = Angle(0, 20, 0)

SWEP.BashPos = Vector(0, 0, 0)
SWEP.BashAng = Angle(35, -30, 0)

SWEP.HolsterPos = Vector(0, -3, -2)
SWEP.HolsterAng = Angle(-10, 0, 0)

if engine.ActiveGamemode() == "terrortown" then
    SWEP.Kind = WEAPON_EQUIP1
    SWEP.Slot = 6
    SWEP.CanBuy = { ROLE_TRAITOR }
    SWEP.CanDrop = true
    SWEP.LimitedStock = false
    SWEP.AutoSpawnable = false
    SWEP.EquipMenuData = {
        type = "Weapon",
        desc = "wort wort wort"
    };
    SWEP.Icon = "entities/arccw_h3_snow_es.png"
    SWEP.MeleeDamage = 95
    SWEP.Melee2Damage = 105
end

-- nZombies Stuff
SWEP.NZWonderWeapon		= true	-- Is this a Wonder-Weapon? If true, only one player can have it at a time. Cheats aren't stopped, though.
--SWEP.NZRePaPText		= "your text here"	-- When RePaPing, what should be shown? Example: Press E to your text here for 2000 points.
SWEP.NZPaPName				= "Zealot"
--SWEP.NZPaPReplacement 	= ""	-- If Pack-a-Punched, replace this gun with the entity class shown here.
SWEP.NZPreventBox		= false	-- If true, this gun won't be placed in random boxes GENERATED. Users can still place it in manually.
SWEP.NZTotalBlackList	= false	-- if true, this gun can't be placed in the box, even manually, and can't be bought off a wall, even if placed manually. Only code can give this gun.

-- PaP Function
function SWEP:OnPaP()
self.Ispackapunched = 1
self.PrintName = "Zealot"
self.MeleeDamage = 210
self.Melee2Damage = 600
self.MeleeTime = 0.5
self.Melee2Time = 1.2
return true
end