local config = {
    [41743] = {
        object = {
            position = Position(31639, 33015, 11),
            itemId = 9746,
            spawnTimer = 10
        }
    },
    [41744] = {
        object = {
            position = Position(31641, 33032, 11),
            itemId = 9746,
            spawnTimer = 10
        }
    },
}

local function removeAndReAddObject(position, objectId, timer)
    position:sendMagicEffect(CONST_ME_POFF)
    Game.createItem(objectId, 1, position)
    if timer > 0 then
        addEvent(
            function()
                local tile = Tile(position)
                local item = tile:getItemById(objectId)
                if item then
                    item:remove()
                end
            end,
            timer
        )
    end
end


local wallSpawn = Action()

function wallSpawn.onUse(player, item, fromPosition, target, toPosition, isHotkey)
    local actionId = item:getActionId()
    local index = config[actionId]
    if not index then
        print("LUA error: ActionId not in table." .. actionId)
        return false
    end

    removeAndReAddObject(index.object.position, index.object.itemId, index.object.spawnTimer * 1000)
    SendMagicEffect(toPosition, 317)
    SendMagicEffect(player:getPosition(), 312)
    return true
end

for actionId, _ in pairs(config) do
    wallSpawn:aid(actionId)
end

wallSpawn:register()
