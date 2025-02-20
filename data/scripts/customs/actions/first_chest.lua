local config = {
    [1] = { -- Sorcerer
    items = {
    {2189, 1}, -- Wand of Cosmic Energy
    {8870, 1}, -- spirit cloak
    {2323, 1}, -- hat of the mad
    {2468, 1}, -- studded legs
    {2643, 1}, -- leather boots
    {2661, 1} -- scarf
    },
    container = {
    {2120, 1}, -- rope
    {2554, 1}, -- shovel
    {7620, 10} -- mana potion
    }
    },
    [2] = { -- Druid
    items = {
    {2181, 1}, -- Terra Rod
    {8870, 1}, -- spirit cloak
    {2323, 1}, -- hat of the mad
    {2468, 1}, -- studded legs
    {2643, 1}, -- leather boots
    {2661, 1} -- scarf
    },
    container = {
    {2120, 1}, -- rope
    {2554, 1}, -- shovel
    {7620, 10} -- mana potion
    }
    },
    [3] = { -- Paladin
    items = {
    {2525, 1}, -- dwarven shield
    {2389, 5}, -- 5 spears
    {2660, 1}, -- ranger's cloak
    {8923, 1}, -- ranger legs
    {2643, 1}, -- leather boots
    {2661, 1}, -- scarf
    {2459, 1} -- iron helmet
    },
    container = {
    {2120, 1}, -- rope
    {2554, 1}, -- shovel
    {7618, 5}, -- health potion
    {2456, 1}, -- bow
    {2544, 50} -- 50 arrows
    }
    },
    [4] = { -- Knight
    items = {
    {2525, 1}, -- dwarven shield
    {8601, 1}, -- steel axe
    {2465, 1}, -- brass armor
    {2460, 1}, -- brass helmet
    {2478, 1}, -- brass legs
    {2643, 1}, -- leather boots
    {2661, 1}, -- scarf
    {2459, 1} -- iron helmet
    },
    container = {
    {8602, 1}, -- jagged sword
    {2439, 1}, -- daramanian mace
    {2120, 1}, -- rope
    {2554, 1}, -- shovel
    {7618, 10} -- health potion
    }
    },
    [5] = { -- Sorcerer
    items = {
    {2189, 1}, -- Wand of Cosmic Energy
    {8870, 1}, -- spirit cloak
    {2323, 1}, -- hat of the mad
    {2468, 1}, -- studded legs
    {2643, 1}, -- leather boots
    {2661, 1} -- scarf
    },
    container = {
    {2120, 1}, -- rope
    {2554, 1}, -- shovel
    {7620, 10} -- mana potion
    }
    },
    [6] = { -- Druid
    items = {
    {2181, 1}, -- Terra Rod
    {8870, 1}, -- spirit cloak
    {2323, 1}, -- hat of the mad
    {2468, 1}, -- studded legs
    {2643, 1}, -- leather boots
    {2661, 1} -- scarf
    },
    container = {
    {2120, 1}, -- rope
    {2554, 1}, -- shovel
    {7620, 10} -- mana potion
    }
    },
    [7] = { -- Paladin
    items = {
    {2525, 1}, -- dwarven shield
    {2389, 5}, -- 5 spears
    {2660, 1}, -- ranger's cloak
    {8923, 1}, -- ranger legs
    {2643, 1}, -- leather boots
    {2661, 1}, -- scarf
    {2459, 1} -- iron helmet
    },
    container = {
    {2120, 1}, -- rope
    {2554, 1}, -- shovel
    {7618, 5}, -- health potion
    {2456, 1}, -- bow
    {2544, 50} -- 50 arrows
    }
    },
    [8] = { -- Knight
    items = {
    {2525, 1}, -- dwarven shield
    {8601, 1}, -- steel axe
    {2465, 1}, -- brass armor
    {2460, 1}, -- brass helmet
    {2478, 1}, -- brass legs
    {2643, 1}, -- leather boots
    {2661, 1}, -- scarf
    {2459, 1} -- iron helmet
    },
    container = {
    {8602, 1}, -- jagged sword
    {2439, 1}, -- daramanian mace
    {2120, 1}, -- rope
    {2554, 1}, -- shovel
    {7618, 10} -- health potion
    }
    },
    [9] = { -- Illusionists
    items = {
    {2189, 1}, -- Wand of Cosmic Energy
    {8870, 1}, -- spirit cloak
    {2323, 1}, -- hat of the mad
    {2468, 1}, -- studded legs
    {2643, 1}, -- leather boots
    {2661, 1} -- scarf
    },
    container = {
    {2120, 1}, -- rope
    {2554, 1}, -- shovel
    {7620, 10} -- mana potion
    }
    },
    }
    
    local firstItems = Action()

    function firstItems.onUse(player, item, fromPosition, target, toPosition, isHotkey)
    local targetVocation = config[player:getVocation():getId()]
    if not targetVocation then
        return true
    end

    local storage = player:getStorageValue(33735)

    if storage > 0 then
        player:sendTextMessage(MESSAGE_INFO_DESCR, "You already collected this chest.")
        return true
    end

    for i = 1, #targetVocation.items do
        player:addItem(targetVocation.items[i][1], targetVocation.items[i][2])
    end

    local backpack = player:addItem(1988)
    if not backpack then
        return true
    end

    for i = 1, #targetVocation.container do
        backpack:addItem(targetVocation.container[i][1], targetVocation.container[i][2])
    end
    playSound(player, "open_chest.ogg")
    player:setStorageValue(33735, 1) 
    return true
end

firstItems:aid(33735)
firstItems:register()
