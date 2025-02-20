local config = {
    --- Sorcerers
    [13508] = {name = "glacial behemoth", storage = 706810},
    [5444] = {name = "boar", storage = 10},
    [3351] = {name = "undead cavebear", storage = 12},
    --- Druids


    --- Paladins


    --- Knights
}

function onUse(player, item, fromPosition, target, toPosition, isHotkey)
    if not player then
        return false
    end

    if type(target) == "userdata" and not target:isMonster() then
        player:sendTextMessage(MESSAGE_INFO_DESCR, "Invalid target.")
        player:getPosition():sendMagicEffect(CONST_ME_POFF)
        return true
    end

    local pet = config[item.itemid]
    if not pet then
        return false
    end

    if target:getName():lower() ~= pet.name:lower() then
        return true
    end

    if player:getStorageValue(pet.storage) == 1 then
        player:sendTextMessage(MESSAGE_INFO_DESCR, "You already have this pet.")
        player:getPosition():sendMagicEffect(CONST_ME_POFF)
        return true
    end

    local chance = math.random(1, 100)
    if chance <= 15 then
        player:setStorageValue(pet.storage, 1)
        player:sendTextMessage(MESSAGE_INFO_DESCR, "You have received the ".. target:getName() .." pet.")
        player:sendTextMessage(MESSAGE_STATUS_CONSOLE_BLUE, "You have received the ".. target:getName() .." pet.")
        target:remove()
        toPosition:sendMagicEffect(211)
        item:remove(1)
    else
        player:sendTextMessage(MESSAGE_INFO_DESCR, "Oh no, the chance to tame this pet has failed!")
        player:sendTextMessage(MESSAGE_STATUS_CONSOLE_BLUE, "Oh no, the chance to tame this pet has failed!")
        item:remove(1)
        target:remove()
        toPosition:sendMagicEffect(212)
    end
    return true
end
