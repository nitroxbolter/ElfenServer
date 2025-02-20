function onCastSpell(creature, variant)
    local position = creature:getPosition()
    position:sendMagicEffect(CONST_ME_POFF)

    local tile = Tile(position)
    if not tile then
        creature:sendCancelMessage(RETURNVALUE_NOTPOSSIBLE)
        return false
    end

    local ground = tile:getGround()
    if not ground or (not table.contains(ropeSpots, ground:getId()) and not tile:getItemById(14435)) then
        creature:sendCancelMessage(RETURNVALUE_NOTPOSSIBLE)
        return false
    end

    local upstairsPosition = position:moveUpstairs()
    local upstairsTile = Tile(upstairsPosition)
    if not upstairsTile then
        creature:sendCancelMessage(RETURNVALUE_NOTENOUGHROOM)
        return false
    end
    playSound(creature, "magic_rope.ogg")
    creature:teleportTo(upstairsPosition, false)
    upstairsPosition:sendMagicEffect(CONST_ME_TELEPORT)
    return true
end
