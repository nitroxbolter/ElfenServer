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
    if msgcontains(msg, "help") then
        npcHandler:say("My cousin, creates weapons and he often needs feathers that I myself go to get from the angry parrots, if you bring me {feathers} I will see how to reward you...", cid)
    elseif msgcontains(msg, "feathers") then
        npcHandler:say("So i can reward you with a new Familiar called Black Dracadet, it's a small dragon with death abilities. What kind of Black Dracadet you want ? {Normal} Black Dracadet, {First} Evolution Black Dracadet or {Last} Evolution Black Dracadet ?", cid)
    elseif msgcontains(msg, "normal") then
        local feathers = 29333
        if player:getItemCount(feathers) >= 50 then
            player:removeItem(feathers, 50)
            player:addItem(29334, 1)
            npcHandler:say("Thank you! Here is the Black Dracadet, it will help you a lot, to summon or choose this new familiar use: !choosefamiliar.", cid)
        else
            npcHandler:say("Ok then, collect 50 feathers and bring them to me when you get it.", cid)
            npcHandler:releaseFocus(cid)
        end
    elseif msgcontains(msg, "first") then
        local feathers = 29333
        if player:getItemCount(feathers) >= 150 then
            player:removeItem(feathers, 150)
            player:addItem(29335, 1)
            npcHandler:say("Thank you! Here is the Black Dracadet [2], it will help you a lot, to summon or choose this new familiar use: !choosefamiliar.", cid)
        else
            npcHandler:say("Ok then, collect 150 feathers and bring them to me when you get it.", cid)
            npcHandler:releaseFocus(cid)
        end
    elseif msgcontains(msg, "last") then
        local feathers = 29333
        if player:getItemCount(feathers) >= 300 then
            player:removeItem(feathers, 300)
            player:addItem(29336, 1)
            npcHandler:say("Thank you! Here is the Black Dracadet [3], it will help you a lot, to summon or choose this new familiar use: !choosefamiliar.", cid)
        else
            npcHandler:say("Ok then, collect 300 feathers and bring them to me when you get it.", cid)
            npcHandler:releaseFocus(cid)
        end
    end
    return true
end


npcHandler:setMessage(MESSAGE_GREET, 'Hello |PLAYERNAME|, how we can {help} you?!')
npcHandler:setMessage(MESSAGE_FAREWELL, 'Don\'t forget to come back if you need some help!')
npcHandler:setMessage(MESSAGE_WALKAWAY, 'Good bye then.')
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)

npcHandler:addModule(FocusModule:new())
