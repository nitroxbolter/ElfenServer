local yalahariCrystals = Action()

local storages = {
    [41746] = {info = {storage = Quests.YalahariCrystal1}},
    [41747] = {info = {storage = Quests.YalahariCrystal2}},
    [41748] = {info = {storage = Quests.YalahariCrystal3}},
    [41749] = {info = {storage = Quests.YalahariCrystal4}},
    [41750] = {info = {storage = Quests.YalahariCrystal5}},
    [41751] = {info = {storage = Quests.YalahariCrystal6}},
    [41752] = {info = {storage = Quests.YalahariCrystal7}},
    [41753] = {info = {storage = Quests.YalahariCrystal8}},
    [41754] = {info = {storage = Quests.YalahariCrystal9}},
    [41755] = {info = {storage = Quests.YalahariCrystal10}},
    [41756] = {info = {storage = Quests.YalahariCrystal11}},
    [41757] = {info = {storage = Quests.YalahariCrystal12}},
    [41758] = {info = {storage = Quests.YalahariCrystal13}},
    [41759] = {info = {storage = Quests.YalahariCrystal14}},


}
function yalahariCrystals.onUse(player, item)
    local actionId = item:getActionId()
    local storageInfo = storages[actionId]

    if storageInfo and player:getStorageValue(storageInfo.info.storage) == -1 or player:getStorageValue(storageInfo.info.storage) == 0 then
        player:setStorageValue(storageInfo.info.storage, 1)
        player:sendTextMessage(MESSAGE_INFO_DESCR, "You activated the Crystal.")
    else
        player:sendTextMessage(MESSAGE_INFO_DESCR, "You already activated this Crystal.")
    end
    return true
end


for actionId, _ in pairs(storages) do
    yalahariCrystals:aid(actionId)
end

yalahariCrystals:register()