local function scanContainer(cid, position)
    local player = Player(cid)
    if not player then
        return
    end

    local corpse = Tile(position):getTopDownItem()
    if not corpse then
        return
    end

    if not corpse:isContainer() then
        return
    end

    if corpse:getType():isCorpse() then
        local corpseOwner = corpse:getAttribute(ITEM_ATTRIBUTE_CORPSEOWNER)
        if corpseOwner ~= cid then
            return
        end
    else
        return
    end

    for slotIndex = corpse:getSize() - 1, 0, -1 do
        local containerItem = corpse:getItem(slotIndex)
        if containerItem then
            local itemId = containerItem:getId()
            local itemName = containerItem:getName()
            local itemCount = containerItem:getCount()

            for storageId = AUTOLOOT_STORAGE_START, AUTOLOOT_STORAGE_END do
                if player:getStorageValue(storageId) == itemId then
                    local moveResult = containerItem:moveTo(player)
                    break
                end
            end

            if isItemStackable(itemId) then
                if itemId == 2148 then
                    containerItem:remove()
                    PlayerSetBalance(player, getPlayerBalance(player) + itemCount)
                elseif itemId == 2152 then
                    containerItem:remove()
                    PlayerSetBalance(player, getPlayerBalance(player) + (itemCount * 100))
                elseif itemId == 2160 then
                    containerItem:remove()
                    PlayerSetBalance(player, getPlayerBalance(player) + (itemCount * 1000))
                elseif itemId == 28872 then
                    containerItem:remove()
                    PlayerSetBalance(player, getPlayerBalance(player) + (itemCount * 10000))
                elseif itemId == 28873 then
                    containerItem:remove()
                    PlayerSetBalance(player, getPlayerBalance(player) + (itemCount * 100000))
                end
            end
        end
    end
end

function onKill(player, target)
    if not target:isMonster() then
        return true
    end

    addEvent(scanContainer, 100, player:getId(), target:getPosition())
    return true
end
