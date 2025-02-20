local combatGrenade = Combat()
combatGrenade:setParameter(COMBAT_PARAM_TYPE, COMBAT_HOLYDAMAGE)
combatGrenade:setArea(createCombatArea(AREA_CIRCLE2X2))
combatGrenade:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_HOLYDAMAGE)

function onGetFormulaValues(player, level, maglevel)
    local handWeapon = player:getSlotItem(CONST_SLOT_LEFT)
    local itemMultipliers = {
        [28131] = 1.12,
        [28137] = 1.12,
    }
    local min = (level / 5) + (maglevel * 4)
    local max = (level / 5) + (maglevel * 6)
    if handWeapon and itemMultipliers[handWeapon.itemid] then
        local multiplier = itemMultipliers[handWeapon.itemid]
        local newMin = -min * multiplier
        local newMax = -max * multiplier
        return newMin, newMax
    else
        return -min, -max
    end
end

combatGrenade:setCallback(CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues")

local explodeGrenade = function(position, playerId)
    local tile = Tile(position)
    if not tile then
        return
    end

    local player = Player(playerId)
    if not player then
        return
    end

    local var = Variant(position)
    combatGrenade:execute(player, var)
end

function onTargetCreature(creature, target)
    if not (creature and target and creature:isPlayer()) then
        return false
    end

    local position = target:getPosition()
    addEvent(explodeGrenade, 3000, position, creature:getId())
    return true
end

local combatCast = Combat()
combatCast:setCallback(CALLBACK_PARAM_TARGETCREATURE, "onTargetCreature")

function onCastSpell(creature, var)
    if not creature or not creature:isPlayer() then
        return false
    end

    local cooldown = 26 -- Fixed cooldown

    if combatCast:execute(creature, var) then
        local target = Creature(var:getNumber())
        local position = target:getPosition()
        position:sendMagicEffect(201) -- Effect Could be removed, simple effect to show on monster before the attack
        local condition = Condition(CONDITION_SPELLCOOLDOWN, CONDITIONID_DEFAULT, 258)
        condition:setTicks((cooldown * 1000))
        creature:addCondition(condition)
        playSound(creature, "divine_grenade.ogg")
        return true
    end
    return false
end
