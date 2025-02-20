local craftEscutcheon = Action()

function craftEscutcheon.onUse(player, item, fromPosition, target, toPosition, isHotkey)
    if item:getId() == 27202 and target:getId() == 8671 then
        if player:removeItem(27202, 1) and player:removeItem(27190, 1) then
            player:addItem(27203, 1)
			player:say("You crafted the Falcon Escutcheon", TALKTYPE_MONSTER_SAY)
        else
            player:sendTextMessage(MESSAGE_INFO_DESCR, "You need One Falcon Shield, One Patch of Fine Cloth, and One Grant of Arms in order to craft Falcon Escutcheon.")
        end
    else
        player:sendTextMessage(MESSAGE_INFO_DESCR, "You need One Falcon Shield, One Patch of Fine Cloth, and One Grant of Arms in order to craft Falcon Escutcheon.")
    end
end

craftEscutcheon:id(27202)
craftEscutcheon:register()
