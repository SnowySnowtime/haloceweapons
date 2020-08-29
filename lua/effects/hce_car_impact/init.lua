

function EFFECT:Init(data)
	
	self.WeaponEnt = data:GetEntity()
	self.Attachment = data:GetAttachment()
	
	self.Position = self:GetTracerShootPos(data:GetOrigin(), self.WeaponEnt, self.Attachment)
	self.Forward = data:GetNormal()
	self.Angle = self.Forward:Angle()
	self.Right = self.Angle:Right()

	local emitter = ParticleEmitter(self.Position)
		
		for i=0,3 do 
		local particle = emitter:Add("effects/hce/plasma_noise", self.Position)
		particle:SetVelocity(self.Forward*(10+(i*5)))
		particle:SetDieTime(0.1)
		particle:SetStartAlpha(255)
		particle:SetEndAlpha(255)
		particle:SetStartSize(3)
		particle:SetEndSize(1)
		particle:SetRoll(math.Rand(180,480))
		particle:SetRollDelta(math.Rand(-3,3))
		particle:SetColor(10,255,10)
		end
		
		for i=0,3 do 
		local particle = emitter:Add("effects/hce/plasma_noise", self.Position)
		particle:SetVelocity( VectorRand() )
		particle:SetDieTime(0.1)
		particle:SetStartAlpha(177)
		particle:SetEndAlpha(177)
		particle:SetStartSize(6)
		particle:SetEndSize(1)
		particle:SetRoll(math.Rand(180,480))
		particle:SetRollDelta(math.Rand(-3,3))
		particle:SetColor(10,255,10)	
		end
		
		for i=0,3 do 
		local particle = emitter:Add("effects/hce/plasma_noise", self.Position)
		particle:SetVelocity( VectorRand() )
		particle:SetDieTime(0.15)
		particle:SetStartAlpha(100)
		particle:SetEndAlpha(100)
		particle:SetStartSize(9)
		particle:SetEndSize(3)
		particle:SetRoll(math.Rand(180,480))
		particle:SetRollDelta(math.Rand(-3,3))
		particle:SetColor(10,255,10)	
		end
		
		for i=0,3 do 
		local particle = emitter:Add("effects/hce/plasma_ring", self.Position)
		particle:SetVelocity( VectorRand() )
		particle:SetDieTime(0.15)
		particle:SetStartAlpha(100)
		particle:SetEndAlpha(100)
		particle:SetStartSize(12)
		particle:SetEndSize(5)
		particle:SetRoll(math.Rand(180,480))
		particle:SetRollDelta(math.Rand(-3,3))
		particle:SetColor(10,255,10)	
		end
		
		for i=0,3 do 
		local particle = emitter:Add("effects/hce/plasma_ring", self.Position)
		particle:SetVelocity( VectorRand() )
		particle:SetDieTime(0.15)
		particle:SetStartAlpha(100)
		particle:SetEndAlpha(100)
		particle:SetStartSize(7)
		particle:SetEndSize(5)
		particle:SetRoll(math.Rand(180,480))
		particle:SetRollDelta(math.Rand(-3,3))
		particle:SetColor(10,255,10)	
		end
		
		for i=0,3 do 
		local particle = emitter:Add("effects/hce/plasma_twirl", self.Position)
		particle:SetVelocity( VectorRand() )
		particle:SetDieTime(0.15)
		particle:SetStartAlpha(100)
		particle:SetEndAlpha(100)
		particle:SetStartSize(7)
		particle:SetEndSize(5)
		particle:SetRoll(math.Rand(180,480))
		particle:SetRollDelta(math.Rand(-3,3))
		particle:SetColor(10,255,10)	
		end
		
		for i=0,3 do 
		local particle = emitter:Add("effects/hce/plasma_twirl", self.Position)
		particle:SetVelocity( VectorRand() )
		particle:SetDieTime(0.15)
		particle:SetStartAlpha(100)
		particle:SetEndAlpha(100)
		particle:SetStartSize(6)
		particle:SetEndSize(5)
		particle:SetRoll(math.Rand(180,480))
		particle:SetRollDelta(math.Rand(-3,3))
		particle:SetColor(10,255,10)	
		end
		
		for i=0,3 do 
		local particle = emitter:Add("effects/hce/plasma_ring", self.Position)
		particle:SetVelocity( VectorRand() )
		particle:SetDieTime(0.15)
		particle:SetStartAlpha(100)
		particle:SetEndAlpha(100)
		particle:SetStartSize(9)
		particle:SetEndSize(5)
		particle:SetRoll(math.Rand(180,480))
		particle:SetRollDelta(math.Rand(-3,3))
		particle:SetColor(10,255,10)	
		end

//////// BACKBLAST PART

		for i=0,3 do
		local particle = emitter:Add("effects/hce/plasma_noise", self.Position-(self.Forward*60) )
		particle:SetVelocity( VectorRand() )
		particle:SetDieTime(0.1)
		particle:SetStartAlpha(255)
		particle:SetEndAlpha(255)
		particle:SetStartSize(10)
		particle:SetEndSize(0)
		particle:SetRoll(math.Rand(180,480))
		particle:SetRollDelta(math.Rand(-3,3))
		particle:SetColor(10,255,10)
		end

		for i=0,5 do
		local particle = emitter:Add("effects/hce/plasma_noise", self.Position-(self.Forward*60) )
		particle:SetVelocity( VectorRand()*20 )
		particle:SetDieTime(0.14)
		particle:SetStartAlpha(255)
		particle:SetEndAlpha(0)
		particle:SetStartSize(1)
		particle:SetEndSize(10)
		particle:SetRoll(math.Rand(180,480))
		particle:SetRollDelta(math.Rand(-3,3))
		particle:SetColor(10,255,10)
		end

	emitter:Finish()

end


function EFFECT:Think()

	return false
	
end


function EFFECT:Render()

	
end



