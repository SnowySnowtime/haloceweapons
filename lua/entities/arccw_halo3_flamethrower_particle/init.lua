AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")
include("shared.lua")

local Sounds = { "gow/turret_judgement/gunstand_flamethrower_fireloop01.ogg", "gow/turret_judgement/gunstand_flamethrower_fireloop03.ogg" }
function ENT:Initialize()
	self:SetModel( "models/Items/AR2_Grenade.mdl" ) 
	self:PhysicsInit(SOLID_VPHYSICS)
	self:SetMoveType(MOVETYPE_VPHYSICS)
	self:SetSolid(SOLID_VPHYSICS)
	self:SetCollisionGroup( COLLISION_GROUP_WEAPON )
	self:SetNotSolid( true )
	local phys = self:GetPhysicsObject()
	if IsValid( phys ) then 
		phys:Wake()
		phys:EnableGravity( false )
		phys:SetVelocity( self:GetForward() * 256 )
	end
	self:Fire( "kill", "", 1 )
	
	self.SND = CreateSound( self, Sounds[ math.random( 1, #Sounds ) ] )
	self.SND:Play()
	self.SND:ChangePitch( 150, 1 )
	timer.Simple( .7, function() 
		self.SND:ChangeVolume( 0, .25 )
	end )
	
end

function ENT:OnRemove()	
	self.SND:Stop()
end

function ENT:Think()	
	local t = DamageInfo()
	t:SetAttacker( self )
	t:SetInflictor( self )
	t:SetDamage( self.Damage or 20 )
	t:SetDamageType( DMG_BURN )
	for _, v in pairs( ents.FindInSphere( self:GetPos(), 32 ) ) do	
		if v == self then continue end
		if v.Base and v.Base == "gow_sentinel_base" then continue end
		v:TakeDamageInfo( t )
	end
	self:NextThink( CurTime() + 0.1 )
	return true
end 

