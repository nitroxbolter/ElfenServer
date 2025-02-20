local config = {
    actionId = 32148,
    delay = 60 * 10, -- 10 min
    delayPersistent = false,
    bosses = {
        { name = "bone berserker", pos = Position(31760, 32252, 8) },
        { name = "bone archer", pos = Position(31768, 32249, 8) },
        { name = "bone mage", pos = Position(31767, 32247, 8) },
        { name = "bone slicer", pos = Position(31757, 32253, 8) },
        { name = "bone master", pos = Position(31758, 32252, 8) }
    }
}

local movInSecond = MoveEvent()

function movInSecond.onStepIn(creature, item, position, fromPosition)
    local player = creature:getPlayer()
    if not player then
        return true
    end
    local playerId = player:getId()
    local ground = Tile(position):getGround()
    if ground then
        local now = os.time()
        local delay = config.delayPersistent and ground:getCustomAttribute("delay") or config.time
        if not delay or delay <= now then
            position:sendMagicEffect(CONST_ME_MAGIC_BLUE)
            for _, info in pairs(config.bosses) do
                Game.createMonster(info.name, info.pos)
            end
            if not config.delayPersistent then
                config.time = now + config.delay
            else
                ground:setCustomAttribute("delay", now + config.delay)
            end
        else
        end
    end
    return true
end

movInSecond:aid(config.actionId)
movInSecond:register()