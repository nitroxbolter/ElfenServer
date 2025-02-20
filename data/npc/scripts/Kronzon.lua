local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)


function onCreatureAppear(cid) npcHandler:onCreatureAppear(cid) end
function onCreatureDisappear(cid) npcHandler:onCreatureDisappear(cid) end
function onCreatureSay(cid, type, msg) npcHandler:onCreatureSay(cid, type, msg) end
function onThink() npcHandler:onThink() end

local voices = { {text = 'Expedition: Find the lost items in the snow!'} }
npcHandler:addModule(VoiceModule:new(voices))


function creatureSayCallback(cid, type, msg)
    if not npcHandler:isFocused(cid) then
        return false
    end
    
    local player = Player(cid)
    local frostStorage = player:getStorageValue(343587)
    local expeditionFinishedTime = player:getStorageValue(Expeditions.LostSnowObjectsFinished)
    if expeditionFinishedTime > os.time() then
        npcHandler:say("You have already finished the expedition. You can do it again next time.", cid)
        return true
    end
    if player:getStorageValue(Expeditions.LostSnowObjects) == -1 then
        player:setStorageValue(Expeditions.LostSnowObjects, 0)
    end
    if player:getStorageValue(Expeditions.LostSnowObjectsCheck) == -1 then
        player:setStorageValue(Expeditions.LostSnowObjectsCheck, 0)
    end
    if msgcontains(msg, "recover") then
        if player:getStorageValue(Expeditions.LostSnowObjects) >= 15 then
            npcHandler:say("Thank you for recovering the lost items, here is your reward!.", cid)
            player:setStorageValue(Expeditions.LostSnowObjects, 0)
            player:setStorageValue(343587, frostStorage + 150)
            local frostCoin = player:getStorageValue(48078)
            player:setStorageValue(48078, frostCoin + 30)
            playSoundPlayer(player, "expedition_complete.ogg")
            sendReputationToPlayer(player)
            player:setStorageValue(Expeditions.LostSnowObjectsFinished, os.time() + 3600)
            player:setStorageValue(Expeditions.LostSnowObjectsCheck, 0)
        elseif player:getStorageValue(Expeditions.LostSnowObjects) < 1 then
            npcHandler:say("Find the objects that were lost by the missionaries in the snow, bring back 15 but be careful!", cid)
            player:setStorageValue(Expeditions.LostSnowObjectsCheck, 1)
        elseif player:getStorageValue(Expeditions.LostSnowObjects) >= 1 then
            npcHandler:say("You already started the expedition. Find out the lost items on the snow.", cid)
        end
    end

    return true
end


npcHandler:setMessage(MESSAGE_GREET, 'Missionaries have gone on a treasure quest |PLAYERNAME|, act quickly and {recover} the lost objects')
npcHandler:setMessage(MESSAGE_FAREWELL, 'Good bye sir!')
npcHandler:setMessage(MESSAGE_WALKAWAY, 'Good bye then.')
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)

npcHandler:addModule(FocusModule:new())
