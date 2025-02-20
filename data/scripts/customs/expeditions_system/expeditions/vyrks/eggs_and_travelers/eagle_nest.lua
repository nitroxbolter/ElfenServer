local eagleNest = Action()

function eagleNest.onUse(player, item, fromPosition, target, toPosition, isHotkey)
    local nestStorage = player:getStorageValue(Expeditions.EagleNest)
    if not player then return end
    if player:getStorageValue(Expeditions.EagleNest) == -1 then
        player:setStorageValue(Expeditions.EagleNest, 0)
    end
    if player:getStorageValue(Expeditions.EagleNest) < 8 then
       player:addItem(29339, 1)
       item:transform(29337)
       item:decay()
       player:setStorageValue(Expeditions.EagleNest, nestStorage + 1)
    else
        player:sendTextMessage(MESSAGE_INFO_DESCR, "You already collect 8 Eagle Eggs, got talk with Hotharn.")
   end
end

eagleNest:id(29338)
eagleNest:register()