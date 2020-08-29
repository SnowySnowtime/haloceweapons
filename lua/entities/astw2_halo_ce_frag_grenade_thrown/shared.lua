ENT.Type = "anim"
ENT.Base = "base_entity"
ENT.PrintName = "Frag Grenade"
ENT.Author = ""
ENT.Information = ""
ENT.Spawnable = false
ENT.AdminSpawnable = false

ENT.Model = "models/halo/combat_evolved/weapons/grenade_plasma.mdl"
ENT.FuseTime = 2.8
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
        self:DrawShadow( true )

        local phys = self:GetPhysicsObject()
        if phys:IsValid() then
            phys:Wake()
            phys:SetBuoyancyRatio(0)
            phys:SetMass(5)
        end

        self.kt = CurTime() + self.FuseTime
        self.at = CurTime() + self.ArmTime
		self:EmitSound(Sound("halo/combat_evolved/weapons/grenade_toss.ogg"))
    end
end

function ENT:PhysicsCollide(data, physobj)
    if SERVER then
        if data.Speed > 75 then
            self:EmitSound(Sound("halo/combat_evolved/weapons/grenade_bounce.ogg"))
        end

        if self.at <= CurTime() and self.ImpactFuse then
            self:Detonate()
        end
    end
end

function ENT:Think()
    if SERVER and CurTime() >= self.kt then
        self:Detonate()
    end
	if CLIENT then
        local emitter = ParticleEmitter(self:GetPos())

        if !self:IsValid() or self:WaterLevel() > 2 then return end
	
        local smoke = emitter:Add("effects/halo3/smoke_dark", self:GetPos())
        smoke:SetGravity( Vector(math.Rand(-5, 5), math.Rand(-5, 5), math.Rand(-20, -25)) )
        smoke:SetVelocity( self:GetAngles():Forward() * 100 )
        smoke:SetDieTime( math.Rand(0.15,0.3) )
        smoke:SetStartAlpha( 35 )
        smoke:SetEndAlpha( 0 )
        smoke:SetStartSize( 5 )
        smoke:SetEndSize( 25 )
        smoke:SetRoll( math.Rand(-180, 180) )
        smoke:SetRollDelta( math.Rand(-0.2,0.2) )
        smoke:SetColor( 255, 255, 255 )
        smoke:SetAirResistance( 0 )
        smoke:SetPos( self:GetPos() )
        smoke:SetLighting( true )
        emitter:Finish()
    end
end
function ENT:Detonate()
    if SERVER then
        if not self:IsValid() then return end
        local effectdata = EffectData()
            effectdata:SetOrigin( self:GetPos() )

        if self:WaterLevel() >= 1 then
            util.Effect( "WaterSurfaceExplosion", effectdata )
        else
            util.Effect( "astw2_halo_ce_explosion_frag", effectdata)
        end
		sound.Play( "halo/combat_evolved/weapons/grenade_expl_" .. math.random(1,2) .. ".ogg",  self:GetPos(), 100, 100 )

        local attacker = self

        if self.Owner:IsValid() then
            attacker = self.Owner
        end

	util.BlastDamage(self, attacker, self:GetPos(), 225, 120)
	util.ScreenShake(self:GetPos(),10000,100,0.8,1024)
        self:Remove()

    end
 if CLIENT then
        if !self:IsValid() or self:WaterLevel() > 2 then return end
    else
end
end

function ENT:Draw()
if CLIENT then
        self:DrawModel()

    end
end