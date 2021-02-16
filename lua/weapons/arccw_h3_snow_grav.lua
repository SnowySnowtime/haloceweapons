SWEP.Base = "arccw_base_melee"
SWEP.Spawnable = false -- this obviously has to be set to true
SWEP.Category = "ArcCW - Halo 3" -- edit this if you like
SWEP.AdminOnly = false

SWEP.PrintName = "Gravity Hammer"
SWEP.TrueName = "Type 2 EW/H"
SWEP.Trivia_Class = "Clobbering Device"
SWEP.Trivia_Desc = "The Type-2 Energy Weapon/Hammer is a large hammer that serves as an excellent and powerful melee weapon in the game. It is a highly symbolic Jiralhanae weapon that is analogous to the Sangheili Energy Sword. This powerful weapon can also be used to manipulate gravity, allowing it to push opponents away or pull them towards the wielder, as well as deflecting incoming projectiles. This weapon consists of a shaft, head, and blade. A field generator, which is located in the head, emits a kinetic pulse (~4.5 meters)"
SWEP.Trivia_Manufacturer = "Covenant"

SWEP.Slot = 0

SWEP.NotForNPCs = true

SWEP.UseHands = true

SWEP.ViewModel = "models/snowysnowtime/c_fp_gravhammer.mdl"
SWEP.WorldModel = "models/snowysnowtime/w_hammer.mdl"
SWEP.ViewModelFOV = 60

SWEP.DefaultSkin = 0
SWEP.DefaultWMSkin = 0

SWEP.MeleeAttackTime = 0.1
SWEP.Melee2AttackTime = 0.5

SWEP.Primary.Ammo = ""

SWEP.PrimaryBash = true
SWEP.CanBash = true
SWEP.MeleeDamageType = DMG_SLASH
SWEP.MeleeDamage = 30
SWEP.MeleeRange = 70
SWEP.MeleeTime = 1.5
SWEP.MeleeGesture = ACT_HL2MP_GESTURE_RANGE_ATTACK_MELEE

SWEP.Melee2 = false
SWEP.Melee2Damage = 300
SWEP.Melee2Range = 95
SWEP.Melee2Time = 2
SWEP.Melee2Gesture = ACT_HL2MP_GESTURE_RANGE_ATTACK_MELEE2

SWEP.MeleeSwingSound = ""
SWEP.MeleeMissSound = ""
SWEP.MeleeHitSound = "gravityhammerslap"
SWEP.MeleeHitNPCSound = "gravityhammerslap"

SWEP.NotForNPCs = true

SWEP.Firemodes = {
    {
        Mode = 1,
        PrintName = "MELEE"
    },
}

SWEP.HoldtypeHolstered = "normal"
SWEP.HoldtypeActive = "melee2"

SWEP.Primary.ClipSize = -1

SWEP.AttachmentElements = {
}

SWEP.Attachments = {
    {
        PrintName = "Charm",
        Slot = "charm",
        FreeSlot = true,
        Bone = "frame shaft", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vpos = Vector(0, -1.5, 19.6), -- offset that the attachment will be relative to the bone
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
        Time = 53/30,
    },
    ["ready"] = {
        Source = "draw",
        Time = 53/30,
    },
    ["bash"] = {
        Source = "fire",
		SoundTable = {
			{
				s = "gravityhammer",
				p = 100,
				t = 0,
				c = CHAN_ITEM,
			}
		},
        Time = 39/30,
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
    SWEP.CanDrop = false
    SWEP.LimitedStock = false
    SWEP.AutoSpawnable = false
end

--probably. From Stan's TFA Gravity Hammer
DEFINE_BASECLASS("arccw_base")
function SWEP:PrimaryAttack( ... )
	if self.Owner:Crouching() == true then
		local pos = self.Owner:EyePos() + ( self.Owner:GetAimVector() * 27)
		local effectdata = EffectData()
		effectdata:SetOrigin(pos)			-- Where is hits
		effectdata:SetNormal(Vector(0,0,1))		-- Direction of particles
		effectdata:SetEntity(self.Owner)		-- Who done it?
		effectdata:SetScale(1)			-- Size of explosion
		effectdata:SetRadius(10)		-- What texture it hits
		effectdata:SetMagnitude(8)			-- Length of explosion trails
		util.Effect( "arccw_h3_gravhammer", effectdata, true )
		util.BlastDamage( self.Owner, self.Owner, pos, 125, 800 )
	else
		local pos = self.Owner:EyePos() + ( self.Owner:GetAimVector() * 63)
		local effectdata = EffectData()
		effectdata:SetOrigin(pos)			-- Where is hits
		effectdata:SetNormal(Vector(0,0,1))		-- Direction of particles
		effectdata:SetEntity(self.Owner)		-- Who done it?
		effectdata:SetScale(1)			-- Size of explosion
		effectdata:SetRadius(10)		-- What texture it hits
		effectdata:SetMagnitude(8)			-- Length of explosion trails
		
		util.Effect( "arccw_h3_gravhammer", effectdata, true )
		util.BlastDamage( self.Owner, self.Owner, pos, 100, 500 )
	end
	
	self.Owner:ViewPunch( Angle( -10, 0, 0 ) )
	--Hammer boosted jumping :D
	self.Owner:SetVelocity( self.Owner:GetAimVector() * -200 )
	
	BaseClass.PrimaryAttack(self,...)
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