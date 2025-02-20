local waterIds = {4608, 4609, 4610, 4611, 4612, 4613, 4614, 4615, 4616, 4617, 4618, 4619, 4620, 4621, 4622, 4623, 4624, 4625, 4665, 4666}
local expeditionaryBag = Action()

function expeditionaryBag.onUse(player, item, fromPosition, target, toPosition, isHotkey)
    if not target or not target:getPosition() then
        return false
    end
    if not isInArray(waterIds, target.itemid) then
        return false
    end
    if player:getStorageValue(Expeditions.ExpeditionaryBag) == -1 then
        player:setStorageValue(Expeditions.ExpeditionaryBag, 0)
    end
    local fromPos = Position(31084, 31183, 7)
    local toPos = Position(31290, 31341, 7)
    local targetPos = target:getPosition()
    if targetPos.x < fromPos.x or targetPos.x > toPos.x or
       targetPos.y < fromPos.y or targetPos.y > toPos.y or
       targetPos.z ~= fromPos.z then
        return true
    end
    player:removeItem(29284, 1)
    local expeditionBagWater = Game.createItem(29285, 1, targetPos)
    if not expeditionBagWater then
        return true
    end
    expeditionBagWater:decay()
    player:sendTextMessage(MESSAGE_INFO_DESCR, "You throw an expeditionary backpack.")
    toPosition:sendMagicEffect(CONST_ME_WATERSPLASH)
    local expeditionaryBag = player:getStorageValue(Expeditions.ExpeditionaryBag)
    player:setStorageValue(Expeditions.ExpeditionaryBag, expeditionaryBag + 1)
    return true
end

expeditionaryBag:id(29284)
expeditionaryBag:allowFarUse(true)
expeditionaryBag:register()

