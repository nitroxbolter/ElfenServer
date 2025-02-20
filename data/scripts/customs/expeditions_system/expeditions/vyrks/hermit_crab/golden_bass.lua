local goldenBass = Action()


function goldenBass.onUse(player, item, fromPosition, target, toPosition, isHotkey)

    if target.itemid == 29329 then
        target:transform(29332)
        target:decay()
        local bernardHermite = Game.createMonster("Hermit Crab", target:getPosition())
        if not bernardHermite then
            return true
        end
        local ExpeditionHermite = player:getStorageValue(Expeditions.BernardLhermite)
        if ExpeditionHermite < 0 then
            ExpeditionHermite = 0
        end
        player:setStorageValue(Expeditions.BernardLhermite, ExpeditionHermite + 1)
        item:remove(1)
    end
end

goldenBass:id(29331)
goldenBass:register()