local wineCollect = Action()

function wineCollect.onUse(player, item, fromPosition, target, toPosition, isHotkey)
    local quantity = math.random(1, 2)
    local chance = math.random(1, 2)
    local targetId = item:getId()
    if player:getStorageValue(Expeditions.CollectingWineCheck) == 1 then
        if player:getItemCount(29350) >= 20 then
            player:sendTextMessage(MESSAGE_INFO_DESCR, "You already have 20 bottles of Wine.")
            return true
        end
    if targetId == 29351 then
        item:transform(29357)
        item:decay()
        for i = 1, chance do
            local oneEyeOllie = Game.createMonster("One-Eye Ollie", player:getPosition())
            if not oneEyeOllie then
                return true
            end
        end
        local CollectingWine = player:getStorageValue(Expeditions.CollectingWine)
        if CollectingWine < 0 then
            CollectingWine = 0
        end
        player:setStorageValue(Expeditions.CollectingWine, CollectingWine + 1)
        player:addItem(29350, quantity)
    elseif targetId == 29352 then
        item:transform(29351)
        item:decay()
        for i = 1, chance do
            local oneEyeOllie = Game.createMonster("One-Eye Ollie", player:getPosition())
            if not oneEyeOllie then
                return true
            end
        end
        local CollectingWine = player:getStorageValue(Expeditions.CollectingWine)
        if CollectingWine < 0 then
            CollectingWine = 0
        end
        player:setStorageValue(Expeditions.CollectingWine, CollectingWine + 1)
        player:addItem(29350, quantity)
    elseif targetId == 29353 then
        item:transform(29358)
        item:decay()
        for i = 1, chance do
            local oneEyeOllie = Game.createMonster("One-Eye Ollie", player:getPosition())
            if not oneEyeOllie then
                return true
            end
        end
        local CollectingWine = player:getStorageValue(Expeditions.CollectingWine)
        if CollectingWine < 0 then
            CollectingWine = 0
        end
        player:setStorageValue(Expeditions.CollectingWine, CollectingWine + 1)
        player:addItem(29350, quantity)
    end
else
    return true
end
end

wineCollect:aid(42387)
wineCollect:register()