local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)


function onCreatureAppear(cid) npcHandler:onCreatureAppear(cid) end
function onCreatureDisappear(cid) npcHandler:onCreatureDisappear(cid) end
function onCreatureSay(cid, type, msg) npcHandler:onCreatureSay(cid, type, msg) end
function onThink() npcHandler:onThink() end

local voices = { {text = 'Expedition: Book Page\'s!'} }
npcHandler:addModule(VoiceModule:new(voices))


function creatureSayCallback(cid, type, msg)
    if not npcHandler:isFocused(cid) then
        return false
    end
    
    local player = Player(cid)
    local dornStorage = player:getStorageValue(343586)
    local expeditionFinishedTime = player:getStorageValue(Expeditions.PagesOfBookFinished)
    if expeditionFinishedTime > os.time() then
        npcHandler:say("You have already finished the expedition. You can do it again next time.", cid)
        return true
    end
    if player:getStorageValue(Expeditions.PagesOfBook) == -1 then
        player:setStorageValue(Expeditions.PagesOfBook, 0)
    end
    if msgcontains(msg, "pages") then
        if player:getItemCount(29367) >= 15 then
            npcHandler:say("Thanks for this page\'s will be useful for my next book history.", cid)
            player:setStorageValue(343586, dornStorage + 165)
            local dornCoin = player:getStorageValue(48077)
            player:setStorageValue(48077, dornCoin + 70)
            player:removeItem(29367, 15)
            playSoundPlayer(player, "expedition_complete.ogg")
            sendReputationToPlayer(player)
            player:setStorageValue(Expeditions.PagesOfBook, 0)
            player:setStorageValue(Expeditions.PagesOfBookCheck, 0)
            player:setStorageValue(Expeditions.PagesOfBookFinished, os.time() + 3600)
        else
            npcHandler:say("Find 15 Dorn Book Pages on Bookcases, you can down here on stairs and find it, take care!", cid)
            player:setStorageValue(Expeditions.PagesOfBookCheck, 1)
            player:setStorageValue(Expeditions.PagesOfBook, 1)
        end
    end

    return true
end


npcHandler:setMessage(MESSAGE_GREET, 'Good evening |PLAYERNAME|, I am looking for inspiration about certain old books, I would need your help to find {pages} of books and bring them back to me.')
npcHandler:setMessage(MESSAGE_FAREWELL, 'See you!')
npcHandler:setMessage(MESSAGE_WALKAWAY, 'Good bye then.')
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)

npcHandler:addModule(FocusModule:new())
