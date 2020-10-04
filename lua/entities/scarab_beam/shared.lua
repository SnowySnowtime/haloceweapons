ENT.Type = "anim"
ENT.Base = "base_anim"
ENT.PrintName = "Scarab Beam"
ENT.Author = ""
ENT.Information = ""
ENT.Spawnable = false
ENT.AdminSpawnable = false
 
ENT.Spawnable			= false
ENT.AdminSpawnable		= false


if SERVER then

AddCSLuaFile( "shared.lua" )

function ENT:Initialize()   

self.flightvector = self.Entity:GetForward() * ((30*30)/10)
self.timeleft = CurTime() + 100
self.Owner = self:GetOwner()
self.Entity:SetModel( "models/Items/AR2_Grenade.mdl" )
self.Entity:SetModelScale( 0 )
self.Entity:PhysicsInit( SOLID_VPHYSICS )      -- Make us work with physics,  	
self.Entity:SetMoveType( MOVETYPE_VPHYSICS )   --after all, gmod is a physics  	
self.Entity:SetSolid( SOLID_VPHYSICS )        -- CHEESECAKE!    >:3           
--self.Entity:SetColor(Color(0 100 255,255))

self.Entity:SetNWBool("smoke", true)
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
				local effectdata = EffectData()
					effectdata:SetOrigin(tr.HitPos)			// Where is hits
					effectdata:SetNormal(tr.HitNormal)		// Direction of particles
					effectdata:SetEntity(self.Entity)		// Who done it?
					effectdata:SetScale(5)			// Size of explosion
					effectdata:SetRadius(tr.MatType)		// What texture it hits
					effectdata:SetMagnitude(18)			// Length of explosion trails
					util.Effect( "astw2_halo_ce_explosion_fuelrod", effectdata )
					util.BlastDamage(self.Entity, self:OwnerGet(), tr.HitPos, 300, 1000)
					util.Decal("Scorch", tr.HitPos + tr.HitNormal, tr.HitPos - tr.HitNormal)
					self.Entity:SetNWBool("smoke", false)
					
			self:Explosion()
			self.Entity:EmitSound( "shared/scarab_shot_explode_"..math.random(1,3)..".wav", SNDLVL_110dB, 500, 1 )
			self.Entity:Remove()	
		end
	
	self.Entity:SetPos(self.Entity:GetPos() + self.flightvector)
	self.flightvector = self.flightvector - (self.flightvector/10000000)  + Vector(math.Rand(0,0), math.Rand(0,0),math.Rand(0,0)) + Vector(0,0,0)
	self.Entity:SetAngles(self.flightvector:Angle() + Angle(0,0,0))
	self.Entity:NextThink( CurTime() )
	return true
	
end
 
 function ENT:Explosion()

	local effectdata = EffectData()
		effectdata:SetOrigin(self.Entity:GetPos())

	local shake = ents.Create("env_shake")
		shake:SetOwner(self.Owner)
		shake:SetPos(self.Entity:GetPos())
		shake:SetKeyValue("amplitude", "2000")	// Power of the shake
		shake:SetKeyValue("radius", "30")		// Radius of the shake
		shake:SetKeyValue("duration", "2.5")	// Time of shake
		shake:SetKeyValue("frequency", "255")	// How har should the screenshake be
		shake:SetKeyValue("spawnflags", "4")	// Spawnflags(In Air)
		shake:Spawn()
		shake:Activate()
		shake:Fire("StartShake", "", 0)

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
			local particle = self.emitter:Add( "effects/halo3/electric_arcs", pos + (self:GetForward() * -120 * i))
			if (particle) then
				particle:SetVelocity((self:GetForward() * -400)+(VectorRand()* 200) )
				particle:SetDieTime( math.Rand( 0, 0.5 ) )
				particle:SetStartAlpha( math.Rand( 7, 10 ) )
				particle:SetEndAlpha( 255 )
				particle:SetStartSize( math.Rand( 100, 250 ) )
				particle:SetEndSize( math.Rand( 50, 50 ) )
				particle:SetRoll( math.Rand(0, 360) )
				particle:SetRollDelta( math.Rand(-1, 1) )
				particle:SetColor( 0, 225 , 255 ) 
 				particle:SetAirResistance( 200 ) 
 				particle:SetGravity( Vector( 100, 0, 0 ) ) 	
			end
		
		end
		for i=1, (1) do
			local particle = self.emitter:Add( "effects/halo3/electric_arcs", pos + (self:GetForward() * -120 * i))
			if (particle) then
				particle:SetVelocity((self:GetForward() * -400)+(VectorRand()* 200) )
				particle:SetDieTime( math.Rand( 0, 0.5 ) )
				particle:SetStartAlpha( math.Rand( 7, 10 ) )
				particle:SetEndAlpha( 255 )
				particle:SetStartSize( math.Rand( 100, 250 ) )
				particle:SetEndSize( math.Rand( 50, 50 ) )
				particle:SetRoll( math.Rand(0, 360) )
				particle:SetRollDelta( math.Rand(-1, 1) )
				particle:SetColor( 0, 225 , 155 ) 
 				particle:SetAirResistance( 200 ) 
 				particle:SetGravity( Vector( 100, 0, 0 ) ) 	
			end
		
		end
		for i=1, (1) do
			local particle = self.emitter:Add( "effects/halo3/plasma_electric", pos + (self:GetForward() * -120 * i))
			if (particle) then
				particle:SetVelocity((self:GetForward() * -400)+(VectorRand()* 200) )
				particle:SetDieTime( math.Rand( 0, 0.5 ) )
				particle:SetStartAlpha( math.Rand( 7, 10 ) )
				particle:SetEndAlpha( 255 )
				particle:SetStartSize( math.Rand( 100, 250 ) )
				particle:SetEndSize( math.Rand( 50, 50 ) )
				particle:SetRoll( math.Rand(0, 360) )
				particle:SetRollDelta( math.Rand(-1, 1) )
				particle:SetColor( 0, 225 , 155 ) 
 				particle:SetAirResistance( 200 ) 
 				particle:SetGravity( Vector( 100, 0, 0 ) ) 	
			end
		
		end
		for i=1, (2) do
			local particle = self.emitter:Add( "effects/halo3/thick_smoke_large", pos + (self:GetForward() * -120 * i))
			if (particle) then
				particle:SetVelocity((self:GetForward() * -150)+(VectorRand()* 100) )
				particle:SetDieTime( math.Rand( 0, 0.5 ) )
				particle:SetStartAlpha( math.Rand( 7, 10 ) )
				particle:SetEndAlpha( 255 )
				particle:SetStartSize( math.Rand( 30, 30 ) )
				particle:SetEndSize( math.Rand( 30, 30 ) )
				particle:SetRoll( math.Rand(0, 360) )
				particle:SetRollDelta( math.Rand(-1, 1) )
				particle:SetColor( 25, 175 , 255 ) 
 				particle:SetAirResistance( 200 ) 
 				particle:SetGravity( Vector( 100, 0, 0 ) ) 	
			end
		
		end
		for i=1, (2) do
			local particle = self.emitter:Add( "effects/halo3/thick_smoke_large", pos + (self:GetForward() * -120 * i))
			if (particle) then
				particle:SetVelocity((self:GetForward() * -150)+(VectorRand()* 100) )
				particle:SetDieTime( math.Rand( 0, 0.5 ) )
				particle:SetStartAlpha( math.Rand( 7, 10 ) )
				particle:SetEndAlpha( 255 )
				particle:SetStartSize( math.Rand( 100, 100 ) )
				particle:SetEndSize( math.Rand( 75, 75 ) )
				particle:SetRoll( math.Rand(0, 360) )
				particle:SetRollDelta( math.Rand(-1, 1) )
				particle:SetColor( 25, 255 , 175 ) 
 				particle:SetAirResistance( 200 ) 
 				particle:SetGravity( Vector( 100, 0, 0 ) ) 	
			end
		
		end
	end
end


end