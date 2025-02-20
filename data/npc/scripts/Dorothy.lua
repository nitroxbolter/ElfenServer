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
    local dornStorage = player:getStorageValue(343586)
    local expeditionFinishedTime = player:getStorageValue(Expeditions.GoblinEssenceFinished)
    if expeditionFinishedTime > os.time() then
        npcHandler:say("You have already finished the expedition. You can do it again next time.", cid)
        return true
    end
    if msgcontains(msg, "essences") then
        if player:getItemCount(29368) >= 20 then
            npcHandler:say("Oh |PLAYERNAME| you help us a lot with this essences, here is your reward.", cid)
            player:setStorageValue(343586, dornStorage + 210)
            local dornCoin = player:getStorageValue(48077)
            player:setStorageValue(48077, dornCoin + 70)
            playSoundPlayer(player, "expedition_complete.ogg")
            sendReputationToPlayer(player)
            player:setStorageValue(Expeditions.GoblinEssenceFinished, os.time() + 3600)
        else
            npcHandler:say("Collect 20 Goblin Essences and come back when you finish.", cid)
        end
    end

    return true
end


npcHandler:setMessage(MESSAGE_GREET, 'Hello |PLAYERNAME| We are investigating about this goblins, we need some help to collect some goblin {essences} to know what happen\'s with the monsters.')
npcHandler:setMessage(MESSAGE_FAREWELL, 'Goodbye and take care!')
npcHandler:setMessage(MESSAGE_WALKAWAY, 'Good bye then.')
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)

npcHandler:addModule(FocusModule:new())
