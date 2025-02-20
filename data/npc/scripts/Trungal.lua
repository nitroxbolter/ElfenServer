local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)


function onCreatureAppear(cid) npcHandler:onCreatureAppear(cid) end
function onCreatureDisappear(cid) npcHandler:onCreatureDisappear(cid) end
function onCreatureSay(cid, type, msg) npcHandler:onCreatureSay(cid, type, msg) end
function onThink() npcHandler:onThink() end

local voices = { {text = 'Expedition: Were Boar Traps!'} }
npcHandler:addModule(VoiceModule:new(voices))


function creatureSayCallback(cid, type, msg)
    if not npcHandler:isFocused(cid) then
        return false
    end
    
    local player = Player(cid)
    local dornStorage = player:getStorageValue(343586)
    local expeditionFinishedTime = player:getStorageValue(Expeditions.WildBoarFinished)
    if expeditionFinishedTime > os.time() then
        npcHandler:say("You have already finished the expedition. You can do it again next time.", cid)
        return true
    end
    if player:getStorageValue(Expeditions.WildBoar) == -1 then
        player:setStorageValue(Expeditions.WildBoar, 0)
    end
    if msgcontains(msg, "traps") then
        if player:getStorageValue(Expeditions.WildBoar) >= 12 then
            npcHandler:say("Thanks for close the traps, be aware!.", cid)
            player:setStorageValue(343586, dornStorage + 120)
            local dornCoin = player:getStorageValue(48077)
            player:setStorageValue(48077, dornCoin + 35)
            playSoundPlayer(player, "expedition_complete.ogg")
            sendReputationToPlayer(player)
            player:setStorageValue(Expeditions.WildBoar, 0)
            player:setStorageValue(Expeditions.WildBoarCheck, 0)
            player:setStorageValue(Expeditions.WildBoarFinished, os.time() + 3600)
        else
            npcHandler:say("Close 12 Traps around dorn isle and come back to me when it\'s done.", cid)
            player:setStorageValue(Expeditions.WildBoarCheck, 1)
        end
    end

    return true
end


npcHandler:setMessage(MESSAGE_GREET, 'Hunters have set {traps} on the island, you have to act quickly and close the traps to leave the wild boars alone before they get angry and devastate everything!')
npcHandler:setMessage(MESSAGE_FAREWELL, 'Good bye sir!')
npcHandler:setMessage(MESSAGE_WALKAWAY, 'Good bye then.')
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)

npcHandler:addModule(FocusModule:new())
