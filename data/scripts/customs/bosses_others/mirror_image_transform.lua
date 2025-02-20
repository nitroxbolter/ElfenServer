local mirrorImageTransform = CreatureEvent("MirrorImageTransform")

function mirrorImageTransform.onHealthChange(creature, attacker, primaryDamage, primaryType, secondaryDamage, secondaryType)
	if attacker and attacker:isPlayer() then
		local newForm = nil
		local condition = Condition(CONDITION_OUTFIT)

		if attacker:isSorcerer() then
			newForm = "Sorcerer's Apparition"
			condition:setOutfit({ lookType = 138, lookHead = 95, lookBody = 114, lookLegs = 52, lookFeet = 76, lookAddons = 0, lookMount = 0 })
		elseif attacker:isDruid() then
			newForm = "Druid's Apparition"
			condition:setOutfit({ lookType = 148, lookHead = 114, lookBody = 48, lookLegs = 114, lookFeet = 95, lookAddons = 0, lookMount = 0 })
		elseif attacker:isPaladin() then
			newForm = "Paladin's Apparition"
			condition:setOutfit({ lookType = 129, lookHead = 57, lookBody = 42, lookLegs = 114, lookFeet = 114, lookAddons = 0, lookMount = 0 })
		elseif attacker:isKnight() then
			newForm = "Knight's Apparition"
			condition:setOutfit({ lookType = 131, lookHead = 19, lookBody = 76, lookLegs = 74, lookFeet = 114, lookAddons = 0, lookMount = 0 })
		end

		if newForm and creature then
			creature:addCondition(condition)
		end
	end

	return primaryDamage, primaryType, secondaryDamage, secondaryType
end

mirrorImageTransform:register()
