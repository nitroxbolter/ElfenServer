local config = {
    [41611] = {
        object = {
            position = Position(31630, 32679, 11),
            itemId = 1355,
            removeTimer = 300
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
        if player:getStorageValue(261842) == 1 then
            player:setStorageValue(261842, 0)
            removeAndReAddObject(index.object.position, index.object.itemId, index.object.removeTimer * 1000)
            player:say("You may now leave at north.", TALKTYPE_MONSTER_SAY)
            return true
        else
            if player:getStorageValue(261842) == -1 or player:getStorageValue(261842) == 0 then
                local tile = Tile(Position(31630, 32695, 11))
                local southMenhir = tile:getItemById(1355)
                if southMenhir then
                    southMenhir:remove()
                else
                    Game.createItem(1355, 1, Position(31630, 32695, 11))
                    player:say("Find a way to unlock the menhir.", TALKTYPE_MONSTER_SAY)
                end
            end
        end

    
    SendMagicEffect(player:getPosition(), 186)  

    return true
end

menhirOpen:aid(41611)
menhirOpen:register()




local menhirTwoOpen = Action()

function menhirTwoOpen.onUse(player, item, fromPosition, target, toPosition, isHotkey)

    if player:getStorageValue(261842) == 1 then
        player:sendTextMessage(MESSAGE_INFO_DESCR, "You unlocked the second menhir")
    else
        player:sendTextMessage(MESSAGE_INFO_DESCR, "The second menhir is now unlocked")
        player:setStorageValue(261842, 1)
    end
end

menhirTwoOpen:aid(41613)
menhirTwoOpen:register()
