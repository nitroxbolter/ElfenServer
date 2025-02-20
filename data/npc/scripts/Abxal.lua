local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)


function onCreatureAppear(cid) npcHandler:onCreatureAppear(cid) end
function onCreatureDisappear(cid) npcHandler:onCreatureDisappear(cid) end
function onCreatureSay(cid, type, msg) npcHandler:onCreatureSay(cid, type, msg) end
function onThink() npcHandler:onThink() end

local voices = { {text = 'Expedition: Find Vulture Eggs!'} }
npcHandler:addModule(VoiceModule:new(voices))


function creatureSayCallback(cid, type, msg)
    if not npcHandler:isFocused(cid) then
        return false
    end
    
    local player = Player(cid)
    local vardenfellStorage = player:getStorageValue(343585)
    local expeditionFinishedTime = player:getStorageValue(Expeditions.RoyalVultureEggsFinished)
    if expeditionFinishedTime > os.time() then
        npcHandler:say("You have already finished the expedition. You can do it again next time.", cid)
        return true
    end
    if player:getStorageValue(Expeditions.RoyalVultureEggs) == -1 then
        player:setStorageValue(Expeditions.RoyalVultureEggs, 0)
    end
    if msgcontains(msg, "vulture") then
        if player:getItemCount(29283) >= 20 then
            npcHandler:say("Thanks you very much |PLAYERNAME|, here is your reward.", cid)
            player:setStorageValue(343585, vardenfellStorage + 200)
            local vardenfellCoin = player:getStorageValue(48077)
            player:setStorageValue(48076, vardenfellCoin + 80)
            playSoundPlayer(player, "expedition_complete.ogg")
            sendReputationToPlayer(player)
            player:setStorageValue(Expeditions.RoyalVultureEggsFinished, os.time() + 3600)
            player:setStorageValue(Expeditions.RoyalVultureEggsCheck, 0)
            player:setStorageValue(Expeditions.RoyalVultureEggs, 0)
        else
            player:setStorageValue(Expeditions.RoyalVultureEggsCheck, 1)
            npcHandler:say("Find 20 Vulture Eggs and come back when you finish.", cid)
        end
    end

    return true
end


npcHandler:setMessage(MESSAGE_GREET, 'Hello |PLAYERNAME|, we need investigate about the royal {vulture} eggs from the nest\'s.')
npcHandler:setMessage(MESSAGE_FAREWELL, 'Goodbye and take care!')
npcHandler:setMessage(MESSAGE_WALKAWAY, 'Good bye then.')
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)

npcHandler:addModule(FocusModule:new())
