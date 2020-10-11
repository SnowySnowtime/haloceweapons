
function EFFECT:Init(data)
    self.Origin = data:GetOrigin()
    local emitter = ParticleEmitter( self.Origin + Vector( 0, 0, 16 ) )
local light = DynamicLight(self:EntIndex())
        if (light) then
            light.Pos = self:GetPos()
            light.r = 155
            light.g = 155
            light.b = 255
            light.Brightness = 3
            light.Decay = 10
            light.Size = 512
            light.DieTime = CurTime() + 0.3
        end
		
		
		
    local particle = emitter:Add("effects/halo3/muzzle_flash_round_fiery", self.Origin)

    particle:SetVelocity( 25 * VectorRand() )
    particle:SetDieTime( 0.35 )
    particle:SetStartAlpha( 255 )
    particle:SetEndAlpha( 0 )
    particle:SetStartSize( math.Rand(5,15) )
    particle:SetEndSize( math.Rand(50,150) )
    particle:SetRoll( math.Rand(0,360) )
    particle:SetRollDelta( math.Rand(0,0) )
    particle:SetColor( 215, 215, 255 )
    particle:SetAirResistance( 55 )
    particle:SetLighting( false )
    particle:SetCollide( false )
	
    local particle = emitter:Add("effects/halo3/explosive_burst", self.Origin)

    particle:SetVelocity( 25 * VectorRand() )
    particle:SetDieTime( 0.2 )
    particle:SetStartAlpha( 255 )
    particle:SetEndAlpha( 0 )
    particle:SetStartSize( math.Rand(5,15) )
    particle:SetEndSize( math.Rand(50,150) )
    particle:SetEndSize( math.Rand(50,150) )
    particle:SetRoll( math.Rand(0,360) )
    particle:SetRollDelta( math.Rand(0,0) )
    particle:SetColor( 215, 215, 255 )
    particle:SetAirResistance( 55 )
    particle:SetLighting( false )
    particle:SetCollide( false )
	


	
		for i= 0,3 do
	  local particle = emitter:Add("effects/halo3/smoke_directional_large", self.Origin)

    particle:SetVelocity( Vector(0,math.Rand(75, 100),math.Rand(65, 125)) )
    particle:SetDieTime( math.Rand(1,1.5) )
    particle:SetStartAlpha( 255 )
    particle:SetEndAlpha( 0 )
    particle:SetStartSize( math.Rand(25,75) )
    particle:SetEndSize( math.Rand(100,150) )
    particle:SetRoll( math.Rand(0,360) )
    particle:SetRollDelta( math.Rand(-0.5,0.5) )
    particle:SetColor( 55, 55, 255 )
    particle:SetAirResistance( 755 )
    particle:SetGravity( Vector( 0, 0, math.Rand(-10,50) ) )
    particle:SetLighting( false )
    particle:SetCollide( false )
	end

    particle = emitter:Add( "effects/halo_reach/emp_mask", self.Origin )
        particle:SetVelocity( 1 * VectorRand() )
        particle:SetDieTime( math.Rand(0.25, 0.3) )
        particle:SetStartAlpha( 200 )
        particle:SetEndAlpha( 0 )
        particle:SetStartSize( math.Rand(20,35) )
        particle:SetEndSize( math.Rand(100,200) )
        particle:SetRoll( math.Rand(0,360) )
        particle:SetRollDelta( math.Rand(-1,1) )
        particle:SetColor( 155,155,255 )
        particle:SetAirResistance( 200 )
        particle:SetGravity( Vector( 0, 0, math.Rand(10,40) ) )
        particle:SetLighting( false )
        particle:SetCollide( true )
        particle:SetBounce( 0.5 )
		
	    particle = emitter:Add( "effects/halo_reach/plasma_bolt", self.Origin )
        particle:SetVelocity( 1 * VectorRand() )
        particle:SetDieTime( math.Rand(0.25, 0.3) )
        particle:SetStartAlpha( 200 )
        particle:SetEndAlpha( 0 )
        particle:SetStartSize( math.Rand(20,35) )
        particle:SetEndSize( math.Rand(100,200) )
        particle:SetRoll( math.Rand(0,360) )
        particle:SetRollDelta( math.Rand(-1,1) )
        particle:SetColor( 155,155,255 )
        particle:SetAirResistance( 200 )
        particle:SetGravity( Vector( 0, 0, math.Rand(10,40) ) )
        particle:SetLighting( false )
        particle:SetCollide( true )
        particle:SetBounce( 0.5 )
	
    particle = emitter:Add( "effects/halo3/electric_arcs", self.Origin )
        particle:SetVelocity( 1 * VectorRand() )
        particle:SetDieTime( math.Rand(0.5, 0.7) )
        particle:SetStartAlpha( 200 )
        particle:SetEndAlpha( 0 )
        particle:SetStartSize( math.Rand(20,35) )
        particle:SetEndSize( math.Rand(150,250) )
        particle:SetRoll( math.Rand(0,360) )
        particle:SetRollDelta( math.Rand(-1,1) )
        particle:SetColor( 185,185,255 )
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