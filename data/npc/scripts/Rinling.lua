local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)


function onCreatureAppear(cid) npcHandler:onCreatureAppear(cid) end
function onCreatureDisappear(cid) npcHandler:onCreatureDisappear(cid) end
function onCreatureSay(cid, type, msg) npcHandler:onCreatureSay(cid, type, msg) end
function onThink() npcHandler:onThink() end

local voices = { {text = 'Expedition: Repair Broken Machines!'} }
npcHandler:addModule(VoiceModule:new(voices))


function creatureSayCallback(cid, type, msg)
    if not npcHandler:isFocused(cid) then
        return false
    end
    
    local player = Player(cid)
    local hallowStorage = player:getStorageValue(343588)
    local expeditionFinishedTime = player:getStorageValue(Expeditions.BrokenMachinesFinished)
    if expeditionFinishedTime > os.time() then
        npcHandler:say("You have already finished the expedition. You can do it again next time.", cid)
        return true
    end
    if player:getStorageValue(Expeditions.BrokenMachines) == -1 then
        player:setStorageValue(Expeditions.BrokenMachines, 0)
    end
    if msgcontains(msg, "small") then
        if player:getStorageValue(Expeditions.BrokenMachines) >= 10 then
            npcHandler:say("Thank you! Now the fuel pretty sure will be pure!.", cid)
            player:setStorageValue(343588, hallowStorage + 180)
            local hallowfallCoin = player:getStorageValue(48079)
            player:setStorageValue(48079, hallowfallCoin + 70)
            playSoundPlayer(player, "expedition_complete.ogg")
            sendReputationToPlayer(player)
            player:setStorageValue(Expeditions.BrokenMachines, 0)
            player:setStorageValue(Expeditions.BrokenMachinesCheck, 0)
            player:setStorageValue(Expeditions.BrokenMachinesFinished, os.time() + 3600)
        else
            npcHandler:say("Find 10 Small machines underground and repair them, then come back to me when you finished.", cid)
            player:setStorageValue(Expeditions.BrokenMachinesCheck, 1)
        end
    end

    return true
end


npcHandler:setMessage(MESSAGE_GREET, 'Pretty sure |PLAYERNAME| you have already talked with Zidormi that ask you to repair the machines, but we need to ensure that {small} machines aswell are working to perfect extract the fuel.')
npcHandler:setMessage(MESSAGE_FAREWELL, 'Good bye sir!')
npcHandler:setMessage(MESSAGE_WALKAWAY, 'Good bye then.')
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)

npcHandler:addModule(FocusModule:new())
