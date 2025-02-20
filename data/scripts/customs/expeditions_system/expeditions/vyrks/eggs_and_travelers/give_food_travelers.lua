local giveFood = Action()

function giveFood.onUse(player, item, fromPosition, target, toPosition, isHotkey)
    if not player then return end
    if player:getStorageValue(Expeditions.EagleNestGiveFood) == -1 then
        player:setStorageValue(Expeditions.EagleNestGiveFood, 0)
    end

    if target:getId() == 29343 then
        local messagePosition = target:getPosition()
        local spectators = Game.getSpectators(messagePosition, false, true, 7, 7, 7, 7)
        for _, spectator in ipairs(spectators) do
            if spectator and spectator:isPlayer() then
                spectator:say("This Eagle Egg Dish is delicious and delicious!", TALKTYPE_MONSTER_SAY, false, spectator, messagePosition)
            end
        end
        addEvent(function()
            local spectators = Game.getSpectators(messagePosition, false, true, 7, 7, 7, 7)
            for _, spectator in ipairs(spectators) do
                if spectator and spectator:isPlayer() then
                    spectator:say("Thanks for this food!", TALKTYPE_MONSTER_SAY, false, spectator, messagePosition)
                end
            end
        end, 1000)

        item:remove(1)
        player:setStorageValue(Expeditions.EagleNestGiveFood, player:getStorageValue(Expeditions.EagleNestGiveFood) + 1)
    end
end

giveFood:id(29342)
giveFood:register()
