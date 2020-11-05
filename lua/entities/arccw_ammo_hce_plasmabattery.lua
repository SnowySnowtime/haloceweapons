AddCSLuaFile()

ENT.Base 					= "arccw_ammo"

ENT.PrintName 				= "Plasma Battery"
ENT.Category 				= "ArcCW - Ammo"

ENT.Spawnable 				= true
ENT.Model 					= "models/items/battery.mdl"

ENT.AmmoType = "arccwhce_plasmabattery"
ENT.AmmoCount = 1

ENT.DetonationDamage = 50 -- Per-round damage
ENT.DetonationRadius = 300
--ENT.DetonationSound = "hce/plasmar_overheat.wav"

function ENT:DetonateRound(attacker)
    local nade = ents.Create("arccw_gl_hce_plasmabattery_pissed")
        self:EmitSound("hce/plasmar_overheat.wav", 125, 100, 1, CHAN_AUTO)
    nade:SetPos(self:GetPos())
    nade:SetAngles(self:GetAngles())-- + AngleRand(-10, 10))
    nade:Spawn()
    nade:GetPhysicsObject():AddVelocity(self:GetVelocity() + self:GetUp() * 400 )
    nade:SetOwner(attacker or self.Burner)
    self:Remove()
end

function ENT:Detonate(wet, attacker)
    if wet then
        self:DetonateRound(attacker)
    else
        local e = EffectData()
        e:SetOrigin(self:GetPos())
        util.Effect("Explosion", e)

        util.BlastDamage(self, attacker, self:GetPos(), self.DetonationRadius, self.DetonationDamage)
        self:Remove()
    end
end