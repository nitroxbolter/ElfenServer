local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)


function onCreatureAppear(cid) npcHandler:onCreatureAppear(cid) end
function onCreatureDisappear(cid) npcHandler:onCreatureDisappear(cid) end
function onCreatureSay(cid, type, msg) npcHandler:onCreatureSay(cid, type, msg) end
function onThink() npcHandler:onThink() end

local voices = { {text = 'Expedition: Lursks Spiders!'} }
npcHandler:addModule(VoiceModule:new(voices))


function creatureSayCallback(cid, type, msg)
    if not npcHandler:isFocused(cid) then
        return false
    end
    
    local player = Player(cid)
    local frostStorage = player:getStorageValue(343587)
    local expeditionFinishedTime = player:getStorageValue(Expeditions.LursksSpidersFinished)
    if expeditionFinishedTime > os.time() then
        npcHandler:say("You have already finished the expedition. You can do it again next time.", cid)
        return true
    end
    if player:getStorageValue(Expeditions.LursksSpiders) == -1 then
        player:setStorageValue(Expeditions.LursksSpiders, 0)
    end
    if msgcontains(msg, "kill") then
        if player:getStorageValue(Expeditions.LursksSpiders) >= 20 then
            npcHandler:say("Thanks for burn some lursks spiders, here is your reward!.", cid)
            player:setStorageValue(343587, frostStorage + 175)
            local frostCoin = player:getStorageValue(48080)
            player:setStorageValue(48078, frostCoin + 60)
            playSoundPlayer(player, "expedition_complete.ogg")
            sendReputationToPlayer(player)
            player:setStorageValue(Expeditions.LursksSpiders, 0)
            player:setStorageValue(Expeditions.LursksSpidersFinished, os.time() + 3600)
        else
            npcHandler:say("Kill 20 Lursks Spiders and come back to me when it's done.", cid)
        end
    end

    return true
end


npcHandler:setMessage(MESSAGE_GREET, 'Lursks Spiders have spread across frosthold |PLAYERNAME| ! We need to stop them, {kill} 20 lursks spiders and come back to me when it\'s done!')
npcHandler:setMessage(MESSAGE_FAREWELL, 'Good bye sir!')
npcHandler:setMessage(MESSAGE_WALKAWAY, 'Good bye then.')
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)

npcHandler:addModule(FocusModule:new())
