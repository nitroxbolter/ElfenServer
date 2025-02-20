local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)


function onCreatureAppear(cid) npcHandler:onCreatureAppear(cid) end
function onCreatureDisappear(cid) npcHandler:onCreatureDisappear(cid) end
function onCreatureSay(cid, type, msg) npcHandler:onCreatureSay(cid, type, msg) end
function onThink() npcHandler:onThink() end

local voices = { {text = 'Expedition: Broken Generators!'} }
npcHandler:addModule(VoiceModule:new(voices))


function creatureSayCallback(cid, type, msg)
    if not npcHandler:isFocused(cid) then
        return false
    end
    
    local player = Player(cid)
    local hallowStorage = player:getStorageValue(343588)
    local expeditionFinishedTime = player:getStorageValue(Expeditions.BrokenGeneratorsFinished)
    if expeditionFinishedTime > os.time() then
        npcHandler:say("You have already finished the expedition. You can do it again next time.", cid)
        return true
    end
    if msgcontains(msg, "generator") then
        if player:getItemCount(29381) >= 20 then
            npcHandler:say("Oh |PLAYERNAME| thanks you very much, here is your reward.", cid)
            player:setStorageValue(343586, hallowStorage + 200)
            local hallowCoin = player:getStorageValue(48079)
            player:setStorageValue(48079, hallowCoin + 90)
            playSoundPlayer(player, "expedition_complete.ogg")
            sendReputationToPlayer(player)
            player:setStorageValue(Expeditions.BrokenGenerators, 0)
            player:setStorageValue(Expeditions.BrokenGeneratorsCheck, 0)
            player:setStorageValue(Expeditions.BrokenGeneratorsFinished, os.time() + 3600)
        else
            player:setStorageValue(Expeditions.BrokenGeneratorsCheck, 1)
            npcHandler:say("Repair 20 Broken Generators and come back when you finish.", cid)
        end
    end

    return true
end


npcHandler:setMessage(MESSAGE_GREET, 'Hello |PLAYERNAME|, this frogs are broking the {generator}\'s, please help us to fix them!.')
npcHandler:setMessage(MESSAGE_FAREWELL, 'Goodbye and take care!')
npcHandler:setMessage(MESSAGE_WALKAWAY, 'Good bye then.')
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)

npcHandler:addModule(FocusModule:new())
