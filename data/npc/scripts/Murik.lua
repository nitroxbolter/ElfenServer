local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)


function onCreatureAppear(cid) npcHandler:onCreatureAppear(cid) end
function onCreatureDisappear(cid) npcHandler:onCreatureDisappear(cid) end
function onCreatureSay(cid, type, msg) npcHandler:onCreatureSay(cid, type, msg) end
function onThink() npcHandler:onThink() end

local voices = { {text = 'Expedition: Tombs!'} }
npcHandler:addModule(VoiceModule:new(voices))


function creatureSayCallback(cid, type, msg)
    if not npcHandler:isFocused(cid) then
        return false
    end
    
    local player = Player(cid)
    local dornStorage = player:getStorageValue(343586)
    local expeditionFinishedTime = player:getStorageValue(Expeditions.TombsOfDornFinished)
    if expeditionFinishedTime > os.time() then
        npcHandler:say("You have already finished the expedition. You can do it again next time.", cid)
        return true
    end
    if player:getStorageValue(Expeditions.TombsOfDorn) == -1 then
        player:setStorageValue(Expeditions.TombsOfDorn, 0)
    end
    if msgcontains(msg, "graves") then
        if player:getStorageValue(Expeditions.TombsOfDorn) >= 12 then
            npcHandler:say("Thank you, it turns out to be true, I will inform the commander to monitor the area!.", cid)
            player:setStorageValue(343586, dornStorage + 135)
            local dornCoin = player:getStorageValue(48077)
            player:setStorageValue(48077, dornCoin + 40)
            playSoundPlayer(player, "expedition_complete.ogg")
            sendReputationToPlayer(player)
            player:setStorageValue(Expeditions.TombsOfDorn, 0)
            player:setStorageValue(Expeditions.TombsOfDornCheck, 0)
            player:setStorageValue(Expeditions.TombsOfDornFinished, os.time() + 3600)
        else
            npcHandler:say("Move 12 graves to confirm the rumors and come back to me.", cid)
            player:setStorageValue(Expeditions.TombsOfDornCheck, 1)
        end
    end

    return true
end


npcHandler:setMessage(MESSAGE_GREET, 'There are {graves} on the island, some rumors say zombies are appearing, try moving some of them to see.')
npcHandler:setMessage(MESSAGE_FAREWELL, 'Good bye sir!')
npcHandler:setMessage(MESSAGE_WALKAWAY, 'Good bye then.')
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)

npcHandler:addModule(FocusModule:new())
