

function EFFECT:Init(data)
	
	self.WeaponEnt = data:GetEntity()
	self.Attachment = data:GetAttachment()
	
	self.Position = self:GetTracerShootPos(data:GetOrigin(), self.WeaponEnt, self.Attachment)
	self.Forward = data:GetNormal()
	self.Angle = self.Forward:Angle()
	self.Right = self.Angle:Right()

	local emitter = ParticleEmitter(self.Position)
		
		for i=0,3 do 
		local particle = emitter:Add("effects/hce/arflash"..math.random(1,3), self.Position)
		particle:SetVelocity(self.Forward*(10+(i*5)))
		particle:SetDieTime(0.1)
		particle:SetStartAlpha(255)
		particle:SetEndAlpha(255)
		particle:SetStartSize(20)
		particle:SetEndSize(5)
		particle:SetRoll(math.Rand(180,480))
		particle:SetRollDelta(math.Rand(-3,3))
		particle:SetColor(0,255,255)	
		end
		
		for i=0,3 do 
		local particle = emitter:Add("effects/hce/arflash"..math.random(1,3), self.Position)
		particle:SetVelocity( VectorRand() )
		particle:SetDieTime(0.1)
		particle:SetStartAlpha(177)
		particle:SetEndAlpha(177)
		particle:SetStartSize(25)
		particle:SetEndSize(5)
		particle:SetRoll(math.Rand(180,480))
		particle:SetRollDelta(math.Rand(-3,3))
		particle:SetColor(0,255,255)	
		end
		
		for i=0,3 do 
		local particle = emitter:Add("effects/hce/arflash"..math.random(1,3), self.Position)
		particle:SetVelocity( VectorRand() )
		particle:SetDieTime(0.15)
		particle:SetStartAlpha(100)
		particle:SetEndAlpha(100)
		particle:SetStartSize(30)
		particle:SetEndSize(5)
		particle:SetRoll(math.Rand(180,480))
		particle:SetRollDelta(math.Rand(-3,3))
		particle:SetColor(0,255,255)	
		end

//////// BACKBLAST PART

		for i=0,3 do
		local particle = emitter:Add("effects/hce/arflash"..math.random(1,3), self.Position-(self.Forward*60) )
		particle:SetVelocity( VectorRand() )
		particle:SetDieTime(0.1)
		particle:SetStartAlpha(255)
		particle:SetEndAlpha(255)
		particle:SetStartSize(60)
		particle:SetEndSize(0)
		particle:SetRoll(math.Rand(180,480))
		particle:SetRollDelta(math.Rand(-3,3))
		particle:SetColor(0,255,255)
		end

		for i=0,5 do
		local particle = emitter:Add("effects/hce/arflash2", self.Position-(self.Forward*60) )
		particle:SetVelocity( VectorRand()*20 )
		particle:SetDieTime(0.14)
		particle:SetStartAlpha(255)
		particle:SetEndAlpha(0)
		particle:SetStartSize(1)
		particle:SetEndSize(50)
		particle:SetRoll(math.Rand(180,480))
		particle:SetRollDelta(math.Rand(-3,3))
		particle:SetColor(0,255,255)
		end

	emitter:Finish()

end


function EFFECT:Think()

	return false
	
end


function EFFECT:Render()

	
end



