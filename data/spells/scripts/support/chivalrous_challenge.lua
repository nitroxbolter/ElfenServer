local combat = Combat()
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_HITAREA)

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

combat:setCallback(CALLBACK_PARAM_CHAINPICKER, "retrieveDistance")

function getMonstersTarget(creature)
    return 4, 6, false 
end

combat:setCallback(CALLBACK_PARAM_CHAINVALUE, "getMonstersTarget")

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

combat:setCallback(CALLBACK_PARAM_TARGETCREATURE, "setMonsterTargetDistance")

function onCastSpell(creature, variant)
    local target = creature:getTarget()
    if not target then
        creature:sendCancelMessage("You need a target.")
        creature:getPosition():sendMagicEffect(CONST_ME_POFF)
        return false
    end

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
        if not combat:execute(creature, var) then
            creature:sendCancelMessage("There are no valid targets.")
            creature:getPosition():sendMagicEffect(CONST_ME_POFF)
            return false
        end
    end
    playSound(creature, "amp.ogg")

    return true
end
