ENT.Type = "anim"
ENT.Base = "base_anim"
ENT.PrintName = "Bolo Grenade"
ENT.Author = ""
ENT.Information = ""
ENT.Spawnable = false
ENT.AdminSpawnable = false

ENT.Model = "models/weapons/gow/w_bolo_grenade_rigid.mdl"
ENT.FuseTime = 1.85
ENT.ArmTime = 2.5
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
			phys:SetMass(1)
            phys:SetBuoyancyRatio(0)
        end

        self.kt = CurTime() + self.FuseTime
        self.at = CurTime() + self.ArmTime
		self.bt = CurTime() + 1
    end
end

function ENT:PhysicsCollide(data, physobj)
    if SERVER then
        if data.Speed > 75 then
            self:EmitSound(Sound("weapons/grenades/grenadebounce01.ogg"))
        elseif data.Speed > 25 then
            self:EmitSound(Sound("weapons/grenades/grenadebounce01.ogg"))
        end

        if self.at <= CurTime() and self.ImpactFuse then
            self:Detonate()
        end
		
		if self.bt <= CurTime() then
            if !self.btDONE then 
                self:EmitSound(Sound("weapons/grenades/grenadebeep02.ogg"))
                self.btDONE = true
            end
        end
		
		if data.HitEntity:GetClass() != "worldspawn" then
			self:SetParent( data.HitEntity )
			self:EmitSound(Sound("weapons/grenades/grenadestick01.ogg"))
			
		end
    end
end

function ENT:Think()
    if SERVER and CurTime() >= self.kt then
        self:Detonate()
    end
end

function ENT:Detonate()
    if SERVER then
        if not self:IsValid() then return end
        local effectdata = EffectData()
        effectdata:SetOrigin(self:GetPos() + Vector(0,0,60))

        if self:WaterLevel() >= 1 then
            util.Effect( "WaterSurfaceExplosion", effectdata )
        else
            util.Effect( "astw2_gow_fragexplode", effectdata)
        end

        util.BlastDamage(self, self.Owner, self:GetPos(), 450, 350)
		sound.Play( "weapons/grenades/grenadeexplosion0" .. math.random(1,3) .. ".ogg",  self:GetPos(), 100, 100 )

        self:Remove()

    end
end

function ENT:Draw()
    if CLIENT then
        self:DrawModel()
		local light = DynamicLight(self:EntIndex())
        if (light) then
            light.Pos = self:GetPos()
            light.r = 255
            light.g = 25
            light.b = 0
            light.Brightness = 6
            light.Decay = 2
            light.Size = 30
            light.DieTime = CurTime() + 0.1
        end
    end
end