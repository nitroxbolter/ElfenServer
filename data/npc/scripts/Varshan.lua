local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)


function onCreatureAppear(cid) npcHandler:onCreatureAppear(cid) end
function onCreatureDisappear(cid) npcHandler:onCreatureDisappear(cid) end
function onCreatureSay(cid, type, msg) npcHandler:onCreatureSay(cid, type, msg) end
function onThink() npcHandler:onThink() end

local voices = { {text = 'Expedition: Goblin Essences!'} }
npcHandler:addModule(VoiceModule:new(voices))


function creatureSayCallback(cid, type, msg)
    if not npcHandler:isFocused(cid) then
        return false
    end
    
    local player = Player(cid)
    local vardenfellStorage = player:getStorageValue(343585)
    local expeditionFinishedTime = player:getStorageValue(Expeditions.MonstrosityFinished)
    if expeditionFinishedTime > os.time() then
        npcHandler:say("You have already finished the expedition. You can do it again next time.", cid)
        return true
    end
    if msgcontains(msg, "monstrosity") then
        if player:getItemCount(29501) >= 20 then
            npcHandler:say("Thanks you very much |PLAYERNAME|, here is your reward.", cid)
            player:setStorageValue(343585, vardenfellStorage + 240)
            local vardenfellCoin = player:getStorageValue(48077)
            player:setStorageValue(48076, vardenfellCoin + 85)
            playSoundPlayer(player, "expedition_complete.ogg")
            sendReputationToPlayer(player)
            player:setStorageValue(Expeditions.MonstrosityFinished, os.time() + 3600)
        else
            npcHandler:say("Collect 20 Monstrosity from any monster of the isle and come back when you finish.", cid)
        end
    end

    return true
end


npcHandler:setMessage(MESSAGE_GREET, 'Hurry |PLAYERNAME| we need inspect the {monstrosity} in order to know what happens to the monsters on the isle!.')
npcHandler:setMessage(MESSAGE_FAREWELL, 'Goodbye and take care!')
npcHandler:setMessage(MESSAGE_WALKAWAY, 'Good bye then.')
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)

npcHandler:addModule(FocusModule:new())
