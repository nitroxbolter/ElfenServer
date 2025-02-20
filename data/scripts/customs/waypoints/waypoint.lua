
print(">> Waypoint System Loaded")

local waypointList = {
    [1] = {
        name = "Venore", 
        actionId = 7000,
        position = Position(32954, 32074, 7),
        requireQuest = {check = false, storage = 0, value = 0},
        cost = {check = false, itemId = 0, amount = 0}
    },
    [2] = {
        name = "Thais",
        actionId = 7001,
        position = Position(32372, 32233, 7),
        requireQuest = {check = false, storage = 0, value = 0},
        cost = {check = false, itemId = 0, amount = 0}
    },
    [3] = {
        name = "Kazoordon",
        actionId = 7002,
        position = Position(32654, 31923, 11),
        requireQuest = {check = false, storage = 0, value = 0},
        cost = {check = false, itemId = 0, amount = 0}
    },
    [4] = {
        name = "Carlin",
        actionId = 7003,
        position = Position(32358, 31783, 7),
        requireQuest = {check = false, storage = 0, value = 0},
        cost = {check = false, itemId = 0, amount = 0}
    },
    [5] = {
        name = "Ab'dendriel",
        actionId = 7004,
        position = Position(32715, 31631, 7),
        requireQuest = {check = false, storage = 0, value = 0},
        cost = {check = false, itemId = 0, amount = 0}
    },
    [6] = {
        name = "Rookgaard",
        actionId = 7005,
        position = Position(32096, 32219, 6),
        requireQuest = {check = false, storage = 0, value = 0},
        cost = {check = false, itemId = 0, amount = 0}
    },
    [7] = {
        name = "Liberty Bay",
        actionId = 7006,
        position = Position(32319, 32824, 7),
        requireQuest = {check = false, storage = 0, value = 0},
        cost = {check = false, itemId = 0, amount = 0}
    },
    [8] = {
        name = "Port Hope",
        actionId = 7007,
        position = Position(32591, 32746, 7),
        requireQuest = {check = false, storage = 0, value = 0},
        cost = {check = false, itemId = 0, amount = 0}
    },
    [9] = {
        name = "Ankrahmun",
        actionId = 7008,
        position = Position(33197, 32846, 8),
        requireQuest = {check = false, storage = 0, value = 0},
        cost = {check = false, itemId = 0, amount = 0}
    },
    [10] = {
        name = "Darashia",
        actionId = 7009,
        position = Position(33211, 32451, 1),
        requireQuest = {check = false, storage = 0, value = 0},
        cost = {check = false, itemId = 0, amount = 0}
    },
    [11] = {
        name = "Edron",
        actionId = 7010,
        position = Position(33216, 31816, 8),
        requireQuest = {check = false, storage = 0, value = 0},
        cost = {check = false, itemId = 0, amount = 0}
    },
    [12] = {
        name = "Svargrond",
        actionId = 7011,
        position = Position(32214, 31131, 7),
        requireQuest = {check = false, storage = 0, value = 0},
        cost = {check = false, itemId = 0, amount = 0}
    },
    [13] = {
        name = "Yalahar",
        actionId = 7012,
        position = Position(32788, 31265, 7),
        requireQuest = {check = false, storage = 0, value = 0},
        cost = {check = false, itemId = 0, amount = 0}
    },
    [14] = {
        name = "Farmine",
        actionId = 7013,
        position = Position(33028, 31522, 11),
        requireQuest = {check = false, storage = 0, value = 0},
        cost = {check = false, itemId = 0, amount = 0}
    },
    [15] = {
        name = "Gray Beach",
        actionId = 7014,
        position = Position(33449, 31322, 9),
        requireQuest = {check = false, storage = 0, value = 0},
        cost = {check = false, itemId = 0, amount = 0}
    },
    [16] = {
        name = "Roshamuul",
        actionId = 7015,
        position = Position(33519, 32367, 7),
        requireQuest = {check = false, storage = 0, value = 0},
        cost = {check = false, itemId = 0, amount = 0}
    },
    [17] = {
        name = "Rathleton",
        actionId = 7016,
        position = Position(33597, 31893, 6),
        requireQuest = {check = false, storage = 0, value = 0},
        cost = {check = false, itemId = 0, amount = 0}
    },
    [18] = {
        name = "Krailos",
        actionId = 7017,
        position = Position(33656, 31663, 8),
        requireQuest = {check = false, storage = 0, value = 0},
        cost = {check = false, itemId = 0, amount = 0}
    },
}

local cooldowns = {}

local waypoints = MoveEvent()
function waypoints.onStepIn(player,item,position,fromPosition)
    if not player:isPlayer() then
        return false
    end
        if cooldowns[player:getName()] ~= nil then
            if cooldowns[player:getName()] > os.time() - 2 then
            player:sendTextMessage(MESSAGE_INFO_DESCR, "You need to wait ".. cooldowns[player:getName()] - (os.time() - 2) .."seconds before traveling again.")
                    return false
            end
        end

        local unlockedWaypoints = 0

        for i = 1, #waypointList do
            if player:getStorageValue(waypointList[i].actionId) == 1 then
                unlockedWaypoints = unlockedWaypoints + 1
            end
        end
    
        if unlockedWaypoints == 1 then
            player:sendTextMessage(MESSAGE_INFO_DESCR, "You need to unlock another waypoint in order to use waypoints.")
        end
    local waypoint = false

    for i=1,#waypointList do
        if waypointList[i].actionId == item.actionid then
            waypoint = waypointList[i]
        end
    end

    if waypoint then
        if waypoint.requireQuest.Check then
            if player:getStorageValue(waypoint.requireQuest.storage) < waypoint.requireQuest.value then
                player:teleportTo(fromPosition)
                player:sendTextMessage(MESSAGE_INFO_DESCR, "You have not completed the prerequisite Quest, to unlock waypoint to ".. waypoint.name ..".")
                return false
            end
        end
        if player:getStorageValue(waypoint.actionId) ~= 1 then
            player:setStorageValue(waypoint.actionId,1)
            player:sendTextMessage(MESSAGE_INFO_DESCR, "You have unlocked waypoint to ".. waypoint.name ..".")
            return true
        end

        player:registerEvent("revWaypoints")
        local window = ModalWindow(5000, "Waypoints", "Waypoint: " .. waypoint.name .. "\n")

        local unlockedWps = 0

        for i=1,#waypointList do
            if player:getStorageValue(waypointList[i].actionId) == 1 then
                if waypointList[i].actionId ~= item.actionid then
                    unlockedWps = unlockedWps+1
                    window:addChoice(i, waypointList[i].name)
                end
            end
        end

        window:addButton(110,"Select")
        window:addButton(111,"Cancel")
        window:setDefaultEnterButton(110)
        window:setDefaultEscapeButton(111)
        if unlockedWps ~= 0 then
            window:sendToPlayer(player)
        end
      
        return true
    end
end

for j=1,#waypointList do
    waypoints:aid(waypointList[j].actionId)
end

waypoints:type("stepin")
waypoints:register()

local wpWindow = CreatureEvent("revWaypoints")
wpWindow:type("modalwindow")

function wpWindow.onModalWindow(player,modalWindowId,buttonId,choiceId)
    if modalWindowId == 5000 then
        if buttonId == 110 then
            local travel = true
            if waypointList[choiceId].cost.check then
                        if not player:removeItem(waypointList[choiceId].cost.itemId,waypointList[choiceId].cost.amount) then
                                    travel = false
                        end
            end
            if travel then
                cooldowns[player:getName()] = os.time()
                player:unregisterEvent("revWaypoints")
                player:teleportTo(waypointList[choiceId].position)
                playSound(player, "waypoint.ogg")
                player:getPosition():sendMagicEffect(15)
            else
                player:sendTextMessage(MESSAGE_INFO_DESCR, "You cant afford to travel to ".. waypointList[choiceId].name ..".")
            end
          
            return true
        end
    end
end

wpWindow:register()