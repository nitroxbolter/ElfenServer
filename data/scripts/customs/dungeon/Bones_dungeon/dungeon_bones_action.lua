local skullBone = Action()

local cfg = {
    teleportPos = {x = 31728, y = 32244, z = 8, stackpos = 1},
    teleportToPos = {x = 31824, y = 32180, z = 8},
    min = 1
 }

 local function removeMagicForcefield(position)
    Tile({x = 31728, y = 32244, z = 8}):getItemById(1387):remove()
 end

 
function skullBone.onUse(player, item, fromPosition, target, toPosition, isHotkey)
    if item.itemid == 26693 and target.itemid == 26654 then
        target:transform(26655)
        target:decay()
    elseif item.itemid == 26693 and target.itemid == 26655 then
            doCreateTeleport(1387, cfg.teleportToPos, cfg.teleportPos)
            addEvent(removeMagicForcefield, cfg.min * 10 * 1000, getThingfromPos({cfg.teleportPos}).uid, 1)
        target:transform(26656)
        item:remove(1)
        target:decay()
    end
end

skullBone:id(26693)
skullBone:register()
