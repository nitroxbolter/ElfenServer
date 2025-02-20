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
    if msgcontains(msg, "stick") then
        npcHandler:say("Thanks to the old stick we can train {swamp} dracadet.", cid)
    elseif msgcontains(msg, "swamp") then
        npcHandler:say("So i can reward you with a new Familiar called Swamp Dracadet, it's a small dragon with earth abilities. What kind of Swamp Dracadet you want ? {Normal} Swamp Dracadet, {First} Evolution Swamp Dracadet or {Last} Evolution Swamp Dracadet ?", cid)
    elseif msgcontains(msg, "normal") then
        local oldStick = 29378
        if player:getItemCount(oldStick) >= 50 then
            player:removeItem(oldStick, 50)
            player:addItem(29369, 1)
            npcHandler:say("Thank you! Here is the Swamp Dracadet Egg, it will help you a lot, to summon or choose this new familiar use: !choosefamiliar.", cid)
        else
            npcHandler:say("Ok then, collect 50 old stick\'s and bring them to me when you get it.", cid)
            npcHandler:releaseFocus(cid)
        end
    elseif msgcontains(msg, "first") then
        local oldStick = 29378
        if player:getItemCount(oldStick) >= 150 then
            player:removeItem(oldStick, 150)
            player:addItem(29370, 1)
            npcHandler:say("Thank you! Here is the Swamp Dracadet [2] Egg, it will help you a lot, to summon or choose this new familiar use: !choosefamiliar.", cid)
        else
            npcHandler:say("Ok then, collect 150 old stick\'s and bring them to me when you get it.", cid)
            npcHandler:releaseFocus(cid)
        end
    elseif msgcontains(msg, "last") then
        local oldStick = 29378
        if player:getItemCount(oldStick) >= 300 then
            player:removeItem(oldStick, 300)
            player:addItem(29371, 1)
            npcHandler:say("Thank you! Here is the Swamp Dracadet [3] Egg, it will help you a lot, to summon or choose this new familiar use: !choosefamiliar.", cid)
        else
            npcHandler:say("Ok then, collect 300 old stick\'s and bring them to me when you get it.", cid)
            npcHandler:releaseFocus(cid)
        end
    end
    return true
end


npcHandler:setMessage(MESSAGE_GREET, 'Hello |PLAYERNAME|, you probably founded some old {stick}, i will echange them for a swamp dracadet.')
npcHandler:setMessage(MESSAGE_FAREWELL, 'Don\'t forget to come back if you need some help!')
npcHandler:setMessage(MESSAGE_WALKAWAY, 'Good bye then.')
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)

npcHandler:addModule(FocusModule:new())
