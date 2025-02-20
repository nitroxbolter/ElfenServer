function onEquip(player, item, slot, isCheck)
    if isCheck then
        return true
    end

    player:addSpecialSkill(SPECIALSKILL_CRITICALHITCHANCE, 0)
    player:addSpecialSkill(SPECIALSKILL_CRITICALHITAMOUNT, 0)
    return true
end

function onDeEquip(player, item, slot)
    player:addSpecialSkill(SPECIALSKILL_CRITICALHITCHANCE, -0)
    player:addSpecialSkill(SPECIALSKILL_CRITICALHITAMOUNT, -0)
return true
end


