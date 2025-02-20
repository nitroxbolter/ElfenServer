local frostholdCrystal = Action()

function frostholdCrystal.onUse(player, item, fromPosition, target, toPosition, isHotkey)
    if not player then return end
    if target:getId() == 29345 then
    local frostHoldCrystals = player:getStorageValue(Expeditions.FrostHoldCrystal)
    if player:getStorageValue(Expeditions.FrostHoldCrystalCheck) == 1 then
        player:setNoMove(true)
            addEvent(function()
                player:setNoMove(false)
                player:say("You find a frosthold crystal stone.", TALKTYPE_MONSTER_SAY)
                player:setStorageValue(Expeditions.FrostHoldCrystal, frostHoldCrystals + 1)
                player:addItem(29347, 1)
                target:transform(29346)
          end, 2300)
        SendMagicEffect(toPosition, 177)  
        SendMagicEffect(player:getPosition(), 176) 
    else
        player:say("You need start the expedition with Kiatke.", TALKTYPE_MONSTER_SAY)
        return true
    end
else
    player:say("You can only use it on the frosthold crystals.", TALKTYPE_MONSTER_SAY)
    return true
end
end

frostholdCrystal:id(29348)
frostholdCrystal:register()