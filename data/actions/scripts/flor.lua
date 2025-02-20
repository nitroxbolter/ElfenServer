
function onUse(cid, item, fromPosition, itemEx, toPosition)
local tilepos1 = {x=32024, y=32830, z=4} --32024, 32830, 4
if(getPlayerStorageValue(cid, 53051) < 1) then

PlayerRemoveItem(cid, 4869, 1)
doPlayerAddItem(cid, 5937, 1)
PlayerSetStorageValue(cid, 53051, 1)
SendMagicEffect(tilepos1,45)
	doCreatureSay(cid, "You succesfully took a sample of the rare griffinclaw flower.", TALKTYPE_ORANGE_1)
	else 

	SendMagicEffect(p,10)	
	doCreatureSay(cid, "You already took a sample of the rare griffinclaw flower.", TALKTYPE_ORANGE_1)
return true
end

end