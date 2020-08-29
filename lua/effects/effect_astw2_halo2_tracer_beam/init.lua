
local Tracer = Material( "trails/laser" )
local Width = 96

function EFFECT:Init( t )
	
	self.LifeTime = 0.25
	self.DieTime = CurTime() + self.LifeTime

	local e = t:GetEntity()
	if !IsValid(e) then return end
	
	local v = e:GetAttachment(1).Pos
	local vv = t:GetOrigin()
	
	self.StartPos = self:GetTracerShootPos( v, e, 1 )
	self.EndPos = vv
	
	self:SetRenderBoundsWS( self.StartPos, self.EndPos )

	self.Dir = ( self.EndPos - self.StartPos ):GetNormalized()
	self.Dist = self.StartPos:Distance( self.EndPos )
	
end

function EFFECT:Think()
	-- if true then return end
	if ( CurTime() > self.DieTime ) then return false end
	return true
end

function EFFECT:Render()
	local v = ( self.DieTime - CurTime() ) / self.LifeTime
	render.SetMaterial( Tracer )
	for i=1, 4 do
		render.DrawBeam( self.StartPos, self.EndPos, ( Width / i)* v, 0, (self.Dist/10)*math.Rand(-2,2), Color( 225, 100, 100, v * 100 ) )
	end
end
