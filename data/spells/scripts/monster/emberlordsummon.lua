local summons = {
    [1] = {name = "Hooded Colossus"},
    [2] = {name = "Spiked Enforcer"},
    [3] = {name = "Bloodthirst Bulgeye"},
    [4] = {name = "Frosted Dragon"},
    [5] = {name = "Frost Hydra"},
    [6] = {name = "Frost Spider"},
    [7] = {name = "Mounted Mage Goblin"},
    [8] = {name = "Mechanic Goblin"},
    [9] = {name = "Mounted Warrior Goblin"},
    [10] = {name = "Helm Hunter"},
    [11] = {name = "Arbaziloth Master"},
    [12] = {name = "Gralvalon"}
}

local maxsummons = 5

-- Predefined positions for spawning the monsters
local positions = {
    Position(30943, 31262, 9),  -- Position 1
    Position(30930, 31262, 9),  -- Position 2
    Position(30947, 31273, 9),  -- Position 3
    Position(30930, 31275, 9)   -- Position 4
}

-- Define monster groups for each position
local monsterGroups = {
    {1, 2, 3},  -- Group 1 (Position 1)
    {4, 5, 6},  -- Group 2 (Position 2)
    {7, 8, 9},  -- Group 3 (Position 3)
    {10, 11, 12} -- Group 4 (Position 4)
}


function onCastSpell(creature, var)
    creature:say("RISE MY SERVANTS! RISE!!", TALKTYPE_MONSTER_SAY)

    -- Get the number of current summons
    local summoncount = creature:getSummons()
    
    -- Check if the player has room for more summons
    if #summoncount < maxsummons then
        -- Randomly pick a position (1 to 4)
        local chosenPositionIndex = math.random(1, 4)
        local chosenPosition = positions[chosenPositionIndex]
        
        -- Randomly pick a group of monsters for the chosen position (1 to 4)
        local chosenGroup = monsterGroups[chosenPositionIndex]
        
        -- Spawn the monsters in random positions around the chosen position
        for _, monsterIndex in ipairs(chosenGroup) do
            local monsterName = summons[monsterIndex].name
            local spawnPos = Position(chosenPosition.x + math.random(-3, 3), chosenPosition.y + math.random(-3, 3), chosenPosition.z)
            
            -- Create the monster and set its master
            local mid = Game.createMonster(monsterName, spawnPos)
            if mid then
                mid:setMaster(creature)
            end
        end
    end

    return true
end

