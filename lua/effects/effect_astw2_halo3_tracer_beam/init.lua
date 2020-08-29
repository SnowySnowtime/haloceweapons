
local Tracer = Material( "effects/halo2/plasma_contrail" )
local Tracer2  = Material( "effects/halo2/plasma_contrail" )
local Width = 5
local Width2 = 2

function EFFECT:Init( data )

	-- self.Position = data:GetStart()
	self.Entity=data:GetEntity()
	if !IsValid(self.Entity) then return end
	self.Position = self.Entity:GetAttachment(1).Pos
	self.EndPos = data:GetOrigin()
	self.WeaponEnt = data:GetEntity()
	self.Attachment = data:GetAttachment()
	self.StartPos = self:GetTracerShootPos( self.Position, self.WeaponEnt, self.Attachment )
	self:SetRenderBoundsWS( self.StartPos, self.EndPos )

	self.Dir = ( self.EndPos - self.StartPos ):GetNormalized()
	self.Dist = self.StartPos:Distance( self.EndPos )
	
	self.LifeTime = 0.05
	self.LifeTime2 = 0.07
	self.DieTime = CurTime() + self.LifeTime
	self.DieTime2 = CurTime() + self.LifeTime2

end

function EFFECT:Think()

	if ( CurTime() > self.DieTime ) then return false end
	return true

end

function EFFECT:Render()

	local r = 255
	local g = 255
	local b = 255
	
	local v = ( self.DieTime - CurTime() ) / self.LifeTime
	
	local v2 = ( self.DieTime2 - CurTime() ) / self.LifeTime2

	render.SetMaterial( Tracer )
	render.DrawBeam( self.StartPos, self.EndPos, (v * Width)*3/2, 0, (self.Dist/10)*math.Rand(-2,2), Color( 255, 100, 75, v * 155 ) )
	
	render.SetMaterial( Tracer2 )
	render.DrawBeam( self.StartPos, self.EndPos, (v2 * Width2)*2/3, 0, (self.Dist/10)*math.Rand(-2,2), Color( 255, 100, 75, (v2 * 100)*3/2.5 ) )

end
