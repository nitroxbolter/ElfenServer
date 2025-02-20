local lostObjects = Action()

function lostObjects.onUse(player, item, fromPosition, target, toPosition, isHotkey)
    if not player then return end
    local lostObjects = player:getStorageValue(Expeditions.LostObjects)
    local cooldown = player:getStorageValue(Expeditions.LostObjectsCooldown)
    if player:getStorageValue(Expeditions.LostObjectsCheck) == 1 then
        if cooldown < os.time() then
            if player:getStorageValue(Expeditions.FindAncientGlyphs) < 20 then
                player:setNoMove(true)
                addEvent(function()
                    player:setNoMove(false)
                    SendMagicEffect(toPosition, 351)
                    player:setStorageValue(Expeditions.LostObjects, lostObjects + 1)
                    player:setStorageValue(Expeditions.LostObjectsCooldown, os.time() + 45)
                end, 2300)
                SendMagicEffect(player:getPosition(), 176)
        else
            player:sendTextMessage(MESSAGE_INFO_DESCR, "You have finded 20 lost objects, go back to Myrianus.")
        end
    else
        player:say("You can find another lost object in " .. (cooldown - os.time()) .. " seconds.", TALKTYPE_MONSTER_SAY)
    end
    else
        return true
end
return true
end

lostObjects:aid(42396)
lostObjects:register()