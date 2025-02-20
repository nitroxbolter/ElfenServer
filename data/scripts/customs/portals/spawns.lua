local config = {
    fromPos = Position(31872, 31733, 13),
    toPos = Position(31886, 31745, 13),  
    spawnInterval = 45000,
    spawnDuration = 30000, 
    damageAmount = 1000, 
}

local spawnedMonsters = {}

local function spawnDemonsAndOrshabaals()
    local demonPos = Position(math.random(config.fromPos.x, config.toPos.x), math.random(config.fromPos.y, config.toPos.y), config.fromPos.z)
    local orshabaalPos = Position(math.random(config.fromPos.x, config.toPos.x), math.random(config.fromPos.y, config.toPos.y), config.fromPos.z)

    local demon = Game.createMonster("Azure Guard", demonPos)
    local orshabaal = Game.createMonster("Azure Guard", orshabaalPos)

    table.insert(spawnedMonsters, demon)
    table.insert(spawnedMonsters, orshabaal)

    addEvent(function ()
        for _, monster in pairs(spawnedMonsters) do
            if monster and monster:isCreature() then
                monster:remove()
            end
        end

        spawnedMonsters = {} 

        local players = Game.getSpectators(config.fromPos, false, false, config.toPos.x - config.fromPos.x, config.toPos.y - config.fromPos.y, config.toPos.z - config.fromPos.z, config.toPos.z - config.fromPos.z)
        for _, player in pairs(players) do
            if player:isPlayer() then
                player:addHealth("lifedrain",-config.damageAmount)
                player:getPosition():sendMagicEffect(CONST_ME_MAGIC_RED)
            end
        end
    end, config.spawnDuration)
end


local function getSpectators()
    if not config.centerPosition then
        config.diffX = math.ceil((config.toPos.x - config.fromPos.x) / 2)
        config.diffY = math.ceil((config.toPos.y - config.fromPos.y) / 2)
        config.centerPosition = config.fromPos + Position(config.diffX, config.diffY, 0)
    end
    return Game.getSpectators(config.centerPosition, false, false, config.diffX, config.diffX, config.diffY, config.diffY)
end

local azureSpawn = GlobalEvent("azureSpawns")

function azureSpawn.onThink(interval)

    local azurePresent = false
    local creatures = getSpectators()

    for _, creature in pairs(creatures) do
        local creatureName = creature:getName():lower()
        if creatureName == 'azure' or creatureName == 'Azure' then
            azurePresent = true
            break
        end
    end

    if azurePresent then
        spawnDemonsAndOrshabaals()
    end

    return true
end

azureSpawn:interval(config.spawnInterval)
azureSpawn:register()
