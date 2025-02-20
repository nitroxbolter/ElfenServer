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
    if msgcontains(msg, "frozen") then
        npcHandler:say("Over time we have concocted a potion that allows us to extract the very essence of frozen {eye} to create frozen dracadet.", cid)
    elseif msgcontains(msg, "eye") then
        npcHandler:say("So i can reward you with a new Familiar called Frost Dracadet, it's a small dragon with icy abilities. What kind of Frost Dracadet you want ? {Normal} Frost Dracadet, {First} Evolution Frost Dracadet or {Last} Evolution Frost Dracadet ?", cid)
    elseif msgcontains(msg, "normal") then
        local frozenEye = 29366
        if player:getItemCount(frozenEye) >= 50 then
            player:removeItem(frozenEye, 50)
            player:addItem(29363, 1)
            npcHandler:say("Thank you! Here is the Frozen Dracadet Egg, it will help you a lot, to summon or choose this new familiar use: !choosefamiliar.", cid)
        else
            npcHandler:say("Ok then, collect 50 frozen eye\'s and bring them to me when you get it.", cid)
            npcHandler:releaseFocus(cid)
        end
    elseif msgcontains(msg, "first") then
        local frozenEye = 29366
        if player:getItemCount(frozenEye) >= 150 then
            player:removeItem(frozenEye, 150)
            player:addItem(29364, 1)
            npcHandler:say("Thank you! Here is the Frozen Dracadet [2] Egg, it will help you a lot, to summon or choose this new familiar use: !choosefamiliar.", cid)
        else
            npcHandler:say("Ok then, collect 150 frozen eye\'s and bring them to me when you get it.", cid)
            npcHandler:releaseFocus(cid)
        end
    elseif msgcontains(msg, "last") then
        local frozenEye = 29366
        if player:getItemCount(frozenEye) >= 300 then
            player:removeItem(frozenEye, 300)
            player:addItem(29365, 1)
            npcHandler:say("Thank you! Here is the Frozen Dracadet [3] Egg, it will help you a lot, to summon or choose this new familiar use: !choosefamiliar.", cid)
        else
            npcHandler:say("Ok then, collect 300 frozen eye\'s and bring them to me when you get it.", cid)
            npcHandler:releaseFocus(cid)
        end
    end
    return true
end


npcHandler:setMessage(MESSAGE_GREET, 'Hello |PLAYERNAME|, you probably founded some {frozen} eye\'s, i will echange them for a frost dracadet.')
npcHandler:setMessage(MESSAGE_FAREWELL, 'Don\'t forget to come back if you need some help!')
npcHandler:setMessage(MESSAGE_WALKAWAY, 'Good bye then.')
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)

npcHandler:addModule(FocusModule:new())
