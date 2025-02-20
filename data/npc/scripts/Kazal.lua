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
    if msgcontains(msg, "premature") then
        npcHandler:say("We can call upon ancient magic with these {bones} and summon a dracadet stone.", cid)
    elseif msgcontains(msg, "bones") then
        npcHandler:say("So i can reward you with a new Familiar called Stone Dracadet, it's a small dragon with earth abilities. What kind of Stone Dracadet you want ? {Normal} Stone Dracadet, {First} Evolution Stone Dracadet or {Last} Evolution Stone Dracadet ?", cid)
    elseif msgcontains(msg, "normal") then
        local prematureBones = 29379
        if player:getItemCount(prematureBones) >= 50 then
            player:removeItem(prematureBones, 50)
            player:addItem(29372, 1)
            npcHandler:say("Thank you! Here is the Stone Dracadet Egg, it will help you a lot, to summon or choose this new familiar use: !choosefamiliar.", cid)
        else
            npcHandler:say("Ok then, collect 50 old stick\'s and bring them to me when you get it.", cid)
            npcHandler:releaseFocus(cid)
        end
    elseif msgcontains(msg, "first") then
        local prematureBones = 29379
        if player:getItemCount(prematureBones) >= 150 then
            player:removeItem(prematureBones, 150)
            player:addItem(29373, 1)
            npcHandler:say("Thank you! Here is the Stone Dracadet [2] Egg, it will help you a lot, to summon or choose this new familiar use: !choosefamiliar.", cid)
        else
            npcHandler:say("Ok then, collect 150 old stick\'s and bring them to me when you get it.", cid)
            npcHandler:releaseFocus(cid)
        end
    elseif msgcontains(msg, "last") then
        local prematureBones = 29379
        if player:getItemCount(prematureBones) >= 300 then
            player:removeItem(prematureBones, 300)
            player:addItem(29374, 1)
            npcHandler:say("Thank you! Here is the Stone Dracadet [3] Egg, it will help you a lot, to summon or choose this new familiar use: !choosefamiliar.", cid)
        else
            npcHandler:say("Ok then, collect 300 old stick\'s and bring them to me when you get it.", cid)
            npcHandler:releaseFocus(cid)
        end
    end
    return true
end


npcHandler:setMessage(MESSAGE_GREET, 'Hello |PLAYERNAME|, you probably founded some {premature} bone, i will echange them for a stone dracadet.')
npcHandler:setMessage(MESSAGE_FAREWELL, 'Don\'t forget to come back if you need some help!')
npcHandler:setMessage(MESSAGE_WALKAWAY, 'Good bye then.')
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)

npcHandler:addModule(FocusModule:new())
