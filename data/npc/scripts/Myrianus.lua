local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)


function onCreatureAppear(cid) npcHandler:onCreatureAppear(cid) end
function onCreatureDisappear(cid) npcHandler:onCreatureDisappear(cid) end
function onCreatureSay(cid, type, msg) npcHandler:onCreatureSay(cid, type, msg) end
function onThink() npcHandler:onThink() end

local voices = { {text = 'Expedition: Find Lost Objects!'} }
npcHandler:addModule(VoiceModule:new(voices))


function creatureSayCallback(cid, type, msg)
    if not npcHandler:isFocused(cid) then
        return false
    end
    
    local player = Player(cid)
    local vardenfellStorage = player:getStorageValue(343585)
    local expeditionFinishedTime = player:getStorageValue(Expeditions.LostObjectsFinished)
    if expeditionFinishedTime > os.time() then
        npcHandler:say("You have already finished the expedition. You can do it again next time.", cid)
        return true
    end
    if player:getStorageValue(Expeditions.LostObjects) == -1 then
        player:setStorageValue(Expeditions.LostObjects, 0)
    end
    if msgcontains(msg, "lost") then
        if player:getStorageValue(Expeditions.LostObjects) >= 10 then
            npcHandler:say("Thanks you have founded and marked the lost objects on the map, we are going to send an expedition to take it out!", cid)
            player:setStorageValue(343585, vardenfellStorage + 95)
            local vardenfellCoin = player:getStorageValue(48076)
            player:setStorageValue(48076, vardenfellCoin + 40)
            playSoundPlayer(player, "expedition_complete.ogg")
            sendReputationToPlayer(player)
            player:setStorageValue(Expeditions.LostObjects, 0)
            player:setStorageValue(Expeditions.LostObjectsCheck, 0)
            player:setStorageValue(Expeditions.LostObjectsFinished, os.time() + 3600)
        else
            npcHandler:say("Find 20 Lost objects on vardenfell (chests, barrils, planks..) and come back when you finish.", cid)
            player:setStorageValue(Expeditions.LostObjectsCheck, 1)
        end
    end

    return true
end


npcHandler:setMessage(MESSAGE_GREET, 'Hello |PLAYERNAME|, we have {lost} some objects around the desert of Vardenfell, we need you to find it and mark it for the expedition will take it out from the desert.')
npcHandler:setMessage(MESSAGE_FAREWELL, 'See you!')
npcHandler:setMessage(MESSAGE_WALKAWAY, 'Take care.')
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)

npcHandler:addModule(FocusModule:new())
