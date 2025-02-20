local waterIds = {4608, 4609, 4610, 4611, 4612, 4613, 4614, 4615, 4616, 4617, 4618, 4619, 4620, 4621, 4622, 4623, 4624, 4625, 4665, 4666}
local fishinGoldenRod = Action()

function fishinGoldenRod.onUse(player, item, fromPosition, target, toPosition, isHotkey)
    if not target or not target:getPosition() then
        return false
    end
    if not isInArray(waterIds, target.itemid) then
        return false
    end
    if player:getItemCount(29331) >= 12 then
        player:sendTextMessage(MESSAGE_INFO_DESCR, "You can only have 12 Golden Bass.")
        return true
    end
    local fromPos = Position(31084, 31183, 7)
    local toPos = Position(31290, 31341, 7)
    local targetPos = target:getPosition()
    if targetPos.x < fromPos.x or targetPos.x > toPos.x or
       targetPos.y < fromPos.y or targetPos.y > toPos.y or
       targetPos.z ~= fromPos.z then
        return true
    end
    toPosition:sendMagicEffect(2)
    local chance = 15
    if math.random(100) <= chance then
        player:addItem(29331, 1)
        player:sendTextMessage(MESSAGE_INFO_DESCR, "You caught a Golden Bass.")
        toPosition:sendMagicEffect(CONST_ME_WATERSPLASH)
    end

    return true
end

fishinGoldenRod:id(29330)
fishinGoldenRod:allowFarUse(true)
fishinGoldenRod:register()

