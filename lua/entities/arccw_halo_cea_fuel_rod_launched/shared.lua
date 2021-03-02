ENT.Type = "anim"
ENT.Base = "base_anim"
ENT.PrintName = "Fuel Rod Projectile"
ENT.Author = ""
ENT.Information = ""
ENT.Spawnable = false
ENT.AdminSpawnable = false

ENT.Model = "models/halo/combat_evolved/weapons/grenade_plasma.mdl"
ENT.FuseTime = 2
ENT.ArmTime = 0
ENT.ImpactFuse = false

AddCSLuaFile()

function ENT:Initialize()
    if SERVER then
        self:SetModel( self.Model )
        self:SetMoveType( MOVETYPE_VPHYSICS )
        self:SetSolid( SOLID_VPHYSICS )
        self:PhysicsInit( SOLID_VPHYSICS )
        self:DrawShadow( true )

        local phys = self:GetPhysicsObject()
        if phys:IsValid() then
			phys:Wake()
			phys:SetMass(1)
			phys:SetBuoyancyRatio(0)
        end

		self.kt = CurTime() + self.FuseTime
		self.at = CurTime() + self.ArmTime
		self.bt = CurTime() + 1
		self.motorsound = CreateSound( self, "halo/combat_evolved/weapons/plasma_grenade_plasma_projectile_plas_grenlp1.wav")
        timer.Simple(0, function()
            if !IsValid(self) then return end
            self:SetCollisionGroup( COLLISION_GROUP_PROJECTILE )
        end)
    end
end

function ENT:OnRemove()
    if SERVER then
        self.motorsound:Stop()
    end
end

function ENT:Arm()
    if SERVER then
        self.motorsound:Play()
    end
end

function ENT:PhysicsCollide(data, physobj)
if SERVER then
		if data.Speed > 25 then
           self:Detonate()
		end
		end
	if self.at <= CurTime() and self.ImpactFuse then
            self:Detonate()


        end
		local effectdata = EffectData()
            effectdata:SetOrigin( self:GetPos() )
        util.Effect( "StunstickImpact", effectdata)
end


function ENT:ClientThink()
	
	do --Projectile Simulating Inclination Angles
		self:SetAngles( self:GetVelocity():Angle() + Angle(90,0,-90) )	
	end
	
            local emitter = ParticleEmitter(self:GetPos())

            if !self:IsValid() or self:WaterLevel() > 2 then return end

	local smoke = emitter:Add("effects/halo3/muzzle_plasmapistol", self:GetPos())
        smoke:SetGravity( Vector(math.Rand(-5, 5), math.Rand(-5, 5), math.Rand(-20, -25)) )
        smoke:SetVelocity( self:GetAngles():Forward() * 100 )
        smoke:SetDieTime( math.Rand(0.3,0.4) )
        smoke:SetStartAlpha( 255 )
        smoke:SetEndAlpha( 0 )
        smoke:SetStartSize( 25 )
        smoke:SetEndSize( 1 )
        smoke:SetRoll( math.Rand(-180, 180) )
        smoke:SetRollDelta( math.Rand(-0.2,0.2) )
        smoke:SetColor( 175, 255, 100 )
        smoke:SetAirResistance( 2 )
        smoke:SetPos( self:GetPos() )
        smoke:SetLighting( false )
		
	local smoke2 = emitter:Add("effects/halo3/electric_arcs", self:GetPos())
        smoke2:SetGravity( Vector(math.Rand(-5, 5), math.Rand(-5, 5), math.Rand(-20, -25)) )
        smoke2:SetVelocity( self:GetAngles():Forward() * 100 )
        smoke2:SetDieTime( math.Rand(0.25,0.3) )
        smoke2:SetStartAlpha( 255 )
        smoke2:SetEndAlpha( 0 )
        smoke2:SetStartSize( 5 )
        smoke2:SetEndSize( 25 )
        smoke2:SetRoll( math.Rand(-180, 180) )
        smoke2:SetRollDelta( math.Rand(-0.2,0.2) )
        smoke2:SetColor( 225,255, 200 )
        smoke2:SetAirResistance( 50 )
        smoke2:SetPos( self:GetPos() )
        smoke2:SetLighting( false )
        emitter:Finish()
		
    return 0.1
end

function ENT:Think()
    if SERVER then self:NextThink( self:ServerThink() or 0.1 ) end
    if CLIENT then self:SetNextClientThink( self:ClientThink() or 0.1 ) end
    return true
end


function ENT:ServerThink()

        if CurTime() >= self.at then
            local targets = ents.FindInSphere(self:GetPos(), 16)
            for _, k in pairs(targets) do
                if k:IsPlayer() or k:IsNPC() then
                    if self:Visible( k ) and k:Health() > 0 then
                        self:Detonate()
                    end
                elseif (k:IsValid() and scripted_ents.IsBasedOn( k:GetClass(), "base_nextbot" )) then
                    self:Detonate()
                end
            end
        end

        if CurTime() >= self.kt then
            self:Detonate()
        end
    return 0.2
end


function ENT:Detonate()
    if SERVER then
        if !self:IsValid() then return end
        local effectdata = EffectData()
            effectdata:SetOrigin( self:GetPos() )

        if self:WaterLevel() >= 1 then
            util.Effect( "WaterSurfaceExplosion", effectdata )
        else
            util.Effect( "astw2_halo3_explosion_fuelrod", effectdata)
	sound.Play( "halo/combat_evolved_anniversary/fuelrod_explo" .. math.random(1,3) .. ".ogg",  self:GetPos(), 100, 100 )
	util.ScreenShake(self:GetPos(),5000,100,0.5,1024)
        end

        local attacker = self

        if self.Owner:IsValid() then
            attacker = self.Owner
        end

        util.BlastDamage(self, attacker, self:GetPos(), 250, 125)

        self:Remove()
    end
end

function ENT:Draw()
    if CLIENT then
        self:DrawModel()

        if self:IsValid() then
            cam.Start3D() -- Start the 3D function so we can draw onto the screen.
                render.SetMaterial( Material("effects/halo3/8pt_ringed_star_flare") ) -- Tell render what material we want, in this case the flash from the gravgun
                render.DrawSprite( self:GetPos(), math.random(100, 115), math.random(125, 150), Color(225, 255, 150) ) -- Draw the sprite in the middle of the map, at 16x16 in it's original colour with full alpha.
            cam.End3D()
        end
    end
end