local feared_time = 3.0

local function fear(cid)
    if not isCreature(cid) then
        return
    end
    
    local cpos = getCreaturePosition(cid)
    local dir = {}
    
    if cpos and queryTileAddThing(cid, {x=cpos.x, y=cpos.y-1, z=cpos.z}) == RETURNVALUE_NOERROR and not Tile({x=cpos.x, y=cpos.y-1, z=cpos.z}):hasFlag(TILESTATE_PROTECTIONZONE) then
        table.insert(dir, NORTH)
    end
    if cpos and queryTileAddThing(cid, {x=cpos.x-1, y=cpos.y, z=cpos.z}) == RETURNVALUE_NOERROR and not Tile({x=cpos.x-1, y=cpos.y, z=cpos.z}):hasFlag(TILESTATE_PROTECTIONZONE) then
        table.insert(dir, WEST)
    end
    if cpos and queryTileAddThing(cid, {x=cpos.x, y=cpos.y+1, z=cpos.z}) == RETURNVALUE_NOERROR and not Tile({x=cpos.x, y=cpos.y+1, z=cpos.z}):hasFlag(TILESTATE_PROTECTIONZONE) then
        table.insert(dir, SOUTH)
    end
    if cpos and queryTileAddThing(cid, {x=cpos.x+1, y=cpos.y, z=cpos.z}) == RETURNVALUE_NOERROR and not Tile({x=cpos.x+1, y=cpos.y, z=cpos.z}):hasFlag(TILESTATE_PROTECTIONZONE) then
        table.insert(dir, EAST)
    end
    
    if #dir > 0 then
        doMoveCreature(cid, dir[math.random(1, #dir)])
    end
end

local silenced = createConditionObject(CONDITION_MUTED)
setConditionParam(silenced, COMBAT_PARAM_DISTANCEEFFECT, 85)
setConditionParam(silenced, CONDITION_PARAM_TICKS, feared_time * 1000)

local function findValidTargets(cid, rangeX, rangeY, maxTargets)
    local casterPos = getCreaturePosition(cid)
    local targets = {}

    if not casterPos then
        return targets
    end

    local list = getSpectators(casterPos, rangeX, rangeY, false)

    for _, creature in ipairs(list) do
        if #targets >= maxTargets then
            break
        end
        
        if isMonster(creature) and not isPlayer(creature) and not Tile(getCreaturePosition(creature)):hasFlag(TILESTATE_PROTECTIONZONE) then
            table.insert(targets, creature)
        end
    end

    return targets
end

local function applyMagicEffect(target)
    if not isCreature(target) then
        return
    end

    local targetPos = getCreaturePosition(target)
    if targetPos then
        SendMagicEffect(targetPos, 217)
    end
end

function onCastSpell(cid, var)
    if not isCreature(cid) then
        return false
    end

    local rangeX = 2
    local rangeY = 2
    local maxTargets = 4

    local targets = findValidTargets(cid, rangeX, rangeY, maxTargets)
    local storage = PlayerGetStorageValue(cid, 88709)
    if storage == 0 then
    if #targets > 0 then
        playSound(cid, "fear.ogg")
        doAddCondition(cid, silenced)

        for i = 1, math.min(#targets, maxTargets) do
            local target = targets[i]
            if isCreature(target) then
                local targetPos = getCreaturePosition(target)
                if targetPos then
                    SendDistanceShoot(getCreaturePosition(cid), targetPos, 85)
                    SendMagicEffect(targetPos, 217)
                end
                addEvent(fear, 0, target)
                addEvent(applyMagicEffect, 0, target)
                addEvent(fear, 500, target)
                addEvent(applyMagicEffect, 500, target)
                addEvent(fear, 1000, target)
                addEvent(applyMagicEffect, 1000, target)
                addEvent(fear, 1500, target)
                addEvent(applyMagicEffect, 1500, target)
                addEvent(fear, 2000, target)
                addEvent(applyMagicEffect, 2000, target)
                addEvent(fear, 2500, target)
                addEvent(applyMagicEffect, 2500, target)
                addEvent(fear, 3000, target)
                addEvent(applyMagicEffect, 3000, target)
            end
        end
    end
else
    PlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "You cannot use this spell here.")
    return true
end
    return true
end
