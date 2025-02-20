--- Core Defense
--- Author Alexv45
--- Version 1.0

print(">> Tower Defense System Loaded")

local path = {
    {dir = EAST, steps = 14},
    {dir = SOUTH, steps = 8},
    {dir = EAST, steps = 8},
    {dir = SOUTH, steps = 5},
    {dir = WEST, steps = 17},
    {dir = SOUTH, steps = 8},
    {dir = EAST, steps = 23},
    {dir = NORTH, steps = 7},
    {dir = EAST, steps = 7},
    {dir = NORTH, steps = 9},
    {dir = WEST, steps = 9},
    {dir = NORTH, steps = 4},
    {dir = EAST, steps = 17},
    {dir = SOUTH, steps = 15},
    {dir = WEST, steps = 5},
    {dir = SOUTH, steps = 3},
    {dir = WEST, steps = 5},
    {dir = SOUTH, steps = 4},
    {dir = EAST, steps = 12},
}

local currentItemId
local currentWave = 0
local totalWaves = 1  
local activeMonsters = 0
local spawnedMonsters = {}
local spawnMonster
local spawningWave = false
local baseMonster = nil
local stopSpawning = false


local monsterTable = {
    [27931] = {names = {"zephyrius", "nycthariel", "infernalax", "tenebrosus", "empyrion"}, spawns = {50, 40, 30, 15, 1}},
}

local fromPos = {x = 31180, y = 32239, z = 8}
local toPos = {x = 31236, y = 32277, z = 8}

local function removeCreaturesInRange(fromPos, toPos)
    for x = fromPos.x, toPos.x do
        for y = fromPos.y, toPos.y do
            local pos = {x = x, y = y, z = fromPos.z}
            local creature = getTopCreature(pos).uid
            if creature ~= 0 and isMonster(creature) then
                doRemoveCreature(creature)
            end
        end
    end
end

local function trackSpawnedMonsters(wave, itemId, monsterType)
    if not spawnedMonsters[wave] then
        spawnedMonsters[wave] = {}
        for i = 1, #monsterTable[itemId].names do
            spawnedMonsters[wave][i] = 0
        end
    end

    local monsterIndex
    for i, name in ipairs(monsterTable[itemId].names) do
        if name == monsterType then
            monsterIndex = i
            spawnedMonsters[wave][i] = spawnedMonsters[wave][i] + 1
            break  
        end
    end
end


local function rewardPlayers()
    local rewardItemId1 = 28372
    local rewardAmount1 = 5

    for x = fromPos.x, toPos.x do
        for y = fromPos.y, toPos.y do
            local pos = {x = x, y = y, z = fromPos.z}
            local player = getTopCreature(pos).uid
            if player ~= 0 and isPlayer(player) then
                if PlayerGetStorageValue(player, 86705) == 1 then
                    PlayerSendTextMessage(player, MESSAGE_INFO_DESCR, "You have already been rewarded for completing the tower defense!")
                else
                PlayerSetStorageValue(player, 88708, 1)
                doPlayerAddItem(player, rewardItemId1, rewardAmount1)
                PlayerSendTextMessage(player, MESSAGE_INFO_DESCR, "You have been rewarded of 5 Crystal Tokens for completing the Tower Defense!")
                spawningWave = false
                stopSpawning = true
                removeCreaturesInRange(fromPos, toPos)
                PlayerSetStorageValue(player, 86704, 0)
                PlayerSetStorageValue(player, 86705, 0)
                PlayerSetStorageValue(player, 86706, 0)
                PlayerSetStorageValue(player, 86707, 0)
                PlayerSetStorageValue(player, 86708, 0)
                PlayerSetStorageValue(player, 86709, 0)
                PlayerSetStorageValue(player, 86710, 0)
                PlayerSetStorageValue(player, 86711, 0)
                PlayerSetStorageValue(player, 86712, 0)
                PlayerSetStorageValue(player, 86713, 0)
                PlayerSetStorageValue(player, 86714, 0)
                PlayerSetStorageValue(player, 86715, 0)
                PlayerSetStorageValue(player, 86705, 1)
                end
            end
        end
    end
    removeCreaturesInRange(fromPos, toPos)
end

local function allMonstersSpawned(wave, expectedSpawnCount)
    local totalSpawned = 0

    if spawnedMonsters[wave] then
        for _, count in pairs(spawnedMonsters[wave]) do
            if type(count) == "number" then
                totalSpawned = totalSpawned + count
            end
        end
    end

    if totalSpawned == expectedSpawnCount then
        return true
    else
        return false
    end
end

local function calculateExpectedSpawnCount(itemId)
    local expectedSpawnCount = 0

    if monsterTable[itemId] then
        local spawns = monsterTable[itemId].spawns


        for _, count in ipairs(spawns) do
            expectedSpawnCount = expectedSpawnCount + count
        end

    else
       return
    end

    return expectedSpawnCount
end


local function countRemainingMonstersInRange(fromPos, toPos)
    local excludedMonsters = {
        ["Base Core"] = true
    }

    local count = 0

    for x = fromPos.x, toPos.x do
        for y = fromPos.y, toPos.y do
            local pos = {x = x, y = y, z = fromPos.z}
            local topCreature = getTopCreature(pos)
            local creature = topCreature.uid
            
            if creature ~= 0 and isMonster(creature) then
                local monsterName = getCreatureName(creature)
                local isSummon = isSummon(creature)
                
                if not excludedMonsters[monsterName] and not isSummon then
                    count = count + 1
                end
            end
        end
    end
    return count
end

local function checkFinalBossStatus()
    local cooldownEntrance = 184320
    
    if currentWave >= totalWaves then
        return
    end
    

    if allMonstersSpawned(currentWave, calculateExpectedSpawnCount(currentItemId)) then
        local finalBossCreature = getTopCreature({x = 31230, y = 32268, z = 8}).uid
        if finalBossCreature ~= 0 then
            if activeMonsters == 0 and countRemainingMonstersInRange(fromPos, toPos) == 0 then
                rewardPlayers()
                return true
            else
                addEvent(function() checkFinalBossStatus()                 
                end, 10000)
            end
            return true
        else
            if activeMonsters == 0 then
                local fromPos = {x = 31180, y = 32239, z = 8}
                local toPos = {x = 31236, y = 32277, z = 8}
                local teleportPos = {x = 31206, y = 32301, z = 8}               
                local playersTeleported = false
                for x = fromPos.x, toPos.x do
                    for y = fromPos.y, toPos.y do
                        local pos = {x = x, y = y, z = fromPos.z}
                        local player = getTopCreature(pos).uid
                        if player ~= 0 and isPlayer(player) then
                        local storage = PlayerGetStorageValue(player, 88708)
                        if storage == 0 then
                        doTeleportThing(player, teleportPos, false)
                        PlayerSendTextMessage(player, MESSAGE_INFO_DESCR, "You lost! You have been teleported to town.")
                        doTeleportThing(player, teleportPos, false)
                        removeCreaturesInRange(fromPos, toPos)
                        PlayerSetStorageValue(player, 86704, 0)
                        PlayerSetStorageValue(player, 86705, 0)
                        PlayerSetStorageValue(player, 86706, 0)
                        PlayerSetStorageValue(player, 86707, 0)
                        PlayerSetStorageValue(player, 86708, 0)
                        PlayerSetStorageValue(player, 86709, 0)
                        PlayerSetStorageValue(player, 86710, 0)
                        PlayerSetStorageValue(player, 86711, 0)
                        PlayerSetStorageValue(player, 86712, 0)
                        PlayerSetStorageValue(player, 86713, 0)
                        PlayerSetStorageValue(player, 86714, 0)
                        PlayerSetStorageValue(player, 86715, 0)
                        PlayerSetStorageValue(player, 88709, 0)
                        spawningWave = false
                        stopSpawning = true
                        PlayerSetStorageValue(player, cooldownEntrance, os.time() + 30)
                        PlayerSendTextMessage(player, MESSAGE_INFO_DESCR, "You lost! You have been teleported to town.")
                        playersTeleported = true
                        else
                            return true
                        end
                    end
                    end
                end
                if playersTeleported then
                    removeCreaturesInRange(fromPos, toPos)
                    return
                end
            end
        end
    end          
end

local function moveAlongPath(cid, pathIndex, stepCount, itemId)
    if not isCreature(cid) then
        checkFinalBossStatus()
        return
    end
    if pathIndex > #path then
        return
    end

    local direction = path[pathIndex].dir
    local steps = path[pathIndex].steps

    if stepCount >= steps then
        pathIndex = pathIndex + 1
        stepCount = 0
    end

    if pathIndex <= #path then
        doMoveCreature(cid, direction)
        addEvent(function() moveAlongPath(cid, pathIndex, stepCount + 1, itemId) end, 480) -- Number is in millisecond DELAY TO MOVE MONSTER, it's accurate with speed
        -- If you wanted to make it more faster / slower, you need to more faster = x2 Speed /2 Delay moveAlongPath, more lower (/2 Speed x2 Delay MoveAlongPath) the Speed of monster, example 480 here it's 167 speed on monster to be accurate in movement
    else
        local damagePosition = {x = 31230, y = 32268, z = 8}
        local damage = math.random(150, 300)
        checkFinalBossStatus()
        local creature = getTopCreature(damagePosition).uid
        if creature ~= 0 then
            if isMonster(creature) then
                doTargetCombatHealth(cid, creature, COMBAT_PHYSICALDAMAGE, -damage, -damage, 208)
                activeMonsters = activeMonsters - 1
            end
        else
            local fromPos = {x = 31180, y = 32239, z = 8}
            local toPos = {x = 31236, y = 32277, z = 8}
            local teleportPos = {x = 31206, y = 32301, z = 8}   
            local cooldownEntrance = 184320      
            local playersTeleported = false
            for x = fromPos.x, toPos.x do
                for y = fromPos.y, toPos.y do
                        local pos = {x = x, y = y, z = fromPos.z}
                        local player = getTopCreature(pos).uid
                        if player ~= 0 and isPlayer(player) then
                        doTeleportThing(player, teleportPos, false)
                        PlayerSendTextMessage(player, MESSAGE_INFO_DESCR, "You lost! You have been teleported to town.")
                        doTeleportThing(player, teleportPos, false)
                        removeCreaturesInRange(fromPos, toPos)
                        PlayerSetStorageValue(player, 86704, 0)
                        PlayerSetStorageValue(player, 86705, 0)
                        PlayerSetStorageValue(player, 86706, 0)
                        PlayerSetStorageValue(player, 86707, 0)
                        PlayerSetStorageValue(player, 86708, 0)
                        PlayerSetStorageValue(player, 86709, 0)
                        PlayerSetStorageValue(player, 86710, 0)
                        PlayerSetStorageValue(player, 86711, 0)
                        PlayerSetStorageValue(player, 86712, 0)
                        PlayerSetStorageValue(player, 86713, 0)
                        PlayerSetStorageValue(player, 86714, 0)
                        PlayerSetStorageValue(player, 86715, 0)
                        spawningWave = false
                        stopSpawning = true
                        PlayerSetStorageValue(player, cooldownEntrance, os.time() + 30)
                        PlayerSendTextMessage(player, MESSAGE_INFO_DESCR, "You lost! You have been teleported to town.")
                        playersTeleported = true
                    end
                end
            end 
            if activeMonsters == 0 and not playersTeleported then
                removeCreaturesInRange(fromPos, toPos)
                return
            end
        end
        doRemoveCreature(cid)
        checkFinalBossStatus()
    end
end

spawnMonster = function(monsterType, spawnPos, itemId)
    if stopSpawning then
        return
    end

    if getTopCreature(spawnPos).uid == 0 then
        local monster = doSummonCreature(monsterType, spawnPos)
        if monster then
            addEvent(function() moveAlongPath(monster, 1, 0, itemId) end, 0)
            activeMonsters = activeMonsters + 1
            trackSpawnedMonsters(currentWave, itemId, monsterType)
        else
            addEvent(function() spawnMonster(monsterType, spawnPos, itemId) end, 380)
        end
    else
        addEvent(function() spawnMonster(monsterType, spawnPos, itemId) end, 380)
    end
end



local delayBetweenMonsters = 2300 -- Delay Individual Monsters
local delayBetweenGroups = 3300 -- Delay changing a monster Type from Table

local function spawnMonstersSequentially(monsterData, spawnPos, itemId)
    if stopSpawning then
        return
    end
    local index = 1

    local function spawnNextMonsterGroup()
        if index <= #monsterData.names then
            local monsterType = monsterData.names[index]
            local spawnCount = monsterData.spawns[index]
            local spawnAttempts = 0
            local function spawnMonsterType(count, delayOffset)
                if count > 0 then
                    if stopSpawning then
                        return
                    end
                    
                    addEvent(function()
                        if stopSpawning then
                            return
                        end
                        
                        spawnMonster(monsterType, spawnPos, itemId)
                        spawnAttempts = spawnAttempts + 1
                        spawnMonsterType(count - 1, delayOffset)
                    end, delayOffset)
                else
                    index = index + 1
                    addEvent(spawnNextMonsterGroup, delayBetweenGroups)
                end
            end
            spawnMonsterType(spawnCount, delayBetweenMonsters)
        else
            spawningWave = false
            checkFinalBossStatus()
        end
    end
    spawnNextMonsterGroup()
end


local towerDefense = Action()

function towerDefense.onUse(cid, item, fromPosition, itemEx, toPosition)
    if spawningWave then
        PlayerSendTextMessage(cid , MESSAGE_INFO_DESCR, "Another wave is already being spawned. Cannot start a new wave.")
        return true
    end
    activeMonsters = 0
    currentItemId = item.actionid
    currentWave = 0
    totalWaves = 1
    activeMonsters = 0
    spawnedMonsters = {}
    PlayerSetStorageValue(cid, 86705, 0)
    PlayerSetStorageValue(cid, 88708, 0)
    local monsterData = monsterTable[currentItemId]
    if not monsterData then
        return false
    end
    local spawnPos = {x = 31184, y = 32245, z = 8}
    local baseSpawn = {x = 31230, y = 32268, z = 8}
    local existingMonster = Tile(baseSpawn):getTopCreature()
    if existingMonster and existingMonster:getName() == "Base Core" then
        existingMonster:remove()
    end

    local baseMonster = Game.createMonster("Base Core", baseSpawn)
    if not baseMonster then
        return false
    end
    stopSpawning = false
    spawningWave = true
    addEvent(function() spawnMonstersSequentially(monsterData, spawnPos, currentItemId)                 
    end, 10000)
    playSound(cid, "lever.ogg")
    PlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "Tower Defense will start in 10 Seconds! Prepare yourself!")
    return true
end

for actionId, _ in pairs(monsterTable) do
    towerDefense:aid(actionId)
end
towerDefense:register()

--- Death Events for Monsters on Waves to count activeMonsters to know on checkfinalboss function if reward or teleport player ---

local monsterTables = CreatureEvent("onDeathTableMonsters")
function monsterTables.onDeath(creature, corpse, killer, mostDamageKiller, unjustified, mostDamageUnjustified)
    if not creature then
        return true
    end
    activeMonsters = activeMonsters - 1
end

monsterTables:register()

--- Final Death Events for Monsters on Waves ---

--- Units Spawn, maximum Count, Maximum Placement is 40, to add more, add a new tile in game and increment the number ---
local tableSpawners = {
    [28365] = {name = "Stone Guard", maxCount = 20},
    [28366] = {name = "Thorin Ironspell", maxCount = 10},
    [28367] = {name = "Grimgar Boomstrike", maxCount = 6},
    [28368] = {name = "Durin Rocksmash", maxCount = 5},
    [28369] = {name = "Grimnir Slashbaiter", maxCount = 4},
    [28370] = {name = "King Aldor Goldcrusher", maxCount = 2},
}

local maxPositions = 40  
local spawnPositions = {
    {x = 31195, y = 32247, z = 8},
    {x = 31195, y = 32243, z = 8},
    {x = 31201, y = 32246, z = 8},
    {x = 31197, y = 32252, z = 8},
    {x = 31202, y = 32251, z = 8},
    {x = 31199, y = 32256, z = 8},
    {x = 31205, y = 32256, z = 8},
    {x = 31209, y = 32256, z = 8},
    {x = 31205, y = 32260, z = 8},
    {x = 31199, y = 32260, z = 8},
    {x = 31193, y = 32260, z = 8},
    {x = 31191, y = 32256, z = 8},
    {x = 31188, y = 32261, z = 8},
    {x = 31193, y = 32264, z = 8},
    {x = 31195, y = 32268, z = 8},
    {x = 31199, y = 32264, z = 8},
    {x = 31202, y = 32268, z = 8},
    {x = 31205, y = 32264, z = 8},
    {x = 31208, y = 32268, z = 8},
    {x = 31211, y = 32264, z = 8},
    {x = 31211, y = 32260, z = 8},
    {x = 31217, y = 32257, z = 8},
    {x = 31222, y = 32255, z = 8},
    {x = 31217, y = 32252, z = 8},
    {x = 31213, y = 32252, z = 8},
    {x = 31209, y = 32249, z = 8},
    {x = 31216, y = 32248, z = 8},
    {x = 31213, y = 32244, z = 8},
    {x = 31221, y = 32244, z = 8},
    {x = 31222, y = 32248, z = 8},
    {x = 31227, y = 32244, z = 8},
    {x = 31226, y = 32249, z = 8},
    {x = 31230, y = 32252, z = 8},
    {x = 31226, y = 32254, z = 8},
    {x = 31230, y = 32258, z = 8},
    {x = 31226, y = 32259, z = 8},
    {x = 31221, y = 32262, z = 8},
    {x = 31216, y = 32262, z = 8},
    {x = 31216, y = 32267, z = 8},
    {x = 31220, y = 32270, z = 8}
}

local summoningArea = {
    fromPos = {x = 31186, y = 32243, z = 8},
    toPos = {x = 31231, y = 32271, z = 8}
}

local storageValue = 86704 

function findAvailablePosition()
    for _, pos in ipairs(spawnPositions) do
        if not isPositionOccupied(pos) then
            return pos
        end
    end
    
    return nil  
end

function isPositionOccupied(pos)
    local creature = getTopCreature(pos).uid
    local occupied = creature ~= 0 and isCreature(creature)
    return occupied
end

function getStorageOfPlayer(cid, key)
    local value = getPlayerStorageValue(cid, key)
    if value == nil then
        return 0
    end
    return value
end

function setStorageOfPlayer(cid, key, value)
    return PlayerSetStorageValue(cid, key, value)
end

function getMonsterCount(cid, monsterName)
    local monsterStorage = storageValue + getMonsterStorageOffset(monsterName)
    local count = getStorageOfPlayer(cid, monsterStorage)
    if count == -1 then
        count = 0
        setStorageOfPlayer(cid, monsterStorage, count)
    end
    return count
end

function incrementMonsterCount(cid, monsterName)
    local monsterStorage = storageValue + getMonsterStorageOffset(monsterName)
    local currentCount = getMonsterCount(cid, monsterName)
    local newCount = currentCount + 1
    setStorageOfPlayer(cid, monsterStorage, newCount)
end

function decrementMonsterCount(cid, monsterName)
    local monsterStorage = storageValue + getMonsterStorageOffset(monsterName)
    local currentCount = getMonsterCount(cid, monsterName)
    local newCount = math.max(0, currentCount - 1)
    setStorageOfPlayer(cid, monsterStorage, newCount)
end


---- Offset is important, in order to get the Storage in order and incremented by each monster.
---- If you add new monsters, just follow table, so: Demon = 1 for example, next monster will be example: Vexclaw = 2, each one +1
function getMonsterStorageOffset(monsterName)
    local offsets = {
        ["Stone Guard"] = 1,
        ["Thorin Ironspell"] = 2,
        ["Grimgar Boomstrike"] = 3,
        ["Durin Rocksmash"] = 4,
        ["Grimnir Slashbaiter"] = 5,
        ["King Aldor Goldcrusher"] = 6,
    }
    return offsets[monsterName] or 0
end

function isPlayerInRange(cid, fromPos, toPos)
    local playerPos = getCreaturePosition(cid)
    if not playerPos then
        return false
    end
    
    local inRange = playerPos.x >= fromPos.x and playerPos.x <= toPos.x
                    and playerPos.y >= fromPos.y and playerPos.y <= toPos.y
                    and playerPos.z == fromPos.z 
    return inRange
end

local summonsSpawn = Action()

function summonsSpawn.onUse(cid, item, fromPosition, itemEx, toPosition)
    local itemID = item.itemid
    local spawner = tableSpawners[itemID]
    
    if not spawner then
        return false
    end
    
    local monsterName = spawner.name
    local maxCount = spawner.maxCount
    
    if not isPlayerInRange(cid, summoningArea.fromPos, summoningArea.toPos) then
        PlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "You cannot use this object here.")
        return false
    end
    
    local totalMonsters = getStorageOfPlayer(cid, storageValue)
    if totalMonsters == -1 then
        totalMonsters = 0
        setStorageOfPlayer(cid, storageValue, totalMonsters)
    end

    if totalMonsters >= maxPositions then
        PlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "You have reached the maximum number of creatures.")
        return false
    end
    
    local currentMonsterCount = getMonsterCount(cid, monsterName)

    if currentMonsterCount >= maxCount then
        PlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "You have reached the maximum number of " .. monsterName .. "s.")
        return false
    end

    local spawnPosition = findAvailablePosition()
    if not spawnPosition then
        PlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "All spawn positions are occupied.")
        return false
    end
    
    local monster = Game.createMonster(monsterName, spawnPosition)
    
    if monster then
        monster:setMaster(cid)
        playSound(cid, "monster_summoned.ogg")
        setStorageOfPlayer(cid, storageValue, totalMonsters + 1) 
        incrementMonsterCount(cid, monsterName) 
        return true
    else
        return false
    end
end

for itemId, _ in pairs(tableSpawners) do
    summonsSpawn:id(itemId)
end

summonsSpawn:register()

local tableMonstersSpawn = {
    [28365] = {name = "Stone Guard", maxCount = 20},
    [28366] = {name = "Thorin Ironspell", maxCount = 10},
    [28367] = {name = "Grimgar Boomstrike", maxCount = 6},
    [28368] = {name = "Durin Rocksmash", maxCount = 5},
    [28369] = {name = "Grimnir Slashbaiter", maxCount = 4},
    [28370] = {name = "King Aldor Goldcrusher", maxCount = 2},
}

local removeSummon = Action()

local function getMonsterIDByName(name)
    for id, monster in pairs(tableMonstersSpawn) do
        if monster.name == name then
            return id
        end
    end
    return nil
end

function removeSummon.onUse(cid, item, fromPosition, itemEx, toPosition)
    local monster = getTopCreature(toPosition).uid

    if monster == 0 or not isMonster(monster) then
        PlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "There is no monster here to remove.")
        return false
    end

    local monsterName = getCreatureName(monster)
    local monsterID = getMonsterIDByName(monsterName)

    if not monsterID then
        PlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "You can only remove specified monsters.")
        return false
    end

    local currentMonsterCount = getMonsterCount(cid, monsterName)

    if currentMonsterCount > 0 then
        doRemoveCreature(monster)
        decrementMonsterCount(cid, monsterName)
        local totalMonsters = getStorageOfPlayer(cid, storageValue) - 1
        setStorageOfPlayer(cid, storageValue, totalMonsters)
        PlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "You have removed the monster: " .. monsterName)
        return true
    else
        PlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "You do not have any " .. monsterName .. " to remove.")
        return false
    end
end

removeSummon:id(28371)
removeSummon:register()

local function removePlayerMonsters(cid)
    local player = Player(cid)
    if not player then return end
    
    local creatures = Game.getSpectators(player:getPosition(), false, false, 140, 140, 140, 140)
    for _, creature in ipairs(creatures) do
        if creature:isMonster() and creature:getMaster() and creature:getMaster():getId() == cid then
            doRemoveCreature(creature)
            local monsterName = creature:getName()
            decrementMonsterCount(cid, monsterName)
        end
    end
    
    local totalMonsters = getStorageOfPlayer(cid, storageValue) - 1
    setStorageOfPlayer(cid, storageValue, totalMonsters)
end



local exitTower = MoveEvent()

function exitTower.onStepIn(player, item, position, fromPosition)
    local cooldownEntrance = 184320
    
    if player:isPlayer() then
        player:setStorageValue(cooldownEntrance, os.time() + 30)
        player:teleportTo(Position(31206, 32295, 8))
        player:setStorageValue(88709, 0)
        removePlayerMonsters(player:getId())
    end
    return true
end

exitTower:type("stepin")
exitTower:aid(25486)
exitTower:register()


local monsterDeathEvent = CreatureEvent("onDeathUnitSpawn")

function monsterDeathEvent.onDeath(creature, corpse, killer, mostDamageKiller, unjustified, mostDamageUnjustified)
    if not creature then
        return false
    end
    
    local master = creature:getMaster()
    if master then
        local cid = master:getId()
        local currentSummonCount = getPlayerStorageValue(cid, storageValue)
        
        if currentSummonCount > 0 then
            PlayerSetStorageValue(cid, storageValue, currentSummonCount - 1) 
        end
    end
    
    return true
end

monsterDeathEvent:register()

local loginSpawnSummons = CreatureEvent("onSpawnSummonsTowerDefense")

function loginSpawnSummons.onLogin(player)
    player:setStorageValue(86704, 0)
    player:setStorageValue(86705, 0)
    player:setStorageValue(86706, 0)
    player:setStorageValue(86707, 0)
    player:setStorageValue(86708, 0)
    player:setStorageValue(86709, 0)
    player:setStorageValue(86710, 0)
    player:setStorageValue(86711, 0)
    player:setStorageValue(86712, 0)
    player:setStorageValue(86713, 0)
    player:setStorageValue(86714, 0)
    player:setStorageValue(86715, 0)
    player:setStorageValue(88708, 0)
    player:setStorageValue(88709, 0)
    return true
end

loginSpawnSummons:register()
