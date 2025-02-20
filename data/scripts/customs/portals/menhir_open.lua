local config = {
    [41731] = {
        object = {
            position = Position(31725, 31761, 13),
            itemId = 6739,
            removeTimer = 120
        }
    },
    [41732] = {
        object = {
            position = Position(31753, 31771, 13),
            itemId = 6739,
            removeTimer = 120
        }
    },
    [41733] = {
        object = {
            position = Position(31779, 31800, 13),
            itemId = 6739,
            removeTimer = 120
        }
    },
    [41734] = {
        object = {
            position = Position(31817, 31780, 13),
            itemId = 6740,
            removeTimer = 120
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


local menhirOpen = Action()

function menhirOpen.onUse(player, item, fromPosition, target, toPosition, isHotkey)
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
    menhirOpen:aid(actionid)
end

menhirOpen:register()
