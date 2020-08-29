

include('shared.lua')


/*---------------------------------------------------------
   Name: Initialize
---------------------------------------------------------*/
function ENT:Initialize()
	
	self.Color = Color( 255, 255, 255, 255 )
	
end


/*---------------------------------------------------------
   Name: DrawPre
---------------------------------------------------------*/
function ENT:Draw()

	--self.Entity:DrawModel()

end

function ENT:Think()    
	local dlight = DynamicLight( self:EntIndex() ) 
	if ( dlight ) then 
		dlight.Pos = self:GetPos() 
		dlight.r = 60
		dlight.g = 255
		dlight.b = 60
		dlight.Brightness = 1.5
		dlight.Decay = 1000
		dlight.Size = 256
		dlight.DieTime = CurTime() + 0.1
	end 
end 
