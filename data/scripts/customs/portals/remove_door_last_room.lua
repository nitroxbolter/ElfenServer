local config = {

    [41735] = {
        object = {
            position = Position(31807, 31726, 13),
            itemId = 7308,
            transformTo = 7307,
            removeTimer = 60
        }
    },
    [41736] = {
        object = {
            position = Position(31826, 31736, 13),
            itemId = 7312,
            transformTo = 7311,
            removeTimer = 60
        }
    },
    [41737] = {
        object = {
            position = Position(31812, 31743, 13),
            itemId = 7310,
            transformTo = 7309,
            removeTimer = 60
        }
    },
    [41738] = {
        object = {
            position = Position(31825, 31752, 13),
            itemId = 7305,
            transformTo = 7306,
            removeTimer = 60
        }
    },
    [41739] = {
        object = {
            position = Position(31811, 31752, 13),
            itemId = 7304,
            transformTo = 7303,
            removeTimer = 60
        }
    },
    [41740] = {
        object = {
            position = Position(31826, 31727, 13),
            itemId = 7307,
            transformTo = 7308,
            removeTimer = 60
        }
    },
    [41741] = {
        object = {
            position = Position(31828, 31746, 13),
            itemId = 7306,
            transformTo = 7305,
            removeTimer = 60
        }
    },


}

local function transformAndRevertObject(position, itemId, transformTo, revertTo, timer)
    position:sendMagicEffect(187)
    local altar = Tile(position):getItemById(itemId)

    if altar then
        altar:transform(transformTo)
        addEvent(function()
            local currentAltar = Tile(position):getItemById(transformTo)
            if currentAltar then
                currentAltar:transform(revertTo)
            else
                Game.createItem(revertTo, 1, position)
            end
        end, timer)
    end
end




local function checkAllAltarsTransformed()
    for _, index in pairs(config) do
        local altarTile = Tile(index.object.position)
        local altarItems = altarTile:getItems()
        local altarTransformed = false

        for _, altar in ipairs(altarItems) do
            if altar:getId() == index.object.transformTo then
                altarTransformed = true
                break
            end
        end

        if not altarTransformed then
            return false
        end
    end

    return true
end






local function removeWall(position, itemId, timer)
    position:sendMagicEffect(CONST_ME_POFF)
    local wall = Tile(position):getItemById(itemId)
    if wall then
        wall:remove()
        addEvent(Game.createItem, timer, itemId, 1, position)
    end
end

local frostHumans = Action()

function frostHumans.onUse(player, item, fromPosition, target, toPosition, isHotkey)
    local actionId = item:getActionId()
    local index = config[actionId]
    if not index then
        return false
    end

    transformAndRevertObject(index.object.position, index.object.itemId, index.object.transformTo, index.object.itemId, index.object.removeTimer * 1000)

    if checkAllAltarsTransformed() then
        local doorPosition = Position(970, 1047, 13)
        local doorItemId = 7033 
        removeWall(doorPosition, doorItemId, 60 * 1000)
    else
    end

    return true
end

for actionid, _ in pairs(config) do
    frostHumans:aid(actionid)
end

frostHumans:register()
