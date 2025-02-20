local violet1 = Action()

function violet1.onUse(player, item, fromPosition, target, toPosition, isHotkey)
    if item:getId() == 27418 and target:getId() == 27416 then 
        player:setStorageValue(345001, 1)
        target:transform(27417)
        target:decay()
        item:remove(1)
        player:say("You consumed an essence.", TALKTYPE_MONSTER_SAY)
    end
end

violet1:id(27418)
violet1:register()
