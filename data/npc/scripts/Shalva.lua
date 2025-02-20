local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)


function onCreatureAppear(cid) npcHandler:onCreatureAppear(cid) end
function onCreatureDisappear(cid) npcHandler:onCreatureDisappear(cid) end
function onCreatureSay(cid, type, msg) npcHandler:onCreatureSay(cid, type, msg) end
function onThink() npcHandler:onThink() end

local voices = { {text = 'Expedition: Survivors!'} }
npcHandler:addModule(VoiceModule:new(voices))


function creatureSayCallback(cid, type, msg)
    if not npcHandler:isFocused(cid) then
        return false
    end
    
    local player = Player(cid)
    local dornStorage = player:getStorageValue(343586)
    local expeditionFinishedTime = player:getStorageValue(Expeditions.SurvivorsOfDornFinished)
    if expeditionFinishedTime > os.time() then
        npcHandler:say("You have already finished the expedition. You can do it again next time.", cid)
        return true
    end
    if player:getStorageValue(Expeditions.SurvivorsOfDorn) == -1 then
        player:setStorageValue(Expeditions.SurvivorsOfDorn, 0)
    end
    if msgcontains(msg, "survivors") then
        if player:getStorageValue(Expeditions.SurvivorsOfDorn) >= 15 then
            npcHandler:say("Thanks for help us to save the survivors!.", cid)
            player:setStorageValue(343586, dornStorage + 210)
            local dornCoin = player:getStorageValue(48077)
            player:setStorageValue(48077, dornCoin + 50)
            playSoundPlayer(player, "expedition_complete.ogg")
            sendReputationToPlayer(player)
            player:setStorageValue(Expeditions.SurvivorsOfDorn, 0)
            player:setStorageValue(Expeditions.SurvivorsOfDornCheck, 0)
            player:setStorageValue(Expeditions.SurvivorsOfDornFinished, os.time() + 3600)
        else
            npcHandler:say("Save 15 Survivors |PLAYERNAME| around dorn isle and come back to me when it\'s done. Don\'t forget to force two or three times on the cages to free them.", cid)
            player:setStorageValue(Expeditions.SurvivorsOfDornCheck, 1)
        end
    end

    return true
end


npcHandler:setMessage(MESSAGE_GREET, 'After the poison infestation in the wild by its creatures some {survivors} were captured, find them and free them, you may have to force two or three times on the cages to free them.')
npcHandler:setMessage(MESSAGE_FAREWELL, 'Good bye sir!')
npcHandler:setMessage(MESSAGE_WALKAWAY, 'Good bye then.')
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)

npcHandler:addModule(FocusModule:new())
