local azurePortals = {
    [1] = {
        city = "Thais",
        mapName = "portal_thais",
        exitPosition = Position(32362, 32138, 7)
    },
    [2] = {
        city = "Roshamuul",
        mapName = "portal_roshamuul",
        exitPosition = Position(33638, 32322, 7)
    },
    [3] = {
        city = "Darashia",
        mapName = "portal_darashia",
        exitPosition = Position(33129, 32411, 7)
    },
    [4] = {
        city = "Svargrond",
        mapName = "portal_svargrond",
        exitPosition = Position(32182, 31187, 7)
    },
}

local currentPortal = nil

local azurePortal = GlobalEvent("azurePortals")

function azurePortal.onStartup(interval)
    local gateId = math.random(1, 4)
    currentPortal = azurePortals[gateId]
    Game.loadMap('data/world/portals/' .. currentPortal.mapName .. '.otbm')

    print(string.format("Azure Portal will be active in %s today.", currentPortal.city))

    Game.setStorageValue(30048, gateId)

    return true
end

azurePortal:register()

local teleport = MoveEvent()

function teleport.onStepIn(creature, item, position, fromPosition)
    local player = creature:getPlayer()
    if not player then
        return true
    end

    local gateId = Game.getStorageValue(30048)

    if not azurePortals[gateId] then
        return true
    end

    position:sendMagicEffect(CONST_ME_TELEPORT)

    if item.actionid == 22710 then
        local destination = Position(31804, 31888, 8)
        player:teleportTo(destination)
        destination:sendMagicEffect(CONST_ME_TELEPORT)
    elseif item.actionid == 22715 then
        player:teleportTo(azurePortals[gateId].exitPosition)
        azurePortals[gateId].exitPosition:sendMagicEffect(CONST_ME_TELEPORT)
    end

    return true
end

teleport:type("StepIn")
teleport:aid(22710, 22715)
teleport:register()
