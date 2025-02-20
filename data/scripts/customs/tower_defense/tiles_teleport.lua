local tiles = MoveEvent()

function tiles.onStepIn(player, item, position, fromPosition)
    player:teleportTo(fromPosition)
end

tiles:type("stepin")
tiles:aid(25487)
tiles:register()

