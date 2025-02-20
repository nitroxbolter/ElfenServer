local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)


function onCreatureAppear(cid) npcHandler:onCreatureAppear(cid) end
function onCreatureDisappear(cid) npcHandler:onCreatureDisappear(cid) end
function onCreatureSay(cid, type, msg) npcHandler:onCreatureSay(cid, type, msg) end
function onThink() npcHandler:onThink() end


function creatureSayCallback(cid, type, msg)
    if not npcHandler:isFocused(cid) then
        return false
    end
    
    local player = Player(cid)
    if msgcontains(msg, "mystical") then
        npcHandler:say("The mystical {ribbon} have incredible power, thanks to them we can train fire dracadet.", cid)
    elseif msgcontains(msg, "ribbon") then
        npcHandler:say("So i can reward you with a new Familiar called Fire Dracadet, it's a small dragon with earth abilities. What kind of Fire Dracadet you want ? {Normal} Fire Dracadet, {First} Evolution Fire Dracadet or {Last} Evolution Fire Dracadet ?", cid)
    elseif msgcontains(msg, "normal") then
        local mysticalRibbon = 29380
        if player:getItemCount(mysticalRibbon) >= 50 then
            player:removeItem(mysticalRibbon, 50)
            player:addItem(29375, 1)
            npcHandler:say("Thank you! Here is the Fire Dracadet Egg, it will help you a lot, to summon or choose this new familiar use: !choosefamiliar.", cid)
        else
            npcHandler:say("Ok then, collect 50 old stick\'s and bring them to me when you get it.", cid)
            npcHandler:releaseFocus(cid)
        end
    elseif msgcontains(msg, "first") then
        local mysticalRibbon = 29380
        if player:getItemCount(mysticalRibbon) >= 150 then
            player:removeItem(mysticalRibbon, 150)
            player:addItem(29376, 1)
            npcHandler:say("Thank you! Here is the Fire Dracadet [2] Egg, it will help you a lot, to summon or choose this new familiar use: !choosefamiliar.", cid)
        else
            npcHandler:say("Ok then, collect 150 old stick\'s and bring them to me when you get it.", cid)
            npcHandler:releaseFocus(cid)
        end
    elseif msgcontains(msg, "last") then
        local mysticalRibbon = 29380
        if player:getItemCount(mysticalRibbon) >= 300 then
            player:removeItem(mysticalRibbon, 300)
            player:addItem(29377, 1)
            npcHandler:say("Thank you! Here is the Fire Dracadet [3] Egg, it will help you a lot, to summon or choose this new familiar use: !choosefamiliar.", cid)
        else
            npcHandler:say("Ok then, collect 300 old stick\'s and bring them to me when you get it.", cid)
            npcHandler:releaseFocus(cid)
        end
    end
    return true
end


npcHandler:setMessage(MESSAGE_GREET, 'Hello |PLAYERNAME|, you probably founded some {mystical} ribbon, i will echange them for a Fire dracadet.')
npcHandler:setMessage(MESSAGE_FAREWELL, 'Don\'t forget to come back if you need some help!')
npcHandler:setMessage(MESSAGE_WALKAWAY, 'Good bye then.')
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)

npcHandler:addModule(FocusModule:new())
