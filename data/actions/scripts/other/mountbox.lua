 function onUse(cid, item, fromPosition, itemEx, toPosition) 
    local mountid = math.random(43,103) -- you have to change 32 for your highest mount id 
    PlayerAddMount(cid, mountid) --add the mount 
    SendMagicEffect(getCreaturePosition(cid), CONST_ME_FIREWORK_RED) --effect on player 
    doRemoveItem(item.uid, 1) -- remove the item 
    return TRUE 
end 