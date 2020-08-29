function EFFECT:Init(data)
	
	self.Position = self:GetTracerShootPos(data:GetOrigin(), self.WeaponEnt, self.Attachment)
	self.Forward = data:GetNormal()
	self.Angle = self.Forward:Angle()
	self.Right = self.Angle:Right()

	local emitter = ParticleEmitter(self.Position)
		
		for i=0,3 do 
		local particle = emitter:Add("effects/hce/pistol_impact"..math.random(1,4), self.Position)
		particle:SetVelocity(self.Forward*(10+(i*5)))
		particle:SetDieTime(0.1)
		particle:SetStartAlpha(255)
		particle:SetEndAlpha(0)
		particle:SetStartSize(30-i)
		particle:SetEndSize(7-i)
		particle:SetRoll(math.Rand(180,480))
		particle:SetRollDelta(math.Rand(-1,1))
		particle:SetColor(255,255,255)	
		end
		
		for i=0,3 do 
		local particle = emitter:Add("effects/hce/pistol_impact"..math.random(1,4), self.Position)
		particle:SetVelocity(self.Forward*(10+(i*5)))
		particle:SetDieTime(0.1)
		particle:SetStartAlpha(255)
		particle:SetEndAlpha(0)
		particle:SetStartSize(7-i)
		particle:SetEndSize(30-i)
		particle:SetRoll(math.Rand(180,480))
		particle:SetRollDelta(math.Rand(-1,1))
		particle:SetColor(255,255,255)	
		end
		
		for i=0,3 do 
		local particle = emitter:Add("effects/hce/pistol_impact"..math.random(1,4), self.Position)
		particle:SetVelocity(self.Forward*(10+(i*5)))
		particle:SetDieTime(0.1)
		particle:SetStartAlpha(100)
		particle:SetEndAlpha(0)
		particle:SetStartSize(7-i)
		particle:SetEndSize(38-i)
		particle:SetRoll(math.Rand(180,480))
		particle:SetRollDelta(math.Rand(-1,1))
		particle:SetColor(255,255,255)	
		end
		
		for i=0,3 do 
		local particle = emitter:Add("effects/hce/pistol_impact"..math.random(1,4), self.Position)
		particle:SetVelocity(self.Forward*(10+(i*5)))
		particle:SetDieTime(0.2)
		particle:SetStartAlpha(120)
		particle:SetEndAlpha(0)
		particle:SetStartSize(7-i)
		particle:SetEndSize(41-i)
		particle:SetRoll(math.Rand(180,480))
		particle:SetRollDelta(math.Rand(-1,1))
		particle:SetColor(255,255,255)	
		end
		
		for i=0,3 do 
		local particle = emitter:Add("effects/hce/pistol_impact"..math.random(1,4), self.Position)
		particle:SetVelocity(self.Forward*(10+(i*5)))
		particle:SetDieTime(0.2)
		particle:SetStartAlpha(120)
		particle:SetEndAlpha(0)
		particle:SetStartSize(7-i)
		particle:SetEndSize(50-i)
		particle:SetRoll(math.Rand(180,480))
		particle:SetRollDelta(math.Rand(-1,1))
		particle:SetColor(255,255,255)	
		end
	emitter:Finish()

end


function EFFECT:Think()

	return false
	
end


function EFFECT:Render()

	
end



