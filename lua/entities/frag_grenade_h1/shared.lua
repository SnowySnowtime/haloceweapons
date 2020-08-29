ENT.Type = "anim"
ENT.PrintName			= "M9 High-Explosive Dual-Purpose grenade"
ENT.Author			= "[BoZ]Niko663"
ENT.Contact			= "Masterchief@halo.com"
ENT.Purpose			= "SPLODE"
ENT.Instructions			= "THROW"

if SERVER then

AddCSLuaFile( "shared.lua" )

function ENT:Initialize()

	self.Owner = self.Entity.Owner

	self.Entity:SetModel("models/halomodels/haloce/Fragnade.mdl")
	self.Entity:PhysicsInit( SOLID_VPHYSICS )
	self.Entity:SetMoveType( MOVETYPE_VPHYSICS )
	self.Entity:SetSolid( SOLID_VPHYSICS )
	self.Entity:DrawShadow( false )
	self.Entity:SetCollisionGroup( COLLISION_GROUP_WEAPON )
	
	local phys = self.Entity:GetPhysicsObject()
	if (phys:IsValid()) then
	phys:Wake()
	end
	
	if (gmod.GetGamemode().Name == "Murderthon 9000") or GetConVar("h1Frag"):GetBool() then
		self.timeleft = CurTime() + 2.0
	else
		self.timeleft = CurTime() + 2
	end
	self:Think()
end


 function ENT:Think()
	
	if self.timeleft < CurTime() then
		if (gmod.GetGamemode().Name == "Murderthon 9000") or GetConVar("H1Frag"):GetBool() then 
			self:Nothing()
		else
			self:Explosion()
                        self.Entity:EmitSound("grenade_expl_" .. math.random(1, 2) .. ".ogg", 100, 100)	
		end
	end

	self.Entity:NextThink( CurTime() )
	return true
end

function ENT:Explosion()

	local effectdata = EffectData()
		effectdata:SetOrigin(self.Entity:GetPos())
		effectdata:SetEntity(self.Entity)
		effectdata:SetStart(self.Entity:GetPos())
		effectdata:SetNormal(Vector(0,0,1))
		--util.Effect("", effectdata)
		util.Effect("", effectdata)
		util.Effect("HelicopterMegaBomb", effectdata)
	
	local thumper = effectdata
		thumper:SetOrigin(self.Entity:GetPos())
		thumper:SetScale(500)
		thumper:SetMagnitude(500)
		util.Effect("", effectdata)
		
	local sparkeffect = effectdata
		sparkeffect:SetMagnitude(3)
		sparkeffect:SetRadius(8)
		sparkeffect:SetScale(5)
		util.Effect("", sparkeffect)
		
	local scorchstart = self.Entity:GetPos() + ((Vector(0,0,1)) * 5)
	local scorchend = self.Entity:GetPos() + ((Vector(0,0,-1)) * 5)
	
	util.BlastDamage(self.Entity, self.Owner, self.Entity:GetPos(), 275, 75)
	util.ScreenShake(self.Entity:GetPos(), 500, 500, 1.25, 500)
	self.Entity:Remove()
	util.Decal("Scorch", scorchstart, scorchend)
end

function ENT:Nothing()	
end

/*---------------------------------------------------------
PhysicsCollide
---------------------------------------------------------*/
function ENT:PhysicsCollide(data,phys)
	if data.Speed > 50 then
		self.Entity:EmitSound("grenade_bounce.ogg", pos, 500, 100 )
	end
	
	local impulse = -data.Speed * data.HitNormal * .4 + (data.OurOldVelocity * -.6)
	phys:ApplyForceCenter(impulse)
	
end

end

if CLIENT then
function ENT:Draw()
	self.Entity:DrawModel()
end
end