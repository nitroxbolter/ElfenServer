local combat = Combat()
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_MAGIC_BLUE)
combat:setArea(createCombatArea(AREA_SQUARE1X1))

function onTargetCreature(creature, target)
	return doChallengeCreature(creature, target)
end

combat:setCallback(CALLBACK_PARAM_TARGETCREATURE, "onTargetCreature")

local combat1 = Combat()
combat1:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_MAGIC_BLUE)
combat1:setArea(createCombatArea(AREA_SQUARE2X1))

function onTarget1Creature(creature, target)
	return doChallengeCreature(creature, target)
end

combat1:setCallback(CALLBACK_PARAM_TARGETCREATURE, "onTarget1Creature")

local combat2 = Combat()
combat2:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_MAGIC_BLUE)
combat2:setArea(createCombatArea(AREA_CIRCLE2X2))

function onTarget2Creature(creature, target)
	return doChallengeCreature(creature, target)
end

combat2:setCallback(CALLBACK_PARAM_TARGETCREATURE, "onTarget2Creature")

local combat3 = Combat()
combat3:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_MAGIC_BLUE)
combat3:setArea(createCombatArea(AREA_CIRCLE3X3))

function onTarget3Creature(creature, target)
	return doChallengeCreature(creature, target)
end

combat3:setCallback(CALLBACK_PARAM_TARGETCREATURE, "onTarget3Creature")

local combat4 = Combat()
combat4:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_MAGIC_BLUE)
combat4:setArea(createCombatArea(AREA_CIRCLE5X5))

function onTarget4Creature(creature, target)
	return doChallengeCreature(creature, target)
end

combat4:setCallback(CALLBACK_PARAM_TARGETCREATURE, "onTarget4Creature")

function onCastSpell(creature, variant)
	local player = Player(creature)
    playSound(creature, "exeta.ogg")
    if player and player:getStorageValue(37055) == 1 then
        combat4:execute(creature, variant)
		return true
    end
    if player and player:getStorageValue(37054) == 1 then
        combat3:execute(creature, variant)
		return true
    end
    if player and player:getStorageValue(37053) == 1 then
        combat2:execute(creature, variant)
		return true
    end
    if player and player:getStorageValue(37052) == 1 then
        combat1:execute(creature, variant)
		return true
    end
    return combat:execute(creature, variant)
end
