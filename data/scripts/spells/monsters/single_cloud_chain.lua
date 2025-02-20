local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_ENERGYDAMAGE)
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_STORM)

local spell = Spell("instant")

function spell.onCastSpell(creature, var)
    local target = Creature(var.number)
    if not target then return false end
    
    local targetPos = target:getPosition()

    if not targetPos then return false end

    creature:teleportTo(targetPos)
    creature:getPosition():sendMagicEffect(CONST_ME_STORM)

    return combat:execute(creature, var)
end

spell:name("singlecloudchain")
spell:words("###487")
spell:isAggressive(true)
spell:needTarget(true)
spell:needLearn(true)
spell:register()
