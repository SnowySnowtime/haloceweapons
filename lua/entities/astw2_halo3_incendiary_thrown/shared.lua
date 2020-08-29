ENT.Type = "anim"
ENT.Base = "base_anim"
ENT.PrintName = "Incendiary Grenade"
ENT.Author = ""
ENT.Information = ""
ENT.Spawnable = false
ENT.AdminSpawnable = false

ENT.Model = "models/weapons/gow/w_incendiary_grenade.mdl"
ENT.FuseTime = 1.5
ENT.ArmTime = 0
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
			phys:SetMass(1)
        end

        self.kt = CurTime() + self.FuseTime
        self.at = CurTime() + self.ArmTime
    end
end

function ENT:PhysicsCollide(data, physobj)
    if SERVER then
        if data.Speed > 75 then
            self:EmitSound(Sound("weapons/grenades/smokegrenadebounce0" .. math.random(1,3) .. ".ogg"))
        elseif data.Speed > 25 then
            self:EmitSound(Sound("weapons/grenades/smokegrenadebounce0" .. math.random(1,3) .. ".ogg"))
        end

        if self.at <= CurTime() and self.ImpactFuse then
            self:Detonate()
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
        if !self:IsValid() then return end

        if self:WaterLevel() < 1 then
            local cloud = ents.Create( "astw2_gow_incendiary_cloud" )
            if !IsValid( cloud ) then return end
            cloud:SetPos( self:GetPos() )
            cloud:Spawn()
        end
			sound.Play( "weapons/grenades/incendiarygrenade_explosion0" .. math.random(1,3) .. ".ogg",  self:GetPos(), 100, 100 )

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
            light.g = 0
            light.b = 0
            light.Brightness = 10
            light.Decay = 2
            light.Size = 20
            light.DieTime = CurTime() + 0.1
        end
    end
end