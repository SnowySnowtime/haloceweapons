

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
		particle:SetStartSize(35)
		particle:SetEndSize(5)
		particle:SetRoll(math.Rand(180,480))
		particle:SetRollDelta(math.Rand(-3,3))
		particle:SetColor(60,255,60)	
		end
		
		for i=0,3 do 
		local particle = emitter:Add("effects/hce/arflash"..math.random(1,3), self.Position)
		particle:SetVelocity( VectorRand() )
		particle:SetDieTime(0.1)
		particle:SetStartAlpha(177)
		particle:SetEndAlpha(177)
		particle:SetStartSize(40)
		particle:SetEndSize(5)
		particle:SetRoll(math.Rand(180,480))
		particle:SetRollDelta(math.Rand(-3,3))
		particle:SetColor(60,255,60)	
		end
		
		for i=0,3 do 
		local particle = emitter:Add("effects/hce/arflash"..math.random(1,3), self.Position)
		particle:SetVelocity( VectorRand() )
		particle:SetDieTime(0.15)
		particle:SetStartAlpha(100)
		particle:SetEndAlpha(100)
		particle:SetStartSize(45)
		particle:SetEndSize(5)
		particle:SetRoll(math.Rand(180,480))
		particle:SetRollDelta(math.Rand(-3,3))
		particle:SetColor(60,255,60)	
		end
		
		for i=0,3 do 
		local particle = emitter:Add("effects/hce/arflash"..math.random(1,3), self.Position)
		particle:SetVelocity( VectorRand() )
		particle:SetDieTime(2)
		particle:SetStartAlpha(50)
		particle:SetEndAlpha(0)
		particle:SetStartSize(20)
		particle:SetEndSize(20)
		particle:SetRoll(math.Rand(180,480))
		particle:SetRollDelta(math.Rand(-3,3))
		particle:SetColor(60,255,60)	
		end
		
		for i=0,3 do 
		local particle = emitter:Add("effects/hce/arflash"..math.random(1,3), self.Position)
		particle:SetVelocity( VectorRand() )
		particle:SetDieTime(12)
		particle:SetStartAlpha(0)
		particle:SetEndAlpha(20)
		particle:SetStartSize(40)
		particle:SetEndSize(0)
		particle:SetRoll(math.Rand(180,480))
		particle:SetRollDelta(math.Rand(-3,3))
		particle:SetColor(255,105,40)	
		end
		--
		for i=0,3 do 
		local particle = emitter:Add("effects/hce/spark"..math.random(1,4), self.Position)
		particle:SetVelocity(self.Forward*(10+(i*5)))
		particle:SetDieTime(0.1)
		particle:SetStartAlpha(255)
		particle:SetEndAlpha(255)
		particle:SetStartSize(35)
		particle:SetEndSize(5)
		particle:SetRoll(math.Rand(180,480))
		particle:SetRollDelta(math.Rand(-3,3))
		particle:SetColor(60,255,60)	
		end
		
		for i=0,3 do 
		local particle = emitter:Add("effects/hce/spark"..math.random(1,4), self.Position)
		particle:SetVelocity( VectorRand() )
		particle:SetDieTime(0.1)
		particle:SetStartAlpha(177)
		particle:SetEndAlpha(177)
		particle:SetStartSize(40)
		particle:SetEndSize(5)
		particle:SetRoll(math.Rand(180,480))
		particle:SetRollDelta(math.Rand(-3,3))
		particle:SetColor(60,255,60)	
		end
		
		for i=0,3 do 
		local particle = emitter:Add("effects/hce/spark"..math.random(1,4), self.Position)
		particle:SetVelocity( VectorRand() )
		particle:SetDieTime(0.15)
		particle:SetStartAlpha(100)
		particle:SetEndAlpha(100)
		particle:SetStartSize(45)
		particle:SetEndSize(5)
		particle:SetRoll(math.Rand(180,480))
		particle:SetRollDelta(math.Rand(-3,3))
		particle:SetColor(60,255,60)	
		end
		
		for i=0,3 do 
		local particle = emitter:Add("effects/hce/electric_arc"..math.random(1,4), self.Position)
		particle:SetVelocity( VectorRand() )
		particle:SetDieTime(2)
		particle:SetStartAlpha(50)
		particle:SetEndAlpha(0)
		particle:SetStartSize(10)
		particle:SetEndSize(10)
		particle:SetRoll(math.Rand(180,480))
		particle:SetRollDelta(math.Rand(-3,3))
		particle:SetColor(60,255,60)	
		end
		
		for i=0,3 do 
		local particle = emitter:Add("effects/hce/electric_arc"..math.random(1,4), self.Position)
		particle:SetVelocity( VectorRand() )
		particle:SetDieTime(1)
		particle:SetStartAlpha(50)
		particle:SetEndAlpha(0)
		particle:SetStartSize(10)
		particle:SetEndSize(10)
		particle:SetRoll(math.Rand(180,480))
		particle:SetRollDelta(math.Rand(-3,3))
		particle:SetColor(60,255,60)	
		end
		
		for i=0,3 do 
		local particle = emitter:Add("effects/hce/electric_arc"..math.random(1,4), self.Position)
		particle:SetVelocity( VectorRand() )
		particle:SetDieTime(0.1)
		particle:SetStartAlpha(50)
		particle:SetEndAlpha(0)
		particle:SetStartSize(30)
		particle:SetEndSize(10)
		particle:SetRoll(math.Rand(180,480))
		particle:SetRollDelta(math.Rand(-3,3))
		particle:SetColor(60,255,60)	
		end
		
		for i=0,3 do 
		local particle = emitter:Add("effects/hce/electric_arc"..math.random(1,4), self.Position)
		particle:SetVelocity( VectorRand() )
		particle:SetDieTime(0.4)
		particle:SetStartAlpha(50)
		particle:SetEndAlpha(0)
		particle:SetStartSize(20)
		particle:SetEndSize(10)
		particle:SetRoll(math.Rand(180,480))
		particle:SetRollDelta(math.Rand(-3,3))
		particle:SetColor(60,255,60)	
		end
	emitter:Finish()

end


function EFFECT:Think()

	return false
	
end


function EFFECT:Render()

	
end



