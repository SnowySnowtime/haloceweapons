include("shared.lua")

function ENT:Initialize()
	self.SpawnTime = ( CurTime() - 0.75 )
	self:DrawShadow( false )
end

function ENT:Draw()
	-- self:DrawModel()
end

function ENT:Think()	
	local life = ( CurTime() - self.SpawnTime  ) 
	local t = EffectData()
		t:SetOrigin( self:GetPos() )
		t:SetScale( 1 )
		util.Effect( "astw2_gow_flamethrower_particle", t )
	
	local dlight = DynamicLight( self:EntIndex() )
	if ( dlight ) then
		dlight.pos = self:GetPos()
		dlight.r = 255
		dlight.g = 200
		dlight.b = 50
		dlight.brightness = 1
		dlight.Decay = 128
		dlight.Size = 128
		dlight.DieTime = CurTime() + 1
	end
	
	self:SetNextClientThink( CurTime() + 0.025 )
	return true
end 



-- 
-- FLAMER EFFECT
local EFFECT = {}
function EFFECT:Init( data )
	local pos = self:GetPos()
	local norm = self:GetForward()
	local emitter = ParticleEmitter( pos )
	local str = "effects/gow/scorcher_particle"
	local dir = ( norm * 64) 
	local scale = data:GetScale() -- handdles by the entity projectile
	for i = 1, math.random(4,8) do
		local velo = VectorRand()
		local grav = VectorRand()
		local x = math.random(200,255)
		local r,g,b = x,x,x
		local p = emitter:Add( str, pos );
		if ( p ) then
			p:SetVelocity( (dir + velo * math.random(64,128))*scale )
			p:SetAirResistance( 64 * scale ) 
			-- p:SetGravity( grav * 64 )
			p:SetDieTime( math.Rand(.1,.4) )
			p:SetStartAlpha( 0 )
			p:SetEndAlpha( 255 )
			local x = ( math.Rand(16, 32) * scale )
			p:SetStartSize( 0 )
			p:SetEndSize( x )
			p:SetColor( r,g,b )
			p:SetCollide( true )
			p:SetBounce( 1 )
			p:SetRoll( math.Rand(-10,10)*1 )
			if i == 1 then
				p:SetAirResistance( 32 ) 
				p:SetVelocity( Vector(0,0,0) )
				p:SetGravity( Vector(0,0,100) + VectorRand()*64 )
				p:SetStartSize( 32*scale )
				p:SetEndSize( 0 )
				p:SetDieTime( math.Rand(.4,2) )
				p:SetColor( 255,255,255 )
				p:SetStartAlpha( 255 )
				p:SetEndAlpha( 0 )	
				p:SetBounce( .1 )
			end
		end
	end
	emitter:Finish()
end
function EFFECT:Render() end
effects.Register( EFFECT, "astw2_gow_flamethrower_particle" )
