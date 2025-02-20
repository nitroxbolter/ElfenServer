local yalahariDoor = MoveEvent()

local storageTable = {
    Quests.YalahariCrystal1,
    Quests.YalahariCrystal2,
    Quests.YalahariCrystal3,
    Quests.YalahariCrystal4,
    Quests.YalahariCrystal5,
    Quests.YalahariCrystal6,
    Quests.YalahariCrystal7,
    Quests.YalahariCrystal8,
    Quests.YalahariCrystal9,
    Quests.YalahariCrystal10,
    Quests.YalahariCrystal11,
    Quests.YalahariCrystal12,
    Quests.YalahariCrystal13,
    Quests.YalahariCrystal14,
}

function yalahariDoor.onStepIn(player, item, position, fromPosition)
    local allCrystalsActivated = true
    for _, storage in ipairs(storageTable) do
        if player:getStorageValue(storage) ~= 1 then
            allCrystalsActivated = false
            break
        end
    end
    if allCrystalsActivated then
        player:sendTextMessage(MESSAGE_INFO_DESCR, "You activated all crystals. You may now enter the chamber.")
        local destination = Position(31843, 33102, 11)
        player:teleportTo(destination)
        player:setStorageValue(Quests.YalahariCrystal1, 0)
        player:setStorageValue(Quests.YalahariCrystal2, 0)
        player:setStorageValue(Quests.YalahariCrystal3, 0)
        player:setStorageValue(Quests.YalahariCrystal4, 0)
        player:setStorageValue(Quests.YalahariCrystal5, 0)
        player:setStorageValue(Quests.YalahariCrystal6, 0)
        player:setStorageValue(Quests.YalahariCrystal7, 0)
        player:setStorageValue(Quests.YalahariCrystal8, 0)
        player:setStorageValue(Quests.YalahariCrystal9, 0)
        player:setStorageValue(Quests.YalahariCrystal10, 0)
        player:setStorageValue(Quests.YalahariCrystal11, 0)
        player:setStorageValue(Quests.YalahariCrystal12, 0)
        player:setStorageValue(Quests.YalahariCrystal13, 0)
        player:setStorageValue(Quests.YalahariCrystal14, 0)
    else
        player:sendTextMessage(MESSAGE_INFO_DESCR, "You need to activate all crystals before entering!")
        player:teleportTo(fromPosition)
    end

    return true
end

yalahariDoor:type("stepIn")
yalahariDoor:aid(41760)
yalahariDoor:register()
