local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_ARCANEDAMAGE)
combat:setParameter(COMBAT_PARAM_EFFECT, 218)
combat:setParameter(COMBAT_PARAM_DISTANCEEFFECT, 84)

local function applyPeriodicDamage(creature, target, baseDamage, damageIncrement, interval, duration)
    local iterations = math.floor(duration / interval)
    local currentDamage = baseDamage
    
    for i = 1, iterations do
        addEvent(function()
            if target and target:isCreature() and target:getHealth() > 0 then
                doTargetCombatHealth(creature.uid, target.uid, COMBAT_ARCANEDAMAGE, -currentDamage, -currentDamage, 2)
                currentDamage = currentDamage + damageIncrement
            end
        end, i * interval)
    end
end

function onCastSpell(creature, variant)
    local target = Creature(variant:getNumber())
    if not target then
        return false
    end
    
    local baseDamage = 128     
    local damageIncrement = 128   
    local interval = 2000     
    local duration = 8000      
    playSound(creature, "arcane_4.ogg")
    -- Start applying periodic damage
    applyPeriodicDamage(creature, target, baseDamage, damageIncrement, interval, duration)
    
    return true
end
