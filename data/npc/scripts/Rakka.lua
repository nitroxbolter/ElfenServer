local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)


function onCreatureAppear(cid) npcHandler:onCreatureAppear(cid) end
function onCreatureDisappear(cid) npcHandler:onCreatureDisappear(cid) end
function onCreatureSay(cid, type, msg) npcHandler:onCreatureSay(cid, type, msg) end
function onThink() npcHandler:onThink() end

local voices = { {text = 'Expedition: Send the eagles off the islands and throw the expedition bags into the water!'} }
npcHandler:addModule(VoiceModule:new(voices))


function creatureSayCallback(cid, type, msg)
    if not npcHandler:isFocused(cid) then
        return false
    end
    
    local player = Player(cid)
    local vyrskStorage = player:getStorageValue(343589)
    local expeditionFinishedTime = player:getStorageValue(Expeditions.ExpeditionFinishedBags)
    if expeditionFinishedTime > os.time() then
        npcHandler:say("You have already finished the expedition. You can do it again next time.", cid)
        return true
    end
    if msgcontains(msg, "expeditionary") then
        if player:getStorageValue(Expeditions.ExpeditionaryBag) >= 8 then
            npcHandler:say("Thanks for collecting the bags, here's your reward!.", cid)
            player:setStorageValue(Expeditions.ExpeditionaryBag, 0)
            player:setStorageValue(343589, vyrskStorage + 100)
            local vyrskCoin = player:getStorageValue(48080)
            player:setStorageValue(48080, vyrskCoin + 15)
            local expeditionaryBags = player:getItemCount(29284)
            if expeditionaryBags > 0 then
                player:removeItem(29284, basses)
            end
            playSoundPlayer(player, "expedition_complete.ogg")
            sendReputationToPlayer(player)
            player:setStorageValue(Expeditions.ExpeditionFinishedBags, os.time() + 3600)
        elseif player:getStorageValue(Expeditions.ExpeditionFinishedBags) < 1 then
            npcHandler:say("Find and hunt the island eagles, collect their expedition bags and throw them into the water.", cid)
        elseif player:getStorageValue(Expeditions.BernardLhermite) >= 1 then
            npcHandler:say("You already started the expedition. Find the island eagles and collect their expedition bag then throw bags into the ocean.", cid)
        end
    end

    return true
end


npcHandler:setMessage(MESSAGE_GREET, '|PLAYERNAME|! The eagles took our {expeditionary} bags, please get them back! Once you have them, throw the bags into the ocean!')
npcHandler:setMessage(MESSAGE_FAREWELL, 'Don\'t forget to visit our island again!')
npcHandler:setMessage(MESSAGE_WALKAWAY, 'Good bye then.')
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)

npcHandler:addModule(FocusModule:new())
