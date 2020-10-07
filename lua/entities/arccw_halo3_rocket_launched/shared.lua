ENT.Type = "anim"
ENT.Base = "base_entity"
ENT.PrintName = "HH Rocket"
ENT.Author = ""
ENT.Information = ""
ENT.Spawnable = false
ENT.AdminSpawnable = false

ENT.Model = "models/weapons/w_missile_launch.mdl"
ENT.FuseTime = 8
ENT.ArmTime = 0.11
ENT.TrackingAngle = 0.5

AddCSLuaFile()

function ENT:Initialize()
    if SERVER then
        self:SetModel( self.Model )
        self:SetMoveType( MOVETYPE_VPHYSICS )
        self:SetSolid( SOLID_VPHYSICS )
        self:PhysicsInit( SOLID_VPHYSICS )
        self:SetCollisionGroup( COLLISION_GROUP_PROJECTILE )
        self:DrawShadow( true )

        local phys = self:GetPhysicsObject()
        if phys:IsValid() then
            phys:Wake()
			phys:SetMass(2)
            phys:SetBuoyancyRatio(0)
            phys:EnableGravity( false )
        end

        self.kt = CurTime() + self.FuseTime
        self.motorsound = CreateSound( self, "halo/halo_3/rocket_flyby_h3.ogg")
    end

    self.at = CurTime() + self.ArmTime
    self.Armed = true
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



    if CurTime() >= self.at and !self.Armed then
        self:Arm()
        self.Armed = true
    end

    if SERVER then
	local phys = self:GetPhysicsObject()
			phys:ApplyForceCenter( self:GetAngles():Forward() * 300 )
		if self.Owner:IsValid() and self.Owner:GetActiveWeapon().Tracking and self.Owner:GetActiveWeapon().ThirdPersonWeapon and self.Owner:GetActiveWeapon():GetNWBool("insights") or self.Owner:IsNPC() then
				local target = self.Owner:GetActiveWeapon():GetHomingTarget()
				local pos = self:GetPos()
				local neededangle = (target - pos):Angle()

				if target then
					if neededangle:Forward():Dot( self:GetAngles():Forward() ) >= self.TrackingAngle then
						self:SetAngles( neededangle )
						phys:ApplyForceCenter( self:GetAngles():Forward() * 500 )
					end
				end
        end
        if self.Armed then
            local phys = self:GetPhysicsObject()
            phys:ApplyForceCenter( self:GetAngles():Forward() * 900 )
        end
	
	if CurTime() >= self.at then
            local targets = ents.FindInSphere(self:GetPos(), 24)
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
    end

    if CLIENT then
        if self.Armed then
            local emitter = ParticleEmitter(self:GetPos())

            if !self:IsValid() or self:WaterLevel() > 2 then return end

	local smoke = emitter:Add("effects/halo3/muzzle_m6d", self:GetPos())
        smoke:SetGravity( Vector(math.Rand(-5, 5), math.Rand(-5, 5), math.Rand(-20, -25)) )
        smoke:SetVelocity( self:GetAngles():Forward() * 100 )
        smoke:SetDieTime( math.Rand(0.1,0.15) )
        smoke:SetStartAlpha( 255 )
        smoke:SetEndAlpha( 0 )
        smoke:SetStartSize( 5 )
        smoke:SetEndSize( 10 )
        smoke:SetRoll( math.Rand(-180, 180) )
        smoke:SetRollDelta( math.Rand(-0.2,0.2) )
        smoke:SetColor( 255, 255, 225 )
        smoke:SetAirResistance( 2 )
        smoke:SetPos( self:GetPos() )
        smoke:SetLighting( false )
		
        local smoke2 = emitter:Add("effects/halo3/smoke_dark", self:GetPos())
        smoke2:SetGravity( Vector(math.Rand(-5, 5), math.Rand(-5, 5), math.Rand(-20, -25)) )
        smoke2:SetVelocity( self:GetAngles():Forward() * 100 )
        smoke2:SetDieTime( math.Rand(0.5,0.8) )
        smoke2:SetStartAlpha( 125 )
        smoke2:SetEndAlpha( 0 )
        smoke2:SetStartSize( 5 )
        smoke2:SetEndSize( 35 )
        smoke2:SetRoll( math.Rand(-180, 180) )
        smoke2:SetRollDelta( math.Rand(-0.2,0.2) )
        smoke2:SetColor( 255,255, 255 )
        smoke2:SetAirResistance( 50 )
        smoke2:SetPos( self:GetPos() )
        smoke2:SetLighting( false )
        emitter:Finish()
        end
    end
end

function ENT:Detonate()
    if SERVER then
        if !self:IsValid() then return end
        local effectdata = EffectData()
            effectdata:SetOrigin( self:GetPos() )

        if self:WaterLevel() >= 1 then
            util.Effect( "WaterSurfaceExplosion", effectdata )
        else
            util.Effect( "astw2_halo3_explosion_rocket", effectdata)
	sound.Play( "halo/halo_3/rocket_expl_h3_" .. math.random(1,3) .. ".ogg",  self:GetPos(), 100, 100 )
        end

        local attacker = self

        if self.Owner:IsValid() then
            attacker = self.Owner
        end

        util.BlastDamage(self, attacker, self:GetPos(), 300, 1500)
	 util.ScreenShake(self:GetPos(),10000,100,0.6,2048)
        self:Remove()
    end
end

function ENT:Draw()
    if CLIENT then
        self:DrawModel()

        if self.Armed then
            cam.Start3D() -- Start the 3D function so we can draw onto the screen.
                render.SetMaterial( Material("effects/halo3/8pt_ringed_star_flare") ) -- Tell render what material we want, in this case the flash from the gravgun
                render.DrawSprite( self:GetPos(), math.random(75, 100), math.random(105, 110), Color(255, 200, 150) ) -- Draw the sprite in the middle of the map, at 16x16 in it's original colour with full alpha.
            cam.End3D()
        end
    end
end