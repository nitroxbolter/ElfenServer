local burnRune = Action()

function burnRune.onUse(player, item, fromPosition, target, toPosition, isHotkey)
    local BurnSpiderEggsRune = player:getStorageValue(Expeditions.BurnSpiderEggsRune)
    if not player then return end
    if player:getStorageValue(Expeditions.BurnSpiderEggsRune) == -1 then
        player:setStorageValue(Expeditions.BurnSpiderEggsRune, 0)
    end
    if target:getId() == 28966 then
    if player:getStorageValue(Expeditions.BurnSpiderEggsRune) < 8 then
       target:transform(28965)
       target:decay()
       player:setStorageValue(Expeditions.BurnSpiderEggsRune, BurnSpiderEggsRune + 1)
       local frostSpider = Game.createMonster("Frost Spider", target:getPosition())
       if not frostSpider then
           return true
       end
    else
        player:sendTextMessage(MESSAGE_INFO_DESCR, "You already burned 8 spider nest's.")
    end
    else
        player:sendTextMessage(MESSAGE_INFO_DESCR, "You can only use it on Venom Spider Nest's.")
    end
    return true
end

burnRune:id(29344)
burnRune:register()