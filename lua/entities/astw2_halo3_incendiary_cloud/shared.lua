ENT.Type = "anim"
ENT.Base = "base_anim"
ENT.PrintName = "Incendiary Cloud"
ENT.Author = ""
ENT.Information = ""
ENT.Spawnable = false
ENT.AdminSpawnable = false

AddCSLuaFile()

function ENT:Initialize()
    if SERVER then
        self:SetModel( "models/weapons/gow/w_incendiary_grenade.mdl" )
        self:SetMoveType( MOVETYPE_NONE )
        self:SetSolid( SOLID_NONE )
        self:DrawShadow( false )
		else
	local light = DynamicLight(self:EntIndex())
        if (light) then
            light.Pos = self:GetPos()
            light.r = 255
            light.g = 135
            light.b = 0
            light.Brightness = 8
            light.Decay = 10
            light.Size = 512
            light.DieTime = CurTime() + 7.3
        end
    end
self:EmitSound(Sound("weapons/grenades/incendiarygrenade_firespread0" .. math.random(1,3) .. ".ogg"))
    

    self.dt = CurTime() + 7
end



function ENT:Think()
    if CurTime() >= self.dt then
        if CLIENT then

        local emitter = ParticleEmitter(self:GetPos())

        for i = 0, 3 do
            local smoke = emitter:Add("effects/gow/fire_embers", self:GetPos())
            smoke:SetVelocity( VectorRand() * 100 )
            smoke:SetGravity( Vector(math.Rand(-5, 5), math.Rand(-5, 5), math.Rand(-5, 5)) )
            smoke:SetDieTime( math.Rand( 2.5, 5 ) )
            smoke:SetStartAlpha( 255 )
            smoke:SetEndAlpha( 0 )
            smoke:SetStartSize( 25 )
            smoke:SetEndSize( 75 )
            smoke:SetRoll( math.Rand(-180, 180) )
            smoke:SetRollDelta( math.Rand(-0.2,0.2) )
            smoke:SetColor( math.Rand( 245, 255 ), math.Rand( 245, 255 ), math.Rand( 245, 255 ) )
            smoke:SetAirResistance( 5 )
            smoke:SetPos( self:GetPos() + (VectorRand()*64) )
            smoke:SetLighting( false )
			
        end
        emitter:Finish()
	
    else

        self:Remove()

    end
    else
        local targets = ents.FindInSphere(self:GetPos(), 256)
        for _, k in pairs(targets) do
            if k:IsPlayer() or k:IsNPC() then
                local regen = FrameTime() * 900
                k:SetHealth( math.Clamp( k:Health() - regen, 0, k:GetMaxHealth()+k:GetMaxHealth() ) )
				if(SERVER) then
				k:Ignite( 1 )
				end
			if !k:IsPlayer() or !k:IsNPC() then
				end
            end
        end
    end

    if CLIENT then
        local emitter = ParticleEmitter(self:GetPos())

        if !self:IsValid() or self:WaterLevel() > 2 then return end

            local smoke = emitter:Add("effects/gow/scorcher_particle", self:GetPos())
        smoke:SetVelocity( VectorRand() * 250 )
        smoke:SetGravity( Vector(math.Rand(-5, 5), math.Rand(-5, 5), math.Rand(-5, 15)) )
        smoke:SetDieTime( 0.5 )
        smoke:SetStartAlpha( 255 )
        smoke:SetEndAlpha( 0 )
        smoke:SetStartSize( 250 )
        smoke:SetEndSize( 300 )
        smoke:SetRoll( math.Rand(-180, 180) )
        smoke:SetRollDelta( math.Rand(-0.2,0.2) )
        smoke:SetColor( math.Rand( 245, 255 ), math.Rand( 125, 150 ), math.Rand( 125, 150 ) )
        smoke:SetAirResistance( 5 )
        smoke:SetPos( self:GetPos() + (Vector(math.Rand(-5, 5), math.Rand(-5, 5), math.Rand(-5, 0))))
        smoke:SetLighting( false )

        local particle = emitter:Add( "effects/gow/fire_cloud1", self:GetPos() ) 
        particle:SetVelocity( VectorRand() * 300 )
        particle:SetGravity( Vector(math.Rand(-5, 5), math.Rand(-5, 5), math.Rand(-5, 15)) )
        particle:SetDieTime( 0.5 )
        particle:SetStartAlpha( 255 )
        particle:SetEndAlpha( 0 )
        particle:SetStartSize( 250 )
        particle:SetEndSize( 300 )
        particle:SetRoll( math.Rand(-180, 180) )
        particle:SetRollDelta( math.Rand(-0.2,0.2) )
        particle:SetColor( math.Rand( 245, 255 ), math.Rand( 125, 150 ), math.Rand( 125, 150 ) )
        particle:SetAirResistance( 5 )
        particle:SetPos( self:GetPos() + (Vector(math.Rand(-5, 5), math.Rand(-5, 5), math.Rand(-5, 0))))
        particle:SetLighting( false )


        emitter:Finish()
    end
end

function ENT:Draw()
    return false
end