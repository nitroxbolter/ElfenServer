function onSay(player, words, param)
    local slots = {
        CONST_SLOT_HEAD,
        CONST_SLOT_NECKLACE,
        CONST_SLOT_BACKPACK,
        CONST_SLOT_ARMOR,
        CONST_SLOT_RIGHT,
        CONST_SLOT_LEFT,
        CONST_SLOT_LEGS,
        CONST_SLOT_FEET,
        CONST_SLOT_RING,
        CONST_SLOT_AMMO,
        CONST_SLOT_DECK,
        CONST_SLOT_GLOVES,
        CONST_SLOT_BELT,
        CONST_SLOT_BADGE,
        CONST_SLOT_SHIP
    }

    local combatTypeNames = {
        [0] = "Physical",       -- COMBAT_PHYSICALDAMAGE
        [1] = "Energy",         -- COMBAT_ENERGYDAMAGE
        [2] = "Earth",          -- COMBAT_EARTHDAMAGE
        [3] = "Fire",           -- COMBAT_FIREDAMAGE
        [4] = "Unknown",        -- COMBAT_UNDEFINEDDAMAGE
        [5] = "Life Drain",     -- COMBAT_LIFEDRAIN
        [6] = "Mana Drain",     -- COMBAT_MANADRAIN
        [7] = "Healing",        -- COMBAT_HEALING
        [8] = "Drown",          -- COMBAT_DROWNDAMAGE
        [9] = "Ice",            -- COMBAT_ICEDAMAGE
        [10] = "Holy",          -- COMBAT_HOLYDAMAGE
        [11] = "Death",         -- COMBAT_DEATHDAMAGE
        [12] = "Water",         -- COMBAT_WATERDAMAGE
        [13] = "Arcane"         -- COMBAT_ARCANEDAMAGE
    }

    -- Define absorption storages
    local absorbStorages = {
        ["Physical"] = 977545,
        ["Energy"] = 977546,
        ["Earth"] = 977547,
        ["Fire"] = 977544,
        ["Drown"] = 977548,
        ["Ice"] = 977549,
        ["Holy"] = 977550,
        ["Death"] = 977551,
        ["Water"] = 977552,
        ["Arcane"] = 977553
    }

    local totalAbsorptions = {}

    for _, slot in ipairs(slots) do
        local item = player:getSlotItem(slot)
        if item then
            local abilities = item:getType():getAbilities()
            if abilities and abilities.absorbPercent then
                for combatIndex, percent in ipairs(abilities.absorbPercent) do
                    if percent > 0 then
                        local combatName = combatTypeNames[combatIndex - 1] or "Unknown"
                        totalAbsorptions[combatName] = (totalAbsorptions[combatName] or 0) + percent
                    end
                end
            end
        end
    end

    for combatName, storage in pairs(absorbStorages) do
        local customAbsorb = player:getStorageValue(storage)
        if customAbsorb and customAbsorb > 0 then
            totalAbsorptions[combatName] = (totalAbsorptions[combatName] or 0) + customAbsorb
        end
    end

    if next(totalAbsorptions) then
        local message = "Total absorption percentages from your equipment:\n"
        for combatName, total in pairs(totalAbsorptions) do
            local customAbsorb = player:getStorageValue(absorbStorages[combatName])
            if customAbsorb and customAbsorb > 0 then
                message = message .. "  " .. combatName .. ": " .. total .. "% (+" .. customAbsorb .. "% custom bonus)\n"
            else
                message = message .. "  " .. combatName .. ": " .. total .. "%\n"
            end
        end
        player:showTextDialog(26643, message)
    else
        player:sendTextMessage(MESSAGE_INFO_DESCR, "No resistances found in your equipment.")
    end

    return false
end
