local config = {
    [41742] = {
        object = {
            position = Position(31570, 33020, 8),
            itemId = 8480,
            removeTimer = 90
        }
    },
}

local function removeAndReAddObject(position, objectId, timer)
    position:sendMagicEffect(CONST_ME_POFF)
    if timer > 0 then
        local tile = Tile(position)
        local item = tile:getItemById(objectId)
        if not item then
            return false
        end
        item:remove()
        addEvent(removeAndReAddObject, timer, position, objectId, 0)
    else
        Game.createItem(objectId, 1, position)
    end
end


local wallRemove = Action()

function wallRemove.onUse(player, item, fromPosition, target, toPosition, isHotkey)
    local actionId = item:getActionId()
    local index = config[actionId]
    if not index then
        print("LUA error: ActionId not in table." .. actionId)
        return false
    end

    removeAndReAddObject(index.object.position, index.object.itemId, index.object.removeTimer * 1000)
    SendMagicEffect(toPosition, 184)
    SendMagicEffect(player:getPosition(), 186) 
    return true
end

for actionid, _ in pairs(config) do
    wallRemove:aid(actionid)
end

wallRemove:register()
