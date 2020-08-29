
function EFFECT:Init(data)
    self.Origin = data:GetOrigin()
    local emitter = ParticleEmitter( self.Origin + Vector( 0, 0, 16 ) )
local light = DynamicLight(self:EntIndex())
        if (light) then
            light.Pos = self:GetPos()
            light.r = 200
            light.g = 255
            light.b = 155
            light.Brightness = 3
            light.Decay = 10
            light.Size = 512
            light.DieTime = CurTime() + 0.3
        end
    local particle = emitter:Add("effects/halo3/muzzle_fuelrod", self.Origin)

    particle:SetVelocity( 25 * VectorRand() )
    particle:SetDieTime( 0.2 )
    particle:SetStartAlpha( 255 )
    particle:SetEndAlpha( 0 )
    particle:SetStartSize( math.Rand(5,15) )
    particle:SetEndSize( math.Rand(150,300) )
    particle:SetRoll( math.Rand(0,360) )
    particle:SetRollDelta( math.Rand(0,0) )
    particle:SetColor( 255, 255, 255 )
    particle:SetAirResistance( 55 )
    particle:SetLighting( false )
    particle:SetCollide( false )
	


	
		for i= 0,3 do
	  local particle = emitter:Add("effects/halo3/smoke_directional_large", self.Origin)

    particle:SetVelocity( Vector(0,math.Rand(75, 100),math.Rand(65, 125)) )
    particle:SetDieTime( math.Rand(0.5,1) )
    particle:SetStartAlpha( 155 )
    particle:SetEndAlpha( 0 )
    particle:SetStartSize( math.Rand(25,75) )
    particle:SetEndSize( math.Rand(300,350) )
    particle:SetRoll( math.Rand(0,360) )
    particle:SetRollDelta( math.Rand(-0.5,0.5) )
    particle:SetColor( 125, 255, 100 )
    particle:SetAirResistance( 55 )
    particle:SetGravity( Vector( 0, 0, math.Rand(-10,50) ) )
    particle:SetLighting( false )
    particle:SetCollide( false )
	end

    particle = emitter:Add( "effects/halo3/muzzle_plasmapistol", self.Origin )
        particle:SetVelocity( 1 * VectorRand() )
        particle:SetDieTime( math.Rand(0.25, 0.3) )
        particle:SetStartAlpha( 200 )
        particle:SetEndAlpha( 0 )
        particle:SetStartSize( math.Rand(20,35) )
        particle:SetEndSize( math.Rand(250,400) )
        particle:SetRoll( math.Rand(0,360) )
        particle:SetRollDelta( math.Rand(-1,1) )
        particle:SetColor( 255,150,50 )
        particle:SetAirResistance( 200 )
        particle:SetGravity( Vector( 0, 0, math.Rand(10,40) ) )
        particle:SetLighting( false )
        particle:SetCollide( true )
        particle:SetBounce( 0.5 )
	
    particle = emitter:Add( "effects/halo3/electric_arcs", self.Origin )
        particle:SetVelocity( 1 * VectorRand() )
        particle:SetDieTime( math.Rand(0.3, 0.4) )
        particle:SetStartAlpha( 200 )
        particle:SetEndAlpha( 0 )
        particle:SetStartSize( math.Rand(20,35) )
        particle:SetEndSize( math.Rand(300,325) )
        particle:SetRoll( math.Rand(0,360) )
        particle:SetRollDelta( math.Rand(-1,1) )
        particle:SetColor( 255,225,200 )
        particle:SetAirResistance( 200 )
        particle:SetGravity( Vector( 0, 0, math.Rand(10,40) ) )
        particle:SetLighting( false )
        particle:SetCollide( true )
        particle:SetBounce( 0.5 )

    emitter:Finish()

end

function EFFECT:Think()
    return false
end

function EFFECT:Render()
end