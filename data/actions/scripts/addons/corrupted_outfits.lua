local outfits = {
        [1] = {name = "Corrupted Priest", male = 1194, female = 1199},
        [2] = {name = "Corrupted Archer", male = 1195, female = 1200},
        [3] = {name = "Corrupted Axe", male = 1196, female = 1202},
        [4] = {name = "Corrupted Club", male = 1197, female = 1203},
        [5] = {name = "Corrupted Sword", male = 1198, female = 1204},
        [6] = {name = "Corrupted Mage", male = 1224, female = 1201},

    }
 
function onUse(player, item, fromPosition, itemEx, toPosition, isHotkey)
    player:registerEvent("corruptedOutfit")
 
    local title = "Choose your outfit!"
    local message = "You will receive the outfit, for the addon see with estherya!"
 
    local window = ModalWindow(1000, title, message)
        if player:getItemCount(28055) >= 1 then
                window:addButton(100, "Confirm")
                window:setDefaultEnterButton(100)
        else
                window:setDefaultEnterButton(101)
end
    window:addButton(101, "Cancel")
    window:setDefaultEscapeButton(101)
   
    for i = 1, #outfits do
        local o = outfits[i].name
        if not player:hasOutfit(outfits[i].male) and not player:hasOutfit(outfits[i].female) then
            window:addChoice(i, o)
            playSound(player, "open_chest.ogg")
        end
    end
       
        if window:getChoiceCount() == 0 then
        window:setMessage("YOU HAVE ALL OUTFITS, THEN CLICK CANCEL!")
    end
    window:sendToPlayer(player)
    return true
end