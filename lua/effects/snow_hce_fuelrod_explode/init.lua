if SERVER then AddCSLuaFile() end

function EFFECT:Init(data)

	self.Start = data:GetOrigin()
	self.size = 1
	self.Emitter = ParticleEmitter(self.Start)
			
		for i = 1, math.random(10, 35) do
			local p = self.Emitter:Add("effects/hce/explosion_smaller", self.Start)

			p:SetDieTime(math.Rand(0.3, 0.7))
			p:SetStartAlpha(60)
			p:SetEndAlpha(0)
			p:SetStartSize(math.random(9,9) * self.size)
			p:SetEndSize(100 * self.size)
			p:SetRoll(math.Rand(0, 10))
			p:SetRollDelta(math.Rand(0, 0))
			//p:SetCollide(true)
				
			local vec = VectorRand()
			vec.z = 0
			local pos = (self.Start + vec * 5)
					
			p:SetVelocity(VectorRand() * math.random(125, 175) * self.size)
			p:SetColor(0, 255, 0)
		end
		
				for i = 1, math.random(10, 35) do
			local p = self.Emitter:Add("effects/hce/explosion_smaller", self.Start)

			p:SetDieTime(math.Rand(1.3, 0.7))
			p:SetStartAlpha(60)
			p:SetEndAlpha(0)
			p:SetStartSize(math.random(10,9) * self.size)
			p:SetEndSize(10 * self.size)
			p:SetRoll(math.Rand(0, 10))
			p:SetRollDelta(math.Rand(0, 0))
			//p:SetCollide(true)
				
			local vec = VectorRand()
			vec.z = 0
			local pos = (self.Start + vec * 5)
					
			p:SetVelocity(VectorRand() * math.random(125, 175) * self.size)
			p:SetColor(0, 255, 0)
		end
		
		for i = 1, math.random(10, 35) do
			local p = self.Emitter:Add("effects/hce/explosion_smaller", self.Start)

			p:SetDieTime(math.Rand(0.5,0.6))
			p:SetStartAlpha(60)
			p:SetEndAlpha(60)
			p:SetStartSize(math.random(40, 40) * self.size)
			p:SetEndSize(150 * self.size)
			p:SetRoll(math.Rand(0, 0))
			p:SetRollDelta(math.Rand(0.03, 0))
			//p:SetCollide(true)
				
			local vec = VectorRand()
			vec.z = 0
			local pos = (self.Start + vec * 5)
					
			p:SetVelocity(VectorRand() * math.random(0, 0) * self.size)
			p:SetColor(0, 255, 0)
		end
		
				for i = 1, math.random(10, 35) do
			local p = self.Emitter:Add("effects/hce/explosion_smaller", self.Start)

			p:SetDieTime(math.Rand(0.3, 0.4))
			p:SetStartAlpha(60)
			p:SetEndAlpha(60)
			p:SetStartSize(math.random(40, 40) * self.size)
			p:SetEndSize(170 * self.size)
			p:SetRoll(math.Rand(0, 0))
			p:SetRollDelta(math.Rand(8.03, 0))
			//p:SetCollide(true)
				
			local vec = VectorRand()
			vec.z = 0
			local pos = (self.Start + vec * 5)
					
			p:SetVelocity(VectorRand() * math.random(0, 0) * self.size)
			p:SetColor(0, 255, 0)
		end
		
		/*for i = 1, 20 do
			local vec = VectorRand()
			//vec.z = 10
			local pos = (self.Start + vec * 5)
		
			local p = self.Emitter:Add("effects/hce/explosion_smaller", self.Start)

			p:SetDieTime(math.Rand(2, 2))
			p:SetStartAlpha(255)
			p:SetEndAlpha(0)
			p:SetStartSize(50 * self.size)
			p:SetEndSize(0 * self.size)
			p:SetVelocity(VectorRand() * math.random(50, 150) * self.size)
			p:SetGravity(Vector(0, 0, -40))
			p:SetColor(90, 85, 0)
			p:SetRoll(math.Rand(-10, 10))
			p:SetRollDelta(math.Rand(-10, 10))
			//p:SetCollide(true)
			
			//timer.Simple(0.5, function() p:SetVelocity(p:GetVelocity() / 10) end)
		end*/
	
	self.Emitter:Finish()
end

function EFFECT:Think()
	return false
end

function EFFECT:Render()
	return false
end