function onUse(cid, item, fromPosition, itemEx, toPosition)
-- player:setStorageValue(Storage.TheNewFrontier.Questline, 25)
if (getPlayerStorageValue(cid, Storage.TheNewFrontier.Questline) < 26) then
PlayerAddOutfit(cid, 335, 0) 
PlayerAddOutfit(cid, 336, 0)
PlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "You have gained your new outfit and my leave the reward room now!")
--player:setStorageValue(Storage.TheNewFrontier.Questline, 26)
PlayerSetStorageValue(cid, Storage.TheNewFrontier.Questline, 26)
else PlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "You already take the outfit, ask about mission for Chrak.")
end
return TRUE
end