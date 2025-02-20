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

local combatNyel = Combat()
combatNyel:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_HITAREA)

function retrieveDistance(creature, target)
    if target:isMonster() then
        local monsterType = target:getType()
        if monsterType then
            local targetDistance = monsterType:targetDistance()
            if not target:getMaster() and targetDistance and targetDistance > 1 then
                return true
            end
        end
    end
    return false
end

combatNyel:setCallback(CALLBACK_PARAM_CHAINPICKER, "retrieveDistance")

function getMonstersTarget(creature)
    return 4, 6, false 
end

combatNyel:setCallback(CALLBACK_PARAM_CHAINVALUE, "getMonstersTarget")

local function resetTargetDistance(targetId, originalDistance)
    local target = Monster(targetId)
    if target then
        local monsterType = target:getType()
        if monsterType then
            monsterType:setTargetDistance(originalDistance)
        end
    end
end

function setMonsterTargetDistance(creature, target)
    local duration = 12000
    if target and target:isMonster() then
        local monsterType = target:getType()
        if monsterType then
            local targetDistance = monsterType:targetDistance()
            if targetDistance and targetDistance > 1 then
                monsterType:setTargetDistance(1)
                addEvent(resetTargetDistance, duration, target:getId(), targetDistance)
            end
        end
    end
    return true
end

combatNyel:setCallback(CALLBACK_PARAM_TARGETCREATURE, "setMonsterTargetDistance")

function onCastSpell(creature, variant)
	local player = Player(creature)
    playSound(creature, "exeta.ogg")
	    local target = creature:getTarget()
	if target then
		local targets = {target}
		local targetPosition = target:getPosition()
		local spectators = Game.getSpectators(targetPosition, false, false, 5, 5, 5, 5)

		for _, spectator in ipairs(spectators) do
			if #targets >= 4 then break end
			if spectator and spectator:isMonster() and spectator:getId() ~= target:getId() then
				table.insert(targets, spectator)
			end
		end

		for _, target in ipairs(targets) do
			local var = Variant(target:getId())
			if not combatNyel:execute(creature, var) then
				creature:sendCancelMessage("There are no valid targets.")
				creature:getPosition():sendMagicEffect(CONST_ME_POFF)
				return false
			end
		end
		playSound(creature, "amp.ogg")
	end
	
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
