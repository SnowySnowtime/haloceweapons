EFFECT.Duration			= 0.25;
EFFECT.Size				= 32;

local MaterialGlow		= Material( "effects/halo3/8pt_ringed_star_flare" );

function EFFECT:Init( data )

	self.Position = data:GetOrigin();
	self.Normal = data:GetNormal();
	self.LifeTime = self.Duration;

	-- particles
	local emitter = ParticleEmitter( self.Position );
	if( emitter ) then
		
		for i = 1, 1 do

			local particle = emitter:Add( "effects/halo3/flash_large", self.Position + self.Normal * 2 );
			particle:SetVelocity( ( self.Normal + Vector(math.Rand(3, 5),math.Rand(3, 5),1) * 0.75 ):GetNormal() * math.Rand( 75, 125 ) );
			particle:SetDieTime( math.Rand( 0.05, 0.15 ) );
			particle:SetStartAlpha( 255 );
			particle:SetEndAlpha( 0 );
			particle:SetStartSize( math.Rand( 3, 5 ) );
			particle:SetEndSize( 30 );
			particle:SetRoll( math.Rand(-55, 85) );
			particle:SetGravity( Vector( 0, 0, 0 ) );
			particle:SetColor(100, 255, 100);
			particle:SetCollide( true );
			particle:SetBounce( 0 );
			particle:SetAirResistance( 500 );

		end
	for i = 1, 1 do

			local particle = emitter:Add( "effects/halo3/explosive_burst", self.Position + self.Normal * 2 );
			particle:SetVelocity( ( self.Normal + Vector(math.Rand(3, 5),math.Rand(3, 5),1) * 0.75 ):GetNormal() * math.Rand( 75, 125 ) );
			particle:SetDieTime( math.Rand( 0.1, 0.2 ) );
			particle:SetStartAlpha( 255 );
			particle:SetEndAlpha( 0 );
			particle:SetStartSize( math.Rand( 3, 5 ) );
			particle:SetEndSize( 25 );
			particle:SetRoll( math.Rand(-55, 85) );
			particle:SetGravity( Vector( 0, 0, 0 ) );
			particle:SetColor(100, 255, 100);
			particle:SetCollide( true );
			particle:SetBounce( 0 );
			particle:SetAirResistance( 500 );

		end
		emitter:Finish();
	end
	end


function EFFECT:Think()

	self.LifeTime = self.LifeTime - FrameTime();
	return self.LifeTime > 0;

end


function EFFECT:Render()

	local frac = math.max( 0, self.LifeTime / self.Duration );
	local rgb = 255 * frac;
	local color = Color( rgb, 255, rgb, 255 );

	render.SetMaterial( MaterialGlow );
	render.DrawQuadEasy( self.Position + self.Normal, self.Normal, self.Size, self.Size, color );

end
