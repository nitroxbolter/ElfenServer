local combatBounce = Combat()
combatBounce:setParameter(COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
combatBounce:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_HITAREA)
combatBounce:setParameter(COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_WEAPONTYPE)
combatBounce:setParameter(COMBAT_PARAM_BLOCKARMOR, 1)
combatBounce:setParameter(COMBAT_PARAM_USECHARGES, 1)

function onGetFormulaValues(player, skill, attack, factor)
	local skillTotal = skill * attack
	local levelTotal = player:getLevel() / 5
	return -(((skillTotal * 0.17) + 17) + (levelTotal)) * 1.28, -(((skillTotal * 0.20) + 40) + (levelTotal)) * 1.28
end
combatBounce:setCallback(CALLBACK_PARAM_SKILLVALUE, "onGetFormulaValues")

local combatCast = Combat()
combatCast:setParameter(COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_WEAPONTYPE)
function onTargetCreature(creature, target)
    if not(creature) or not(target) or not(creature:isPlayer()) then 
        return false
    end
    local effect = CONST_ANI_WHIRLWINDSWORD
    local position = creature:getPosition()
    local targetPosition = target:getPosition()
    local targetId = target:getId()
    local var = {}
    var.instantName = "Executioner's Throw"
    var.runeName = ""
    var.type = 1 
    var.number = targetId
    combatBounce:execute(creature, var)
    position:sendDistanceEffect(targetPosition, effect)
    position = targetPosition
    local spectators = Game.getSpectators(targetPosition, false, false, 5, 5, 5, 5)
    for _, spectator in ipairs(spectators) do
        if (spectator and spectator:getId() ~= targetId and spectator:isMonster()) then
            var.number = spectator:getId()
            local spectatorPosition = spectator:getPosition()
            if (combatBounce:execute(creature, var)) then
                position:sendDistanceEffect(spectatorPosition, effect)
                position = spectatorPosition
            end
        end
    end

	return true
end
combatCast:setCallback(CALLBACK_PARAM_TARGETCREATURE, "onTargetCreature")


function onCastSpell(creature, variant)
    if not(creature) or not(creature:isPlayer()) then
        return false
    end
		combatCast:execute(creature, variant)
        local condition = Condition(CONDITION_SPELLCOOLDOWN, CONDITIONID_DEFAULT, 261)
        condition:setTicks((18000 * 1000)/ 1)
        creature:addCondition(condition)
        playSound(creature, "weapon_attack.ogg")
        return true
end

