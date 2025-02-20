function onThink(creature, interval)
    local master = creature:getMaster()
    if not master then return true end

    local pos = creature:getPosition()
    local master_pos = master:getPosition()
    if getDistanceBetween(pos, master_pos) > 7 or master_pos.z ~= pos.z then
        if creature:teleportTo(master_pos) then
            pos:sendMagicEffect(CONST_ME_POFF)
        end
    end
    return true
end