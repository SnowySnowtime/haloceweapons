SWEP.Base = "arccw_base_melee"
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ArcCW - Halo 2" -- edit this if you like
SWEP.AdminOnly = false

SWEP.PrintName = "H2 | Energy Sword"
SWEP.TrueName = "Type 1 Energy Sword"
SWEP.Trivia_Class = "Melee Weapon | H2 Anims"
SWEP.Trivia_Desc = "The Type-1 Energy Weapon/Sword (T-1 EW/S), commonly known as the energy sword or the plasma sword, is a traditional Sangheili close-quarters weapon. The energy sword is intended to express its owner's personal skill, clerical honor, and combat viability."
SWEP.Trivia_Manufacturer = "Covenant"
SWEP.RenderGroup = RENDERGROUP_TRANSLUCENT

SWEP.Slot = 0

SWEP.NotForNPCs = true

SWEP.UseHands = true

SWEP.ViewModel = "models/snowysnowtime/c_energysword.mdl"
SWEP.WorldModel = "models/snowysnowtime/w_energysword.mdl"
SWEP.ViewModelFOV = 60

SWEP.DefaultSkin = 0
SWEP.DefaultWMSkin = 0

SWEP.MeleeAttackTime = 0.15
SWEP.Melee2AttackTime = 0.3

SWEP.Primary.Ammo = ""

SWEP.PrimaryBash = true
SWEP.CanBash = true
SWEP.MeleeDamageType = DMG_SLASH
SWEP.MeleeDamage = 60
SWEP.MeleeRange = 70
SWEP.MeleeTime = 0.45
SWEP.MeleeGesture = ACT_HL2MP_GESTURE_RANGE_ATTACK_MELEE

SWEP.Melee2 = true
SWEP.Melee2Damage = 150
SWEP.Melee2Range = 95
SWEP.Melee2Time = 2
SWEP.Melee2Gesture = ACT_HL2MP_GESTURE_RANGE_ATTACK_MELEE2

SWEP.MeleeSwingSound = ""
SWEP.MeleeMissSound = ""
SWEP.MeleeHitSound = "energysword_envimp"
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
	["sword"] = {
        VMBodygroups = {{ind = 0, bg = 1}},
        WMBodygroups = {{ind = 0, bg = 1}},
    },
	["bloodsword"] = {
        VMBodygroups = {{ind = 0, bg = 2}},
        WMBodygroups = {{ind = 0, bg = 2}},
    },
}

SWEP.Attachments = {
	{
        PrintName = "Model",
        Slot = {"model_es"},
        DefaultAttName = "Halo 3 Model",
		Bone = "frame blades", -- relevant bone any attachments will be mostly referring to
		Offset = {
            vpos = Vector(-0.01, 0, 0.005), -- offset that the attachment will be relative to the bone
            vang = Angle(0, 0, 0),
            wpos = Vector(-4.9, 4.5, -3.5),
            wang = Angle(-12, -1.155, 175)
        },
        FreeSlot = true
    },
}

SWEP.Animations = {
	["idle"] = {
        Source = "idle_h2",
    },
	["draw"] = {
        Source = "draw_h2",
		SoundTable = {{s = "h2.esdeploy", t = 0.05}},
    },
    ["bash"] = {
        Source = {"melee1_h2", "melee2_h2"},
		SoundTable = {{s = "h2a.eslunge", t = 0.035},{s = "h2a.esshimmer", t = 0.009}},
    },
    ["bash2"] = {
		Source = {"lunge1_h2", "lunge2_h2"},
		SoundTable = {{s = "h2a.eslunge", t = 0.035},{s = "h2a.esshimmer", t = 0.009}},
		Time = 50/30,
    },
	["enter_inspect"] = {
        Source = "fidget_h2",
    },
}

SWEP.IronSightStruct = false

SWEP.BashPreparePos = Vector(0, 0, 0)
SWEP.BashPrepareAng = Angle(0, 20, 0)

SWEP.BashPos = Vector(0, 0, 0)
SWEP.BashAng = Angle(35, -30, 0)

SWEP.HolsterPos = Vector(0, 0, 0)
SWEP.HolsterAng = Angle(0, 0, 0)

SWEP.ActivePos = Vector(-1.5, 0, 0.5)
SWEP.ActiveAng = Angle(7, 0, 0)

SWEP.CustomizePos = Vector(-1.5, 0, 0.5)
SWEP.CustomizeAng = Angle(7, 0, 0)

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
return true
end