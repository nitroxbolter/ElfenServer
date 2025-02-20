local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)


function onCreatureAppear(cid) npcHandler:onCreatureAppear(cid) end
function onCreatureDisappear(cid) npcHandler:onCreatureDisappear(cid) end
function onCreatureSay(cid, type, msg) npcHandler:onCreatureSay(cid, type, msg) end
function onThink() npcHandler:onThink() end

local voices = { {text = 'Expedition: Try catch Golden Basses and finish with this Hermit Crabs!'} }
npcHandler:addModule(VoiceModule:new(voices))


function creatureSayCallback(cid, type, msg)
    if not npcHandler:isFocused(cid) then
        return false
    end
    
    local player = Player(cid)
    local vyrskStorage = player:getStorageValue(343589)
    local expeditionFinishedTime = player:getStorageValue(Expeditions.BernardLhermiteFinished)
    if expeditionFinishedTime > os.time() then
        npcHandler:say("You have already finished the expedition. You can do it again next time.", cid)
        return true
    end
    if msgcontains(msg, "invaded") then
        if player:getStorageValue(Expeditions.BernardLhermite) >= 12 then
            npcHandler:say("Thank you for your help, our island will be better! Here is your reward.", cid)
            player:setStorageValue(Expeditions.BernardLhermite, 0)
            player:setStorageValue(343589, vyrskStorage + 80)
            local vyrskCoin = player:getStorageValue(48080)
            player:setStorageValue(48080, vyrskCoin + 12)
            player:removeItem(29330, 1)
            local basses = player:getItemCount(29331)
            if basses > 0 then
                player:removeItem(29331, basses)
            end
            playSoundPlayer(player, "expedition_complete.ogg")
            sendReputationToPlayer(player)
            player:setStorageValue(Expeditions.BernardLhermiteFinished, os.time() + 3600)
        elseif player:getStorageValue(Expeditions.BernardLhermite) < 1 then
            npcHandler:say("Here, take this fishing rod, fish for some golden bass and give the bass to the hermit crabs that are hidden under the sand, destroy {12} of them and come back to me.", cid)
            player:addItem(29330, 1)
        elseif player:getStorageValue(Expeditions.BernardLhermite) >= 1 then
            npcHandler:say("You already started the expedition. If you lost the rod here it is again.", cid)
            player:addItem(29330, 1)
        end
    end

    return true
end


npcHandler:setMessage(MESSAGE_GREET, '|PLAYERNAME|! I am very disappointed we are being {invaded} by hermit crabs! Please help us get rid of them!')
npcHandler:setMessage(MESSAGE_FAREWELL, 'Don\'t forget to visit our island again!')
npcHandler:setMessage(MESSAGE_WALKAWAY, 'Good bye then.')
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)

npcHandler:addModule(FocusModule:new())
