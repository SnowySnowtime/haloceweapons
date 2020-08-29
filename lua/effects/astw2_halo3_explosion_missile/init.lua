
function EFFECT:Init(data)
    self.Origin = data:GetOrigin()
    local emitter = ParticleEmitter( self.Origin + Vector( 0, 0, 16 ) )
local light = DynamicLight(self:EntIndex())
        if (light) then
            light.Pos = self:GetPos()
            light.r = 255
            light.g = 255
            light.b = 100
            light.Brightness = 3
            light.Decay = 10
            light.Size = 512
            light.DieTime = CurTime() + 0.3
        end
    local particle = emitter:Add("effects/halo3/8pt_ringed_star_flare", self.Origin)

    particle:SetVelocity( 25 * VectorRand() )
    particle:SetDieTime( 0.2 )
    particle:SetStartAlpha( 255 )
    particle:SetEndAlpha( 0 )
    particle:SetStartSize( math.Rand(5,15) )
    particle:SetEndSize( math.Rand(100,200) )
    particle:SetRoll( math.Rand(0,360) )
    particle:SetRollDelta( math.Rand(0,0) )
    particle:SetColor( 255, 255, 255 )
    particle:SetAirResistance( 55 )
    particle:SetLighting( false )
    particle:SetCollide( false )
	

    for i= 0,5 do
   local particle = emitter:Add("effects/halo3/smoke_dark", self.Origin)

    particle:SetVelocity( Vector(math.Rand(-100, 100),math.Rand(-100, 100),math.Rand(250, 400)) )
    particle:SetDieTime( math.Rand(2,3) )
    particle:SetStartAlpha( 25 )
    particle:SetEndAlpha( 100 )
    particle:SetStartSize( math.Rand(95,100) )
    particle:SetEndSize( math.Rand(95,115) )
    particle:SetRoll( math.Rand(0,360) )
    particle:SetRollDelta( math.Rand(-0.5,0.5) )
    particle:SetColor( 155, 155, 155 )
    particle:SetAirResistance( 55 )
    particle:SetGravity( Vector( 0, 0, math.Rand(-325,-425) ) )
    particle:SetLighting( true )
    particle:SetCollide( false )
	end

		for i= 0,5 do
        particle = emitter:Add( "effects/halo3/explosion" .. math.random(2,4) , self.Origin )
        particle:SetVelocity( 7 * Vector(math.Rand(-50, 50),math.Rand(-50, 50),math.Rand(20, 50)) )
        particle:SetDieTime( math.Rand(0.5, 0.7) )
        particle:SetStartAlpha( 255 )
        particle:SetEndAlpha( 0 )
        particle:SetStartSize( math.Rand(50,75) )
        particle:SetEndSize( math.Rand(85,105) )
        particle:SetRoll( math.Rand(0,360) )
        particle:SetRollDelta( math.Rand(-1,1) )
        particle:SetColor( 255,math.Rand( 235, 255 ),math.Rand( 200, 215 ) )
        particle:SetAirResistance( 200 )
        particle:SetGravity( Vector( 0, 0, math.Rand(10,25) ) )
        particle:SetLighting( false )
        particle:SetCollide( true )
        particle:SetBounce( 0.5 )
	end

    for i = 0,5 do
        particle = emitter:Add( "effects/halo3/explosion1" , self.Origin )

        particle:SetVelocity( 1 * VectorRand() )
        particle:SetDieTime( math.Rand(0.2, 0.3) )
        particle:SetStartAlpha( 255 )
        particle:SetEndAlpha( 0 )
        particle:SetStartSize( math.Rand(20,35) )
        particle:SetEndSize( math.Rand(175,225) )
        particle:SetRoll( math.Rand(0,360) )
        particle:SetRollDelta( math.Rand(-1,1) )
        particle:SetColor( 255,255,210 )
        particle:SetAirResistance( 200 )
        particle:SetGravity( Vector( 0, 0, math.Rand(10,40) ) )
        particle:SetLighting( false )
        particle:SetCollide( true )
        particle:SetBounce( 0.5 )
    end

    particle = emitter:Add( "effects/halo3/explosive_burst", self.Origin )
        particle:SetVelocity( 1 * VectorRand() )
        particle:SetDieTime( math.Rand(0.25, 0.3) )
        particle:SetStartAlpha( 200 )
        particle:SetEndAlpha( 0 )
        particle:SetStartSize( math.Rand(20,35) )
        particle:SetEndSize( math.Rand(125,250) )
        particle:SetRoll( math.Rand(0,360) )
        particle:SetRollDelta( math.Rand(-1,1) )
        particle:SetColor( 255,225,50 )
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