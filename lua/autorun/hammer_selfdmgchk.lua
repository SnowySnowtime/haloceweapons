function gravityHammerSelfDamage ( ply, attacker )
	if IsValid(ply) and IsValid(attacker) then
		if ply == attacker then
			local hammerCheck = ply:GetActiveWeapon():GetClass()
			if hammerCheck == "arccw_h3_snow_grav" then
				return false
			end
		end
	end
end

hook.Add( "PlayerShouldTakeDamage", "disableSelfDamage", gravityHammerSelfDamage )