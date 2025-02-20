function onUse(cid, item, fromPosition, itemEx, toPosition)
local p = {x = 32412, y = 31066, z = 7} -- 32412, 31066, 7
if(getPlayerStorageValue(cid, 10050) < 100) then
	doTeleportThing(cid,p)
	--PlayerSetStorageValue(cid, 10050, 18)
	SendMagicEffect(p,10)
	--else doCreatureSay(cid, "You already used the sign, go to north and use the teleport to go back.", TALKTYPE_ORANGE_1)
return true
end

end