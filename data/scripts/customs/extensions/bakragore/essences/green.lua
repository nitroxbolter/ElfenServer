local green = Action()

function green.onUse(player, item, fromPosition, target, toPosition, isHotkey)
    if item:getId() == 27419 and target:getId() == 27412 then 
        player:setStorageValue(345003, 1)
        target:transform(27413)
        target:decay()
        item:remove(1)
        player:say("You consumed an essence.", TALKTYPE_MONSTER_SAY)
    end
end

green:id(27419)
green:register()
