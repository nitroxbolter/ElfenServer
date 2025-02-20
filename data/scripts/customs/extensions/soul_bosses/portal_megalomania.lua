local storagesTable = {
    {storage = 720029, bossName = "Goshnar's Malice"},
    {storage = 720030, bossName = "Goshnar's Hatred"},
    {storage = 720031, bossName = "Goshnar's Spite"},
    {storage = 720032, bossName = "Goshnar's Cruelty"},
    {storage = 720033, bossName = "Goshnar's Greed"},
}

local portalMegalomania = MoveEvent()
function portalMegalomania.onStepIn(creature, item, position, fromPosition)
    local player = creature:getPlayer()
    if not player then
        return false
    end
    if player:getLevel() < 250 then
        player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You need at least level 250 to enter.")
        player:teleportTo(fromPosition, true)
        player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
        return false
    end

    local missingBosses = {}
    for _, storageInfo in ipairs(storagesTable) do
        if player:getStorageValue(storageInfo.storage) ~= 1 then
            table.insert(missingBosses, storageInfo.bossName)
        end
    end

    if #missingBosses == 0 then
        player:teleportTo(Position(33947, 31347, 10))
        return true
    else
        local bossList = table.concat(missingBosses, "\n")
        player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You still need to defeat the following bosses:\n" .. bossList)
        player:teleportTo(fromPosition, true)
        return false
    end
end

portalMegalomania:type("stepin")
portalMegalomania:aid(33734)
portalMegalomania:register()
