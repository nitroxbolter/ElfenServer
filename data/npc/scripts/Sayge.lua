local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)


function onCreatureAppear(cid) npcHandler:onCreatureAppear(cid) end
function onCreatureDisappear(cid) npcHandler:onCreatureDisappear(cid) end
function onCreatureSay(cid, type, msg) npcHandler:onCreatureSay(cid, type, msg) end
function onThink() npcHandler:onThink() end

local voices = { {text = 'Expedition: Burn Spider Nests!'} }
npcHandler:addModule(VoiceModule:new(voices))


function creatureSayCallback(cid, type, msg)
    if not npcHandler:isFocused(cid) then
        return false
    end
    
    local player = Player(cid)
    local frostStorage = player:getStorageValue(343587)
    local expeditionFinishedTime = player:getStorageValue(Expeditions.BurnSpiderEggsFinished)
    if expeditionFinishedTime > os.time() then
        npcHandler:say("You have already finished the expedition. You can do it again next time.", cid)
        return true
    end
    if msgcontains(msg, "burn") then
        if player:getStorageValue(Expeditions.BurnSpiderEggsRune) >= 8 then
            npcHandler:say("Thank you for your help, this spider's will not going to invade frosthold today!.", cid)
            player:setStorageValue(Expeditions.BurnSpiderEggsRune, 0)
            player:setStorageValue(343587, frostStorage + 120)
            local frostCoin = player:getStorageValue(48078)
            player:setStorageValue(48078, frostCoin + 20)
            player:removeItem(29344, 1)
            playSoundPlayer(player, "expedition_complete.ogg")
            sendReputationToPlayer(player)
            player:setStorageValue(Expeditions.BurnSpiderEggsFinished, os.time() + 3600)
        elseif player:getStorageValue(Expeditions.BurnSpiderEggsRune) < 1 then
            npcHandler:say("Warning! This Spiders are agressive, if you try burn one of the nests you will get a chance that spiders will attack you.",
            "Go and come back when you have {burned 8} of them.", cid)
            player:addItem(29344, 1)
        elseif player:getStorageValue(Expeditions.BurnSpiderEggsRune) >= 1 then
            npcHandler:say("You already started the expedition. If you lost the burn rune here is it again.", cid)
            player:addItem(29344, 1)
        end
    end

    return true
end


npcHandler:setMessage(MESSAGE_GREET, 'Time is running out |PLAYERNAME|! The spiders are breeding, we need to stop them, {burn} 8 spider nests and come back to me when it\'s done!')
npcHandler:setMessage(MESSAGE_FAREWELL, 'Good bye sir!')
npcHandler:setMessage(MESSAGE_WALKAWAY, 'Good bye then.')
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)

npcHandler:addModule(FocusModule:new())
