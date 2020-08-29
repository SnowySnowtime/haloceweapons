ENT.Type = "anim"
ENT.Base = "base_anim"
ENT.PrintName = "Plasma Launched"
ENT.Author = ""
ENT.Information = ""
ENT.Spawnable = false
ENT.AdminSpawnable = false

ENT.Model = "models/halo/combat_evolved/weapons/grenade_plasma.mdl"
ENT.FuseTime = 3
ENT.ArmTime = 1
ENT.ImpactFuse = true

AddCSLuaFile()

function ENT:Initialize()
    if SERVER then
        self:SetModel( self.Model )
        self:SetMoveType( MOVETYPE_VPHYSICS )
        self:SetSolid( SOLID_VPHYSICS )
        self:PhysicsInit( SOLID_VPHYSICS )
        self:SetCollisionGroup( COLLISION_GROUP_PROJECTILE )
        self:DrawShadow( false )

        local phys = self:GetPhysicsObject()
        if phys:IsValid() then
            phys:Wake()
            phys:SetBuoyancyRatio(0)
            phys:AddAngleVelocity( Angle(0, 0, 0):Forward() * 1000 )
	    phys:EnableGravity( true )
        end

        self.kt = CurTime() + self.FuseTime
        self.at = CurTime() + self.ArmTime
        self.bt = CurTime() + 2.4
	self.Armed = false
	 self.motorsound = CreateSound( self, "halo/combat_evolved/weapons/pgrenade_idle.ogg")
		
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
        self:EmitSound(Sound("halo/combat_evolved/weapons/grenade_plas_ammo_" .. math.random(1,3) .. ".ogg"))
        self:SetCollisionGroup( COLLISION_GROUP_DEBRIS )
		self:SetAngles( data.HitNormal:Angle() + Angle( 0, 0, 0 ) )
        self:SetPos( data.HitPos )
        self:SetCollisionGroup( COLLISION_GROUP_DEBRIS )
        self:SetMoveType( MOVETYPE_NONE )
	self.Armed = true
		if !data.HitEntity:IsPlayer() and data.HitEntity:GetClass() != "worldspawn" then
		self:SetParent( data.HitEntity )
		if data.HitEntity:IsPlayer() and data.HitEntity:IsNPC() then
		self:EmitSound(Sound("halo/combat_evolved/weapons/grenade_plas_ammo_" .. math.random(1,3) .. ".ogg."))
						end
        end
		if data.HitEntity:GetClass() != "worldspawn" then
			self:SetParent( data.HitEntity )
		end
    end
end

function ENT:Think()

    if SERVER then
        local phys = self:GetPhysicsObject()
            phys:ApplyForceCenter( Vector(0, 0, 90) )
	if CurTime() >= self.kt and self.Armed then
            self:Detonate()
        end
            
        end

    
    

    if CLIENT then
        local emitter = ParticleEmitter(self:GetPos())

        if !self:IsValid() or self:WaterLevel() > 2 then return end

        local smoke = emitter:Add("effects/halo_ce/flare_pr_overcharge", self:GetPos())
        smoke:SetGravity( Vector(math.Rand(-5, 5), math.Rand(-5, 5), math.Rand(-20, -25)) )
        smoke:SetVelocity( self:GetAngles():Forward() * 100 )
        smoke:SetDieTime( math.Rand(0.3,0.5) )
        smoke:SetStartAlpha( 255 )
        smoke:SetEndAlpha( 0 )
        smoke:SetStartSize( 10 )
        smoke:SetEndSize( 0 )
        smoke:SetRoll( math.Rand(-180, 180) )
        smoke:SetRollDelta( math.Rand(-0.2,0.2) )
        smoke:SetColor( 155, 155, 255 )
        smoke:SetAirResistance( 2 )
        smoke:SetPos( self:GetPos() )
        smoke:SetLighting( false )
        emitter:Finish()
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
            util.Effect( "astw2_halo_ce_explosion_plasma", effectdata)
			sound.Play( "halo/combat_evolved/weapons/plasma_grenade_plasmagrenexpl_plasmagx" .. math.random(1,4) .. ".ogg",  self:GetPos(), 100, 100 )

        end

        local attacker = self

        if self.Owner:IsValid() then
            attacker = self.Owner
        end

        util.BlastDamage(self, attacker, self:GetPos(), 300, 300)
	util.ScreenShake(self:GetPos(),10000,100,0.8,1024)
        self:Remove()
    end
end

function ENT:Draw()
    if CLIENT then
        self:DrawModel()
        end
    end