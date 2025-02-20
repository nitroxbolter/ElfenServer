local wildBoar = Action()

function wildBoar.onUse(player, item, fromPosition, target, toPosition, isHotkey)
    if not player then return end
    local bearTraps = player:getStorageValue(Expeditions.WildBoar)
    if player:getStorageValue(Expeditions.WildBoarCheck) == 1 then
        local chance = math.random(1,4)
        if chance > 2 then
            local wereBoar = Game.createMonster("Wild Boar", item:getPosition())
            local wereBoar2 = Game.createMonster("Wild Boar", item:getPosition())
            if not wereBoar then
                return true
            end
            if not wereBoar2 then
                return true
            end
            player:say("A Wild Boar has appeared.", TALKTYPE_MONSTER_SAY)
            item:transform(29096)
            item:decay()
            player:setStorageValue(Expeditions.WildBoar, bearTraps + 1)
        else
            local wereBoar = Game.createMonster("Wild Boar", item:getPosition())
            if not wereBoar then
                return true
            end
            player:say("A Wild Boar has appeared.", TALKTYPE_MONSTER_SAY)
            item:transform(29096)
            item:decay()
            player:setStorageValue(Expeditions.WildBoar, bearTraps + 1)
        end
    else
        return true
    end
end

wildBoar:aid(42388)
wildBoar:register()