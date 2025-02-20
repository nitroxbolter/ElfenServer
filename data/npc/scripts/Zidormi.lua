local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)


function onCreatureAppear(cid) npcHandler:onCreatureAppear(cid) end
function onCreatureDisappear(cid) npcHandler:onCreatureDisappear(cid) end
function onCreatureSay(cid, type, msg) npcHandler:onCreatureSay(cid, type, msg) end
function onThink() npcHandler:onThink() end

local voices = { {text = 'Expedition: Repair Machines!'} }
npcHandler:addModule(VoiceModule:new(voices))


function creatureSayCallback(cid, type, msg)
    if not npcHandler:isFocused(cid) then
        return false
    end
    
    local player = Player(cid)
    local hallowStorage = player:getStorageValue(343588)
    local expeditionFinishedTime = player:getStorageValue(Expeditions.RepairMachinesFinished)
    if expeditionFinishedTime > os.time() then
        npcHandler:say("You have already finished the expedition. You can do it again next time.", cid)
        return true
    end
    if player:getStorageValue(Expeditions.RepairMachines) == -1 then
        player:setStorageValue(Expeditions.RepairMachines, 0)
    end
    if msgcontains(msg, "repair") then
        if player:getStorageValue(Expeditions.RepairMachines) >= 10 then
            npcHandler:say("Thank you! Now we can start again the extraction of fuel!.", cid)
            player:setStorageValue(343588, hallowStorage + 160)
            local hallowfallCoin = player:getStorageValue(48079)
            player:setStorageValue(48079, hallowfallCoin + 55)
            playSoundPlayer(player, "expedition_complete.ogg")
            sendReputationToPlayer(player)
            player:setStorageValue(Expeditions.RepairMachines, 0)
            player:setStorageValue(Expeditions.RepairMachinesCheck, 0)
            player:setStorageValue(Expeditions.RepairMachinesFinished, os.time() + 3600)
        else
            npcHandler:say("Repair 10 Machines and come back when you finish.", cid)
            player:setStorageValue(Expeditions.RepairMachinesCheck, 1)
        end
    end

    return true
end


npcHandler:setMessage(MESSAGE_GREET, 'Fast |PLAYERNAME| the machines need to be {repair} to work again and extract the fuel from the ground.')
npcHandler:setMessage(MESSAGE_FAREWELL, 'Good bye sir!')
npcHandler:setMessage(MESSAGE_WALKAWAY, 'Good bye then.')
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)

npcHandler:addModule(FocusModule:new())
