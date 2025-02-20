local pagesOfBook = Action()

function pagesOfBook.onUse(player, item, fromPosition, target, toPosition, isHotkey)
    if not player then return end
    local pagesBook = player:getStorageValue(Expeditions.PagesOfBook)
    local cooldown = player:getStorageValue(Expeditions.PagesOfBookCooldown)
    if player:getStorageValue(Expeditions.PagesOfBookCheck) == 1 then
        if player:getStorageValue(Expeditions.PagesOfBook) >= 1 then
        if cooldown < os.time() then
            if player:getItemCount(29367) < 15 then
            local chance = math.random(1,8)
            local randomMonsters = {
                "Icecold Book",
                "Burning Book",
                "Energetic Book",
                "Cursed Book"
            }
            if chance < 4 then
                local numberOfMonsters = math.random(1, 2)
                player:setNoMove(true)
                
                addEvent(function()
                    player:setNoMove(false)
                    for i = 1, numberOfMonsters do
                        local monsterName = randomMonsters[math.random(1, #randomMonsters)]
                        Game.createMonster(monsterName, toPosition)
                    end
                    
                    SendMagicEffect(toPosition, 351)
                    player:addItem(29367, 1)
                    player:setStorageValue(Expeditions.PagesOfBook, pagesBook + 1)
                    player:setStorageValue(Expeditions.PagesOfBookCooldown, os.time() + 20)
                end, 2300)
                
                SendMagicEffect(player:getPosition(), 176)
            else
                player:setNoMove(true)
                addEvent(function()
                    player:setNoMove(false)
                    local monsterName = randomMonsters[math.random(1, #randomMonsters)]
                    local monster = Game.createMonster(monsterName, toPosition)
                    
                    if monster then
                    SendMagicEffect(toPosition, 351)
                    player:setStorageValue(Expeditions.PagesOfBook, pagesBook + 1)
                    player:setStorageValue(Expeditions.PagesOfBookCooldown, os.time() + 20)
                    end
                end, 2300)
                SendMagicEffect(player:getPosition(), 176)
            end
        else
            player:sendTextMessage(MESSAGE_INFO_DESCR, "You have 15 Dorn Book Pages, go back to Aurostor to Complete the Expedition.")
        end
    else
        player:say("You can search in bookcase again in " .. (cooldown - os.time()) .. " seconds.", TALKTYPE_MONSTER_SAY)
    end
    else
        return true
    end
else
    return true
end
return true
end

pagesOfBook:aid(42391)
pagesOfBook:register()