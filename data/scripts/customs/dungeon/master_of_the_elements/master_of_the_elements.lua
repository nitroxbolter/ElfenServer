local masterOfTheElements = MoveEvent()

local bossName = "Master of the Elements"
local bossInterval = 3
local function createBoss()

    addEvent(function()
        Game.createMonster(bossName, {x = 31716, y = 32563, z = 8})
    end, bossInterval * 1000)
end

function masterOfTheElements.onStepIn(player, item, position, fromPosition)
    if player:getStorageValue(248500) < 0 then
    createBoss()
    player:setStorageValue(248500, os.time() + 1500)
    else
        return true 
    end
end

masterOfTheElements:aid(63457)
masterOfTheElements:type("StepIn")
masterOfTheElements:register()
