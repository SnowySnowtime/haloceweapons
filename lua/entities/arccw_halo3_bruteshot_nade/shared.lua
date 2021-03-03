ENT.Type = "anim"
ENT.Base = "base_entity"
ENT.PrintName = "Brute Shot"
ENT.Author = ""
ENT.Information = ""
ENT.Spawnable = false
ENT.AdminSpawnable = false

ENT.Model = "models/snowysnowtime/projectiles/bruteshot_grenade.mdl"
ENT.FuseTime = 2
ENT.ArmTime = 0

AddCSLuaFile()

function ENT:Initialize()
    if SERVER then
		util.SpriteTrail( self, 0, Color(255,225,200,75), false, 15, 0, 0.3, 0.01, "trails/smoke" )
        self:SetModel( self.Model )
        self:SetMoveType( MOVETYPE_VPHYSICS )
        self:SetSolid( SOLID_VPHYSICS )
        self:PhysicsInit( SOLID_VPHYSICS )
        self:DrawShadow( true )

        local phys = self:GetPhysicsObject()
        if phys:IsValid() then
            phys:Wake()
			phys:SetMass(1.4)
            phys:SetBuoyancyRatio(0)
            phys:EnableGravity( false )
        end

        self.kt = CurTime() + self.FuseTime
        self.motorsound = CreateSound( self, "h3/brute_shot_projectile1.wav")
    end

    self.at = CurTime() + self.ArmTime
    self.Armed = false
	        timer.Simple(0, function()
            if !IsValid(self) then return end
            self:SetCollisionGroup(COLLISION_GROUP_PROJECTILE)
        end)
end

function ENT:ClientThink()
            local emitter = ParticleEmitter(self:GetPos())

            if !self:IsValid() or self:WaterLevel() > 2 then return end

	local smoke = emitter:Add("effects/halo3/soft_smoke_large", self:GetPos())
        smoke:SetGravity( Vector(math.Rand(-45, 45), math.Rand(-45, 45), math.Rand(-20, -25)) )
        smoke:SetVelocity( self:GetAngles():Forward() * -50 )
        smoke:SetDieTime( math.Rand(0.25,0.3) )
        smoke:SetStartAlpha( 255 )
        smoke:SetEndAlpha( 0 )
        smoke:SetStartSize( 15 )
        smoke:SetEndSize( 0 )
        smoke:SetRoll( math.Rand(-180, 180) )
        smoke:SetRollDelta( math.Rand(-0.2,0.2) )
        smoke:SetColor( 135, 125, 100 )
        smoke:SetAirResistance( 0 )
        smoke:SetPos( self:GetPos() )
        smoke:SetLighting( false )
    
	local smoke2 = emitter:Add("effects/halo3/soft_smoke_large", self:GetPos())
        smoke2:SetGravity( Vector(math.Rand(-5, 5), math.Rand(-5, 5), math.Rand(-20, -25)) )
        smoke2:SetVelocity( self:GetAngles():Forward() * -50 )
        smoke2:SetDieTime( math.Rand(0.3,0.4) )
        smoke2:SetStartAlpha( 255 )
        smoke2:SetEndAlpha( 0 )
        smoke2:SetStartSize( 10 )
        smoke2:SetEndSize( 5 )
        smoke2:SetRoll( math.Rand(-180, 180) )
        smoke2:SetRollDelta( math.Rand(-0.2,0.2) )
        smoke2:SetColor( 135,125,100 )
        smoke2:SetAirResistance( 50 )
        smoke2:SetPos( self:GetPos() )
        smoke2:SetLighting( false )
        emitter:Finish()
		
	
		
	return 0.01
end

function ENT:OnRemove()
    if SERVER then
        self.motorsound:Stop()
    end
end


function ENT:PhysicsCollide(data, physobj)
    if self.at <= CurTime() then
        self:Detonate()
    elseif self.at > CurTime() then
        local effectdata = EffectData()
            effectdata:SetOrigin( self:GetPos() )
        util.Effect( "RPGShotDown", effectdata)
        util.Effect( "StunstickImpact", effectdata)
        self:Remove()
    end
end

function ENT:Arm()
    if SERVER then
        self.motorsound:Play()
    end
end

function ENT:Think()
    if SERVER then self:NextThink( self:ServerThink() or 0.1 ) end
    if CLIENT then self:SetNextClientThink( self:ClientThink() or 0.01 ) end
    return true
end

function ENT:ServerThink()

    if CurTime() >= self.at and !self.Armed then
        self:Arm()
        self.Armed = true
    end

    if SERVER then
	
	if CurTime() >= self.at then
            local targets = ents.FindInSphere(self:GetPos(), 1)
            for _, k in pairs(targets) do
                if k:IsPlayer() and !k:GetOwner() or k:IsNPC() then
                    if self:Visible( k ) and k:Health() > 0 then
                        self:Detonate()
                    end
                elseif (k:IsValid() and scripted_ents.IsBasedOn( k:GetClass(), "base_nextbot" )) then
                    self:Detonate()
                end
            end
        end

        if self.Armed then
            local phys = self:GetPhysicsObject()
            phys:ApplyForceCenter( self:GetAngles():Forward() * 500 )
				        timer.Simple(0.2, function()
            if !IsValid(self) then return end
			phys:ApplyForceCenter( self:GetAngles():Forward() * -10 + self:GetAngles():Up() * -10 )
			end)
        end

        if CurTime() >= self.kt then
            self:Detonate()
        end
    end

    if CLIENT then
        if self.Armed then
            local emitter = ParticleEmitter(self:GetPos())

            if !self:IsValid() or self:WaterLevel() > 2 then return end
        end
    end
end

function ENT:Detonate()
    if SERVER then
        if !self:IsValid() and !k:GetOwner() then return end
        local effectdata = EffectData()
            effectdata:SetOrigin( self:GetPos() )

        if self:WaterLevel() >= 1 then
            util.Effect( "WaterSurfaceExplosion", effectdata )
        else
            util.Effect( "astw2_halo3_explosion_bruteshot", effectdata )
			sound.Play( "h3/brute_round_expl" .. math.random(2,7) .. ".wav",  self:GetPos(), 100, 100 )
        end

        local attacker = self

        if self.Owner:IsValid() then
            attacker = self.Owner
        end

        util.BlastDamage(self, attacker, self:GetPos(), 100, 50)
	 util.ScreenShake(self:GetPos(),2000,100,0.35,720)
        self:Remove()
    end
end

function ENT:Draw()
    if CLIENT then
        self:DrawModel()

    end
end