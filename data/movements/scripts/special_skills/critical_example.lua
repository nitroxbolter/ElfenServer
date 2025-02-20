function onEquip(player, item, slot, isCheck)
    if isCheck then
        return true
    end

    player:addSpecialSkill(SPECIALSKILL_CRITICALHITCHANCE, 2)
    player:addSpecialSkill(SPECIALSKILL_CRITICALHITAMOUNT, 1)
    return true
end

function onDeEquip(player, item, slot)
    player:addSpecialSkill(SPECIALSKILL_CRITICALHITCHANCE, -2)
    player:addSpecialSkill(SPECIALSKILL_CRITICALHITAMOUNT, -1)
return true
end


--- How To Register: 
--- On movements.xml add script="special_skills/name of file you created with custom value",  onEquip, and also add the script on deEquip.
--- Reset Server and voila. 
--- NEW:
--- If you want show critical and damage, add attribute on items.xml = criticalhitchance and criticalhitamount, BUT, the script onEquip and onDeEquip leave it as 0, 0 and -0, -0, or it will double the crit.