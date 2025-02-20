local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)


function onCreatureAppear(cid) npcHandler:onCreatureAppear(cid) end
function onCreatureDisappear(cid) npcHandler:onCreatureDisappear(cid) end
function onCreatureSay(cid, type, msg) npcHandler:onCreatureSay(cid, type, msg) end
function onThink() npcHandler:onThink() end

local voices = { {text = 'Expedition: Collect Eagle Eggs!'} }
npcHandler:addModule(VoiceModule:new(voices))


function creatureSayCallback(cid, type, msg)
    if not npcHandler:isFocused(cid) then
        return false
    end
    
    local player = Player(cid)
    local vyrskStorage = player:getStorageValue(343589)
    local expeditionFinishedTime = player:getStorageValue(Expeditions.EagleNestFinished)
    if expeditionFinishedTime > os.time() then
        npcHandler:say("You have already finished the expedition. You can do it again next time.", cid)
        return true
    end
    if msgcontains(msg, "sure") then
        if player:getStorageValue(Expeditions.EagleNest) == -1 then
            player:setStorageValue(Expeditions.EagleNest, 0)
        end
        if player:getStorageValue(Expeditions.EagleNestGiveFood) == -1 then
            player:setStorageValue(Expeditions.EagleNestGiveFood, 0)
        end
        if player:getStorageValue(Expeditions.EagleNest) >= 8 then
            npcHandler:say("Great for collecting the eighth eggs, now we need some salt and oil, collect them from the Thief Goblins, we need 5 measures of salt and 3 cooking oil!.", cid)
            playSoundPlayer(player, "expedition_complete.ogg")
            player:removeItem(29339, 8)
            player:setStorageValue(Expeditions.EagleNestMissionOne, 1)
            player:setStorageValue(Expeditions.EagleNest, 0)
        elseif player:getStorageValue(Expeditions.EagleNestMissionOne) == 1 and player:removeItem(29341, 3) and player:removeItem(29340, 5) then
            npcHandler:say("Great! Here is some Eagle Egg Dishes, give it to Travelers then come back to me.", cid)
            player:addItem(29342, 3)
            player:setStorageValue(Expeditions.EagleNestMissionTwo, 1)
            playSoundPlayer(player, "expedition_complete.ogg")
            player:setStorageValue(Expeditions.EagleNestMissionOne, 0)
        elseif player:getStorageValue(Expeditions.EagleNestMissionTwo) == 1 and player:getStorageValue(Expeditions.EagleNestGiveFood) >= 3 then
            npcHandler:say("Thanks for help them, here is your reward.", cid)
            player:setStorageValue(Expeditions.EagleNestGiveFood, 0)
            player:setStorageValue(Expeditions.EagleNestFinished, os.time() + 3600)
            player:setStorageValue(343589, vyrskStorage + 135)
            local vyrskCoin = player:getStorageValue(48080)
            player:setStorageValue(48080, vyrskCoin + 24)
            playSoundPlayer(player, "expedition_complete.ogg")
            sendReputationToPlayer(player)
        else
            npcHandler:say("We need some Eagle eggs, collect them around the isle then come back to me.", cid)
        end
    end

    return true
end


npcHandler:setMessage(MESSAGE_GREET, '|PLAYERNAME|! We are working on a new recipe with eagle eggs, we need to be {sure} you can take part of this expedition!')
npcHandler:setMessage(MESSAGE_FAREWELL, 'Don\'t forget to visit our island again!')
npcHandler:setMessage(MESSAGE_WALKAWAY, 'Good bye then.')
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)

npcHandler:addModule(FocusModule:new())
