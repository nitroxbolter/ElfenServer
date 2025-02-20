local outfits = {
    [1] = {name = "Corrupted Priest", male = 1194, female = 1199},
    [2] = {name = "Corrupted Archer", male = 1195, female = 1200},
    [3] = {name = "Corrupted Axe", male = 1196, female = 1202},
    [4] = {name = "Corrupted Club", male = 1197, female = 1203},
    [5] = {name = "Corrupted Sword", male = 1198, female = 1204},
    [6] = {name = "Corrupted Mage", male = 1224, female = 1201},
    
    }
       
function onModalWindow(player, modalWindowId, buttonId, choiceId)
    player:unregisterEvent("corruptedOutfit")
       
    if modalWindowId == 1000 then
        if buttonId == 100 then
                        if player:getItemCount(28055) == 0 then
                                player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You must have the corrupted outfit on the backpack!")
                                return false
                        end
            if choiceId == 0 then
                return false
            end
            player:removeItem(28055, 1)
            if player:getSex() == 0 then
                    player:addOutfitAddon(outfits[choiceId].female)
                else
                    player:addOutfitAddon(outfits[choiceId].male)
            end
            playSound(player, "prize.ogg")
            player:getPosition():sendMagicEffect(CONST_ME_FIREWORK_YELLOW)
        end
    end
end