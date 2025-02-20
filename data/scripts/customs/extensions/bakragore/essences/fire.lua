local redFire = Action()

function redFire.onUse(player, item, fromPosition, target, toPosition, isHotkey)
    if item:getId() == 27420 and target:getId() == 27414 then 
        player:setStorageValue(345000, 1)
        target:transform(27415)
        target:decay()
        item:remove(1)
        player:say("You consumed an essence.", TALKTYPE_MONSTER_SAY)
    end
end

redFire:id(27420)
redFire:register()
