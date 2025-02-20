local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)


function onCreatureAppear(cid) npcHandler:onCreatureAppear(cid) end
function onCreatureDisappear(cid) npcHandler:onCreatureDisappear(cid) end
function onCreatureSay(cid, type, msg) npcHandler:onCreatureSay(cid, type, msg) end
function onThink() npcHandler:onThink() end

local voices = { {text = 'Expedition: Extermination of machines!'} }
npcHandler:addModule(VoiceModule:new(voices))


function creatureSayCallback(cid, type, msg)
    if not npcHandler:isFocused(cid) then
        return false
    end
    
    local player = Player(cid)
    local vyrskStorage = player:getStorageValue(343589)
    local expeditionFinishedTime = player:getStorageValue(Expeditions.ExterminationMachineFinished)
    if expeditionFinishedTime > os.time() then
        npcHandler:say("You have already finished the expedition. You can do it again next time.", cid)
        return true
    end
    if msgcontains(msg, "gear") then
        if player:removeItem(29349, 20) then
            npcHandler:say("Thanks for help us, here is your reward, have a nice day!.", cid)
            player:setStorageValue(343589, vyrskStorage + 250)
            local vyrskCoin = player:getStorageValue(48080)
            player:setStorageValue(48080, vyrskCoin + 60)
            playSoundPlayer(player, "expedition_complete.ogg")
            sendReputationToPlayer(player)
            player:setStorageValue(Expeditions.ExterminationMachineFinished, os.time() + 3600)
        else
            npcHandler:say("Kill machines and bring me 20 Mechanic Gear Wheel\'s components as soon as you get them.", cid)
        end
    end

    return true
end


npcHandler:setMessage(MESSAGE_GREET, 'The machines are expanding into the island\'s basement, quickly |PLAYERNAME|, find the {gear} components and bring them back to me!')
npcHandler:setMessage(MESSAGE_FAREWELL, 'Good bye sir!')
npcHandler:setMessage(MESSAGE_WALKAWAY, 'Good bye then.')
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)

npcHandler:addModule(FocusModule:new())
