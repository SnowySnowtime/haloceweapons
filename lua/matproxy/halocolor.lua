matproxy.Add( {
	name = "vuth_Compass",
	init = function( self, mat, values )
		self.ResultTo = values.resultvar
	end,

	bind = function( self, mat, ent )
		if ( !IsValid( ent )) then return end
		local owner = ent:GetOwner()
		if ( !IsValid( owner ) or !owner:IsPlayer() ) then return end
		local world = game.GetWorld
		local ang = owner:EyeAngles()
		local angmath = ang

		mat:SetVector( self.ResultTo, Vector(-angmath.y, 0, 0) )
	end
} )

matproxy.Add( {
	name = "haloPlayerWeaponColorNOPULSE",

	init = function( self, mat, values )

		self.ResultTo = values.resultvar

	end,

	bind = function( self, mat, ent )

		if ( !IsValid( ent ) ) then return end

		local owner = ent:GetOwner()
		if ( !IsValid( owner ) or !owner:IsPlayer() ) then return end

		local col = owner:GetWeaponColor()
		if ( !isvector( col ) ) then return end

		local mul = ( 1 + math.sin( CurTime() * 5 ) ) * 0

		mat:SetVector( self.ResultTo, col + col * mul )

	end
} )

matproxy.Add( {
	name = "vuth_Compass",
	init = function( self, mat, values )
		self.ResultTo = values.resultvar
	end,

	bind = function( self, mat, ent )
		if ( !IsValid( ent )) then return end
		local owner = ent:GetOwner()
		if ( !IsValid( owner ) or !owner:IsPlayer() ) then return end
		local world = game.GetWorld
		local ang = owner:EyeAngles()
		local angmath = ang

		mat:SetVector( self.ResultTo, Vector(-angmath.y, 0, 0) )
	end
} )

matproxy.Add( {
	name = "vuth_ReflectionTint",
	init = function( self, mat, values )
		self.ResultTo = values.resultvar
		self.TintVector = mat:GetVector("$cubemaptint")
		self.PowerFloat = mat:GetFloat("$cubemappower")
	end,

	bind = function( self, mat, ent )
		if ( !IsValid( ent )) then return end
		local owner = ent
		if !IsValid( owner ) then return end
		local lightlevel = render.GetLightColor(owner:GetPos())
		
		local lightr = lightlevel.x
		local lightg = lightlevel.y
		local lightb = lightlevel.z
		
		local col = Vector(lightr, lightg, lightb)
		
		if ( !isvector( col )) then return end
		
		mat:SetVector( self.ResultTo, (col * self.PowerFloat) + (self.TintVector * self.PowerFloat) * col )
	end
} )