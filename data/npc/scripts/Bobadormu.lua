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
    local hallowStorage = player:getStorageValue(343588)
    local expeditionFinishedTime = player:getStorageValue(Expeditions.DragonFruitsFinished)
    if expeditionFinishedTime > os.time() then
        npcHandler:say("You have already finished the expedition. You can do it again next time.", cid)
        return true
    end
    if msgcontains(msg, "fruits") then
        if player:getItemCount(29381) >= 20 then
            npcHandler:say("Oh |PLAYERNAME| thanks you very much, here is your reward.", cid)
            player:setStorageValue(343586, hallowStorage + 200)
            local hallowCoin = player:getStorageValue(48079)
            player:setStorageValue(48079, hallowCoin + 90)
            playSoundPlayer(player, "expedition_complete.ogg")
            sendReputationToPlayer(player)
            player:setStorageValue(Expeditions.DragonFruitsFinished, os.time() + 3600)
        else
            npcHandler:say("Collect 20 Dragon Fruits from the frogs and come back when you finish.", cid)
        end
    end

    return true
end


npcHandler:setMessage(MESSAGE_GREET, 'Hello |PLAYERNAME|, we are preparing a new concoction and for this we need some {fruits}.')
npcHandler:setMessage(MESSAGE_FAREWELL, 'Goodbye and take care!')
npcHandler:setMessage(MESSAGE_WALKAWAY, 'Good bye then.')
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)

npcHandler:addModule(FocusModule:new())
