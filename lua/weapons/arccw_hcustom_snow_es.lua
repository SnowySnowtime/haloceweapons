SWEP.Base = "arccw_base_melee"
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ArcCW - Halo 3" -- edit this if you like
SWEP.AdminOnly = false

SWEP.PrintName = "Energy Sword"
SWEP.TrueName = "Type 1 EWS"
SWEP.Trivia_Class = "Melee Weapon"
SWEP.Trivia_Desc = "The Type-1 Energy Weapon/Sword (T-1 EW/S), commonly known as the energy sword or the plasma sword, is a traditional Sangheili close-quarters weapon. The energy sword is intended to express its owner's personal skill, clerical honor, and combat viability."
SWEP.Trivia_Manufacturer = "Covenant"

SWEP.Slot = 0

SWEP.NotForNPCs = true

SWEP.UseHands = true

SWEP.ViewModel = "models/snowysnowtime/c_energysword.mdl"
SWEP.WorldModel = "models/snowysnowtime/w_es.mdl"
SWEP.ViewModelFOV = 60

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
SWEP.MeleeTime = 1.7
SWEP.MeleeGesture = ACT_HL2MP_GESTURE_RANGE_ATTACK_MELEE

SWEP.Melee2 = true
SWEP.Melee2Damage = 300
SWEP.Melee2Range = 95
SWEP.Melee2Time = 2.4
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
}

SWEP.Animations = {
	["idle"] = {
        Source = "idle",
        Time = 2.5,
    },
    ["draw"] = {
        Source = "draw",
        Time = 2,
    },
    ["ready"] = {
        Source = "draw",
        Time = 2,
    },
    ["bash"] = {
        Source = {"fire", "fire2"},
        Time = 1.7,
    },
    ["bash2"] = {
		Source = "fire3",
        Time = 2.2,
    },
    ["inspect"] = {
        Source = "fidget",
        Time = 1,
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
    SWEP.Icon = "vgui/ttt/arccw_melee_machete"
    SWEP.MeleeDamage = 80
    SWEP.Melee2Damage = 105
end