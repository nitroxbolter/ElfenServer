local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)


function onCreatureAppear(cid) npcHandler:onCreatureAppear(cid) end
function onCreatureDisappear(cid) npcHandler:onCreatureDisappear(cid) end
function onCreatureSay(cid, type, msg) npcHandler:onCreatureSay(cid, type, msg) end
function onThink() npcHandler:onThink() end

local voices = { {text = 'Expedition: Wine is Life!'} }
npcHandler:addModule(VoiceModule:new(voices))


function creatureSayCallback(cid, type, msg)
    if not npcHandler:isFocused(cid) then
        return false
    end
    
    local player = Player(cid)
    local vyrskStorage = player:getStorageValue(343589)
    local expeditionFinishedTime = player:getStorageValue(Expeditions.CollectingWineFinished)
    if expeditionFinishedTime > os.time() then
        npcHandler:say("You have already finished the expedition. You can do it again next time.", cid)
        return true
    end
    if msgcontains(msg, "wine") then
        if player:getStorageValue(Expeditions.CollectingWine) >= 12 then
            npcHandler:say("Thank you for this good wine, we will have a good feast!", cid)
            player:setStorageValue(343589, vyrskStorage + 65)
            local vyrskCoin = player:getStorageValue(48080)
            player:setStorageValue(48080, vyrskCoin + 35)
            playSoundPlayer(player, "expedition_complete.ogg")
            sendReputationToPlayer(player)
            player:setStorageValue(Expeditions.CollectingWineFinished, os.time() + 3600)
            player:setStorageValue(Expeditions.CollectingWineCheck, 0)
        else
            npcHandler:say("Collect wine from the cabins for our feast tonight, bring back 10 for me.", cid)
            player:setStorageValue(Expeditions.CollectingWineCheck, 1)
        end
    end

    return true
end


npcHandler:setMessage(MESSAGE_GREET, 'You know |PLAYERNAME|, pirates love {wine}, bring me a good case of wine and I will thank you.')
npcHandler:setMessage(MESSAGE_FAREWELL, 'Good bye sir!')
npcHandler:setMessage(MESSAGE_WALKAWAY, 'Good bye then.')
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)

npcHandler:addModule(FocusModule:new())
