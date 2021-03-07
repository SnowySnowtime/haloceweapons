 ENT.Type 			= "anim"  
 ENT.PrintName			= "Plasma Pistol"  
 ENT.Author			= "Generic Default"  
 ENT.Contact			= "AIDS"  
 ENT.Purpose			= "SPLODE"  
 ENT.Instructions		= "LAUNCH"  
 
ENT.Spawnable			= false
ENT.AdminSpawnable		= false


if SERVER then

AddCSLuaFile( "shared.lua" )

function ENT:Initialize()   

self.flightvector = self.Entity:GetForward() * (108/2)
self.timeleft = CurTime() + 900
self.Owner = self:GetOwner()
self.Entity:SetModel( "models/snowysnowtime/projectiles/plasma_projectile.mdl" )
self.Entity:SetModelScale( 0 )
self.Entity:PhysicsInit( SOLID_VPHYSICS )      -- Make us work with physics,  	
self.Entity:SetMoveType( MOVETYPE_NONE )   --after all, gmod is a physics  	
self.Entity:SetSolid( SOLID_VPHYSICS )        -- CHEESECAKE!    >:3    
util.SpriteTrail(self, 0, Color(255,255,255,255), false, 4.5, 0, 0.1, 0.01, "snowysnowtime/contrails/fuelrod_contrail.vmt");     
--self.Entity:SetColor(Color(128 255 0,255))
local phys = self.Entity:GetPhysicsObject()
	if (phys:IsValid()) then
		phys:Wake()
		phys:SetMass(10000)
	end

Glow = ents.Create("env_sprite")
Glow:SetKeyValue("model","effects/halo_ce/flare_generic2.vmt")
Glow:SetKeyValue("rendercolor","200 255 200")
Glow:SetKeyValue("scale","0.2")
Glow:SetPos(self.Entity:GetPos())
Glow:SetParent(self.Entity)
Glow:Spawn()
Glow:Activate()
end   

 function ENT:Think()

		if self.timeleft < CurTime() then
		self.Entity:Remove()				
		end

	Table	={} 			//Table name is table name
	Table[1]	=self.Owner 		//The person holding the gat
	Table[2]	=self.Entity 		//The cap

	local trace = {}
		trace.start = self.Entity:GetPos()
		trace.endpos = self.Entity:GetPos() + self.flightvector
		trace.filter = Table
	local tr = util.TraceLine( trace )
	

		if tr.HitSky then
			self.Entity:Remove()
			return true
		end
	
		if tr.Hit then
				local dmg = DamageInfo()
					dmg:SetDamageType(DMG_BURN)
					dmg:SetAttacker(self.Owner)
					dmg:SetInflictor(self)
					dmg:SetDamage(22)
					util.BlastDamageInfo( dmg, tr.HitPos, 12 )
				local effectdata = EffectData()
					effectdata:SetOrigin(tr.HitPos)			// Where it hits
					effectdata:SetNormal(tr.HitNormal)		// Direction of particles
					effectdata:SetEntity(self.Entity)		// Who done it?
					effectdata:SetScale(1)			// Size of explosion
					effectdata:SetRadius(tr.MatType)		// What texture it hits
					effectdata:SetMagnitude(10)			// Length of explosion trails
					util.Effect( "effect_astw2_halo_ce_impact_pp", effectdata )
					util.Decal("FadingScorch", tr.HitPos + tr.HitNormal, tr.HitPos - tr.HitNormal)
			self.Entity:EmitSound( "shared/plasma_hit"..math.random(1,3)..".wav", SNDLVL_512dB, 100, 4 )
			self.Entity:Remove()	
		end
	
	self.Entity:SetPos(self.Entity:GetPos() + self.flightvector)
	self.flightvector = self.flightvector - (self.flightvector/100000)  + Vector(math.Rand(0,0), math.Rand(0,0),math.Rand(0,0)) + Vector(0,0,0)
	self.Entity:SetAngles(self.flightvector:Angle() + Angle(0,-90,0))
	self.Entity:NextThink( CurTime() )
	return true
	
end

function ENT:OwnerGet()
	if IsValid(self.Owner) then
		return self.Owner
	else
		return self.Entity
	end
end

end

if CLIENT then
 function ENT:Draw()             
 self.Entity:DrawModel()       // Draw the model.   
 end
 
   function ENT:Initialize()
	pos = self:GetPos()
	self.emitter = ParticleEmitter( pos )
 end
 
 function ENT:Think()
	if (self.Entity:GetNWBool("smoke")) then
	pos = self:GetPos()
		for i=1, (1) do
			local particle = self.emitter:Add( "particle/smokesprites_000"..math.random(1,9), pos + (self:GetForward() * -120 * i))
			if (particle) then
				particle:SetDieTimFe( math.Rand( 0, 0.1 ) )

			end
		
		end
	end
end


end