local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)


function onCreatureAppear(cid) npcHandler:onCreatureAppear(cid) end
function onCreatureDisappear(cid) npcHandler:onCreatureDisappear(cid) end
function onCreatureSay(cid, type, msg) npcHandler:onCreatureSay(cid, type, msg) end
function onThink() npcHandler:onThink() end

local voices = { {text = 'Expedition: Collect Bananas!'} }
npcHandler:addModule(VoiceModule:new(voices))


function creatureSayCallback(cid, type, msg)
    if not npcHandler:isFocused(cid) then
        return false
    end
    
    local player = Player(cid)
    local vardenfellStorage = player:getStorageValue(343585)
    local expeditionFinishedTime = player:getStorageValue(Expeditions.PalmTreeBananaFinished)
    if expeditionFinishedTime > os.time() then
        npcHandler:say("You have already finished the expedition. You can do it again next time.", cid)
        return true
    end
    if player:getStorageValue(Expeditions.PalmTreeBanana) == -1 then
        player:setStorageValue(Expeditions.PalmTreeBanana, 0)
    end
    if msgcontains(msg, "bananas") then
        if player:getItemCount(29501) >= 20 then
            npcHandler:say("Thanks you very much |PLAYERNAME|, here is your reward.", cid)
            player:setStorageValue(343585, vardenfellStorage + 160)
            local vardenfellCoin = player:getStorageValue(48077)
            player:setStorageValue(48076, vardenfellCoin + 65)
            playSoundPlayer(player, "expedition_complete.ogg")
            sendReputationToPlayer(player)
            player:setStorageValue(Expeditions.PalmTreeBananaFinished, os.time() + 3600)
            player:setStorageValue(Expeditions.PalmTreeBananaCheck, 0)
            player:setStorageValue(Expeditions.PalmTreeBanana, 0)
        else
            player:setStorageValue(Expeditions.PalmTreeBananaCheck, 1)
            npcHandler:say("Collect 20 Bananas from palm trees and come back when you finish.", cid)
        end
    end

    return true
end


npcHandler:setMessage(MESSAGE_GREET, 'Hello |PLAYERNAME|, we need some {Bananas} to prepare ration for guards, can you help us?.')
npcHandler:setMessage(MESSAGE_FAREWELL, 'Goodbye and take care!')
npcHandler:setMessage(MESSAGE_WALKAWAY, 'Good bye then.')
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)

npcHandler:addModule(FocusModule:new())
