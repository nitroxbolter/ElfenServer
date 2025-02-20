local function removeEmpowermentItem(position)
    for x = -1, 1 do
        for y = -1, 1 do
            local tile = Tile(Position(position.x + x, position.y + y, position.z))
            if tile then
                local item = tile:getItemById(28139)
                if item then
                    item:remove()
                end
            end
        end
    end
end

local function addEmpowermentCondition(creature)
    local condition = Condition(CONDITION_ATTRIBUTES, CONDITIONID_DEFAULT)
    condition:setTicks(5000) -- Duration of 5 seconds
    condition:setParameter(CONDITION_PARAM_BUFF_SPELL, true)
    condition:setParameter(CONDITION_PARAM_SKILL_DISTANCEPERCENT, 110) -- Increase distance skill by 10%
	condition:setParameter(CONDITION_PARAM_STAT_MAGICPOINTSPERCENT, 110) -- Increase distance skill by 10%

    creature:addCondition(condition)
end

local function checkPlayerPosition(playerId, position)
    local player = Player(playerId)
    if not player then
        return
    end

    local playerPosition = player:getPosition()
    for x = -1, 1 do
        for y = -1, 1 do
            if playerPosition.x == position.x + x and playerPosition.y == position.y + y and playerPosition.z == position.z then
                addEmpowermentCondition(player)
                return
            end
        end
    end
end

function onCastSpell(creature, var)
    if not creature or not creature:isPlayer() then
        return false
    end

    local cooldown = 32

    local condition = Condition(CONDITION_SPELLCOOLDOWN, CONDITIONID_DEFAULT, 268)
    condition:setTicks(cooldown * 1000)
    creature:addCondition(condition)

    local position = creature:getPosition()
    for x = -1, 1 do
        for y = -1, 1 do
            local item = Game.createItem(28139, 1, Position(position.x + x, position.y + y, position.z))
            if item then
                item:setAttribute(ITEM_ATTRIBUTE_OWNER, creature:getId())
            end
        end
    end
    playSound(creature, "magic_cure.ogg")
    addEvent(checkPlayerPosition, 100, creature:getId(), position)
    addEvent(removeEmpowermentItem, 5000, position)
    return true
end
