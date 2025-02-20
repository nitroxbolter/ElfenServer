local findGlyphs = Action()

function findGlyphs.onUse(player, item, fromPosition, target, toPosition, isHotkey)
    if not player then return end
    local ancientGlyphs = player:getStorageValue(Expeditions.FindAncientGlyphs)
    local cooldown = player:getStorageValue(Expeditions.FindAncientGlyphsCooldown)
    if player:getStorageValue(Expeditions.FindAncientGlyphsCheck) == 1 then
        if cooldown < os.time() then
            if player:getStorageValue(Expeditions.FindAncientGlyphs) < 10 then
                player:setNoMove(true)
                addEvent(function()
                    player:setNoMove(false)
                    SendMagicEffect(toPosition, 351)
                    player:setStorageValue(Expeditions.FindAncientGlyphs, ancientGlyphs + 1)
                    player:setStorageValue(Expeditions.FindAncientGlyphsCooldown, os.time() + 45)
                end, 2300)
                SendMagicEffect(player:getPosition(), 176)
        else
            player:sendTextMessage(MESSAGE_INFO_DESCR, "You have decrypted 10 glyphs, go back to Ryfus.")
        end
    else
        player:say("You can decrypt a new glyph in " .. (cooldown - os.time()) .. " seconds.", TALKTYPE_MONSTER_SAY)
    end
    else
        return true
end
return true
end

findGlyphs:aid(42395)
findGlyphs:register()