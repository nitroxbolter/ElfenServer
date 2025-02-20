local violet2 = Action()

function violet2.onUse(player, item, fromPosition, target, toPosition, isHotkey)
    if item:getId() == 27421 and target:getId() == 27416 then 
        player:setStorageValue(345002, 1)
        target:transform(27417)
        target:decay()
        item:remove(1)
        player:say("You consumed an essence.", TALKTYPE_MONSTER_SAY)
    end
end

violet2:id(27421)
violet2:register()
