local terrorSpider = CreatureEvent("terrorSpider")

function terrorSpider.onKill(player, target, lastHit)
    if not target or not target:isMonster() then
        return true
    end

    
    if player and target:isMonster() then
        if target:getName():lower() == 'terror spider' then
            local targetPos = getCreaturePosition(target)
            local newPos = {x = targetPos.x + 1, y = targetPos.y, z = targetPos.z}

            local theOldWidow = doCreateMonster("deep necromancer", newPos)
            if theOldWidow then
                SendMagicEffect(newPos, CONST_ME_MAGIC_RED)
                target:say("Deep Necromancer: Destroy, revive and ravage!", TALKTYPE_MONSTER_SAY)
            else
                Game.createMonster("deep necromancer", newPos)
            end
        end
    end

    return true
end

terrorSpider:register()


local deepNecromancer = CreatureEvent("deepNecromancer")

function deepNecromancer.onKill(player, target, lastHit)
    if not target or not target:isMonster() then
        return true
    end
    local chance = 100

    
    if player and target:isMonster() then
        if target:getName():lower() == 'deep necromancer' then
            local targetPos = getCreaturePosition(target)
            local newPos = {x = targetPos.x + 1, y = targetPos.y, z = targetPos.z}

            local theOldWidow = doCreateMonster("Azure", newPos)
            if theOldWidow then
                SendMagicEffect(newPos, CONST_ME_MAGIC_RED)
                target:say("Azure: This is my lair you will die!", TALKTYPE_MONSTER_SAY)
            else
                Game.createMonster("azure", newPos)
            end
        end
    end

    return true
end

deepNecromancer:register()

