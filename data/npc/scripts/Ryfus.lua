local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)


function onCreatureAppear(cid) npcHandler:onCreatureAppear(cid) end
function onCreatureDisappear(cid) npcHandler:onCreatureDisappear(cid) end
function onCreatureSay(cid, type, msg) npcHandler:onCreatureSay(cid, type, msg) end
function onThink() npcHandler:onThink() end

local voices = { {text = 'Expedition: Decrypt Glyphs!'} }
npcHandler:addModule(VoiceModule:new(voices))


function creatureSayCallback(cid, type, msg)
    if not npcHandler:isFocused(cid) then
        return false
    end
    
    local player = Player(cid)
    local vardenfellStorage = player:getStorageValue(343585)
    local expeditionFinishedTime = player:getStorageValue(Expeditions.FindAncientGlyphsFinished)
    if expeditionFinishedTime > os.time() then
        npcHandler:say("You have already finished the expedition. You can do it again next time.", cid)
        return true
    end
    if player:getStorageValue(Expeditions.FindAncientGlyphs) == -1 then
        player:setStorageValue(Expeditions.FindAncientGlyphs, 0)
    end
    if msgcontains(msg, "decrypt") then
        if player:getStorageValue(Expeditions.FindAncientGlyphs) >= 10 then
            npcHandler:say("Thank you so much ! So I think now you understand what I'm talking about!", cid)
            player:setStorageValue(343585, vardenfellStorage + 80)
            local vardenfellCoin = player:getStorageValue(48076)
            player:setStorageValue(48076, vardenfellCoin + 35)
            playSoundPlayer(player, "expedition_complete.ogg")
            sendReputationToPlayer(player)
            player:setStorageValue(Expeditions.FindAncientGlyphs, 0)
            player:setStorageValue(Expeditions.FindAncientGlyphsCheck, 0)
            player:setStorageValue(Expeditions.FindAncientGlyphsFinished, os.time() + 3600)
        else
            npcHandler:say("Invenire 10 glyphs per Vardenfell, eas explica et ad me redi.", cid)
            player:setStorageValue(Expeditions.FindAncientGlyphsCheck, 1)
        end
    end

    return true
end


npcHandler:setMessage(MESSAGE_GREET, 'Salve |PLAYERNAME| opus est ut per insulam glyphs {decrypt}.')
npcHandler:setMessage(MESSAGE_FAREWELL, 'Vale domine!')
npcHandler:setMessage(MESSAGE_WALKAWAY, 'Te iterum.')
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)

npcHandler:addModule(FocusModule:new())
