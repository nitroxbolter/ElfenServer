local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)


function onCreatureAppear(cid) npcHandler:onCreatureAppear(cid) end
function onCreatureDisappear(cid) npcHandler:onCreatureDisappear(cid) end
function onCreatureSay(cid, type, msg) npcHandler:onCreatureSay(cid, type, msg) end
function onThink() npcHandler:onThink() end

local voices = { {text = 'Expedition: Frosts Monsters!'} }
npcHandler:addModule(VoiceModule:new(voices))


function creatureSayCallback(cid, type, msg)
    if not npcHandler:isFocused(cid) then
        return false
    end
    
    local player = Player(cid)
    local frostStorage = player:getStorageValue(343587)
    local expeditionFinishedTime = player:getStorageValue(Expeditions.FrostKillsFinished)
    if expeditionFinishedTime > os.time() then
        npcHandler:say("You have already finished the expedition. You can do it again next time.", cid)
        return true
    end
    if player:getStorageValue(Expeditions.FrostKills) == -1 then
        player:setStorageValue(Expeditions.FrostKills, 0)
    end
    if msgcontains(msg, "proliferation") then
        if player:getStorageValue(Expeditions.FrostKills) >= 30 then
            npcHandler:say("Thanks for help us to stop the proliferation about this aberrations!.", cid)
            player:setStorageValue(343587, frostStorage + 260)
            local frostCoin = player:getStorageValue(48080)
            player:setStorageValue(48078, frostCoin + 90)
            playSoundPlayer(player, "expedition_complete.ogg")
            sendReputationToPlayer(player)
            player:setStorageValue(Expeditions.FrostKills, 0)
            player:setStorageValue(Expeditions.FrostKillsFinished, os.time() + 3600)
        else
            npcHandler:say("Kill 30 Frost Hydras, Frost Larvas or Frost Dragons and come back to me when it's done.", cid)
        end
    end

    return true
end


npcHandler:setMessage(MESSAGE_GREET, 'Hello |PLAYERNAME| ! Stop the {proliferation} of Frost\'s Monsters, kill Frost Hydras, Larvas and Dragons, come back when you kill 30 of them!')
npcHandler:setMessage(MESSAGE_FAREWELL, 'Good bye sir!')
npcHandler:setMessage(MESSAGE_WALKAWAY, 'Good bye then.')
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)

npcHandler:addModule(FocusModule:new())
