local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)


function onCreatureAppear(cid) npcHandler:onCreatureAppear(cid) end
function onCreatureDisappear(cid) npcHandler:onCreatureDisappear(cid) end
function onCreatureSay(cid, type, msg) npcHandler:onCreatureSay(cid, type, msg) end
function onThink() npcHandler:onThink() end

local voices = { {text = 'Expedition: Collect Frosthold Crystals Stones!'} }
npcHandler:addModule(VoiceModule:new(voices))


function creatureSayCallback(cid, type, msg)
    if not npcHandler:isFocused(cid) then
        return false
    end
    
    local player = Player(cid)
    local frostStorage = player:getStorageValue(343587)
    local expeditionFinishedTime = player:getStorageValue(Expeditions.FrostHoldCrystalFinished)
    if expeditionFinishedTime > os.time() then
        npcHandler:say("You have already finished the expedition. You can do it again next time.", cid)
        return true
    end
    if player:getStorageValue(Expeditions.FrostHoldCrystal) == -1 then
        player:setStorageValue(Expeditions.FrostHoldCrystal, 0)
    end
    if player:getStorageValue(Expeditions.FrostHoldCrystalCheck) == -1 then
        player:setStorageValue(Expeditions.FrostHoldCrystalCheck, 0)
    end
    if msgcontains(msg, "help") then
        if player:getStorageValue(Expeditions.FrostHoldCrystal) >= 20 then
            if player:removeItem(29347) == 20 then
                npcHandler:say("Thank you for the Frosthold crystals stones, we will be able to create some swords for defend this isle!.", cid)
                player:setStorageValue(Expeditions.FrostHoldCrystal, 0)
                player:setStorageValue(343587, frostStorage + 130)
                local frostCoin = player:getStorageValue(48078)
                player:setStorageValue(48078, frostCoin + 24)
                player:removeItem(29348, 1)
                playSoundPlayer(player, "expedition_complete.ogg")
                sendReputationToPlayer(player)
                player:setStorageValue(Expeditions.FrostHoldCrystalFinished, os.time() + 3600)
                player:setStorageValue(Expeditions.FrostHoldCrystalCheck, 0)
            else
                npcHandler:say("You don't have 20 Frosthold crystals stones.", cid)
            end
            elseif player:getStorageValue(Expeditions.FrostHoldCrystal) < 1 then
                npcHandler:say("Find some crystals around the isle, then with this pick collect Frosthold crystals stones, when you get 20 of them come back to me!", cid)
                player:setStorageValue(Expeditions.FrostHoldCrystalCheck, 1)
                player:addItem(29348, 1)
            elseif player:getStorageValue(Expeditions.FrostHoldCrystal) >= 1 then
                npcHandler:say("You already started the expedition. If you lost the pickaxe here is it again.", cid)
                player:addItem(29348, 1)
            end
        end

    return true
end


npcHandler:setMessage(MESSAGE_GREET, 'Hello dear |PLAYERNAME|, we need some Frosthold Crystals Stones to prepare some mithril weapons for guards, can you {help} us?')
npcHandler:setMessage(MESSAGE_FAREWELL, 'Good bye sir!')
npcHandler:setMessage(MESSAGE_WALKAWAY, 'Good bye then.')
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)

npcHandler:addModule(FocusModule:new())
