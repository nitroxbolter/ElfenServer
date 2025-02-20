local repairGenerator = Action()

function repairGenerator.onUse(player, item, fromPosition, target, toPosition, isHotkey)
    if not player then return end
    local brokenGenerator = player:getStorageValue(Expeditions.BrokenGenerators)
    local cooldown = player:getStorageValue(Expeditions.BrokenGeneratorsCooldown)
    if player:getStorageValue(Expeditions.BrokenGeneratorsCheck) == 1 then
        if cooldown < os.time() then
            if player:getStorageValue(Expeditions.BrokenGenerators) < 15 then
                player:setNoMove(true)
                addEvent(function()
                    player:setNoMove(false)
                    SendMagicEffect(toPosition, 347)
                    player:setStorageValue(Expeditions.BrokenGenerators, brokenGenerator + 1)
                    player:setStorageValue(Expeditions.BrokenGeneratorsCooldown, os.time() + 45)
                    item:transform(23082)
                    item:decay()
                end, 2300)
                SendMagicEffect(player:getPosition(), 176)
            end
        else
            player:say("You can repair the generator again in " .. (cooldown - os.time()) .. " seconds.", TALKTYPE_MONSTER_SAY)
        end
    else
        player:sendTextMessage(MESSAGE_INFO_DESCR, "You have repaired 15 broken generator's, go back to Caesper.")
    end
return true
end

repairGenerator:aid(42394)
repairGenerator:register()