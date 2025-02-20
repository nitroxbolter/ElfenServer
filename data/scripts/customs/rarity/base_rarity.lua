local conditions = {
    ["fistSkill"] = {
        abilitie = {
            type = "skills",
            index = SKILL_FIST
        },

        condition = {
            id = CONDITIONID_DEFAULT,
            subId = 1000,
            type = CONDITION_ATTRIBUTES,
            param = CONDITION_PARAM_SKILL_FIST,
            ticks = -1
        }
    },
    ["clubSkill"] = {
        abilitie = {
            type = "skills",
            index = SKILL_CLUB
        },

        condition = {
            id = CONDITIONID_DEFAULT,
            subId = 1001,
            type = CONDITION_ATTRIBUTES,
            param = CONDITION_PARAM_SKILL_CLUB,
            ticks = -1
        }
    },
    ["swordSkill"] = {
        abilitie = {
            type = "skills",
            index = SKILL_SWORD
        },

        condition = {
            id = CONDITIONID_DEFAULT,
            subId = 1002,
            type = CONDITION_ATTRIBUTES,
            param = CONDITION_PARAM_SKILL_SWORD,
            ticks = -1
        }
    },
    ["axeSkill"] = {
        abilitie = {
            type = "skills",
            index = SKILL_AXE
        },

        condition = {
            id = CONDITIONID_DEFAULT,
            subId = 1003,
            type = CONDITION_ATTRIBUTES,
            param = CONDITION_PARAM_SKILL_AXE,
            ticks = -1
        }
    },
    ["distanceSkill"] = {
        abilitie = {
            type = "skills",
            index = SKILL_DISTANCE
        },

        condition = {
            id = CONDITIONID_DEFAULT,
            subId = 1004,
            type = CONDITION_ATTRIBUTES,
            param = CONDITION_PARAM_SKILL_DISTANCE,
            ticks = -1
        }
    },
    ["shieldSkill"] = {
        abilitie = {
            type = "skills",
            index = SKILL_SHIELD
        },

        condition = {
            id = CONDITIONID_DEFAULT,
            subId = 1005,
            type = CONDITION_ATTRIBUTES,
            param = CONDITION_PARAM_SKILL_SHIELD,
            ticks = -1
        }
    },
    ["fishingSkill"] = {
        abilitie = {
            type = "skills",
            index = SKILL_FISHING
        },

        condition = {
            id = CONDITIONID_DEFAULT,
            subId = 1006,
            type = CONDITION_ATTRIBUTES,
            param = CONDITION_PARAM_SKILL_FISHING,
            ticks = -1
        }
    },
    ["craftingSkill"] = {
        abilitie = {
            type = "skills",
            index = SKILL_CRAFTING
        },

        condition = {
            id = CONDITIONID_DEFAULT,
            subId = 1007,
            type = CONDITION_ATTRIBUTES,
            param = CONDITION_PARAM_SKILL_CRAFTING,
            ticks = -1
        }
    },
    ["woodcuttingSkill"] = {
        abilitie = {
            type = "skills",
            index = SKILL_WOODCUTTING
        },

        condition = {
            id = CONDITIONID_DEFAULT,
            subId = 1008,
            type = CONDITION_ATTRIBUTES,
            param = CONDITION_PARAM_SKILL_WOODCUTTING,
            ticks = -1
        }
    },
    ["miningSkill"] = {
        abilitie = {
            type = "skills",
            index = SKILL_MINING
        },

        condition = {
            id = CONDITIONID_DEFAULT,
            subId = 1009,
            type = CONDITION_ATTRIBUTES,
            param = CONDITION_PARAM_SKILL_MINING,
            ticks = -1
        }
    },
    ["herbalistSkill"] = {
        abilitie = {
            type = "skills",
            index = SKILL_HERBALIST
        },

        condition = {
            id = CONDITIONID_DEFAULT,
            subId = 1010,
            type = CONDITION_ATTRIBUTES,
            param = CONDITION_PARAM_SKILL_HERBALIST,
            ticks = -1
        }
    },
    ["armorsmithSkill"] = {
        abilitie = {
            type = "skills",
            index = SKILL_ARMORSMITH
        },

        condition = {
            id = CONDITIONID_DEFAULT,
            subId = 1011,
            type = CONDITION_ATTRIBUTES,
            param = CONDITION_PARAM_SKILL_ARMORSMITH,
            ticks = -1
        }
    },
    ["weaponsmithSkill"] = {
        abilitie = {
            type = "skills",
            index = SKILL_WEAPONSMITH
        },

        condition = {
            id = CONDITIONID_DEFAULT,
            subId = 1012,
            type = CONDITION_ATTRIBUTES,
            param = CONDITION_PARAM_SKILL_WEAPONSMITH,
            ticks = -1
        }
    },
    ["jewelsmithSkill"] = {
        abilitie = {
            type = "skills",
            index = SKILL_JEWELSMITH
        },

        condition = {
            id = CONDITIONID_DEFAULT,
            subId = 1013,
            type = CONDITION_ATTRIBUTES,
            param = CONDITION_PARAM_SKILL_JEWELSMITH,
            ticks = -1
        }
    },
    ["maglevelSkill"] = {
        abilitie = {
            type = "stats",
            index = STAT_MAGICPOINTS
        },

        condition = {
            id = CONDITIONID_DEFAULT,
            subId = 1014,
            type = CONDITION_ATTRIBUTES,
            param = CONDITION_PARAM_STAT_MAGICPOINTS,
            ticks = -1
        }
    },
    ["criticalHitChance"] = {
        abilitie = {
            type = "specialSkills",
            index = SPECIALSKILL_CRITICALHITCHANCE
        },

        condition = {
            id = CONDITIONID_DEFAULT,
            subId = 1015,
            type = CONDITION_ATTRIBUTES,
            param = CONDITION_PARAM_SPECIALSKILL_CRITICALHITCHANCE,
            ticks = -1
        }
    },
    ["criticalHitAmount"] = {
        abilitie = {
            type = "specialSkills",
            index = SPECIALSKILL_CRITICALHITAMOUNT
        },

        condition = {
            id = CONDITIONID_DEFAULT,
            subId = 1016,
            type = CONDITION_ATTRIBUTES,
            param = CONDITION_PARAM_SPECIALSKILL_CRITICALHITAMOUNT,
            ticks = -1
        }
    },
    ["lifeLeechChance"] = {
        abilitie = {
            type = "specialSkills",
            index = SPECIALSKILL_LIFELEECHCHANCE
        },

        condition = {
            id = CONDITIONID_DEFAULT,
            subId = 1017,
            type = CONDITION_ATTRIBUTES,
            param = CONDITION_PARAM_SPECIALSKILL_LIFELEECHCHANCE,
            ticks = -1
        }
    },
    ["lifeLeechAmount"] = {
        abilitie = {
            type = "specialSkills",
            index = SPECIALSKILL_LIFELEECHAMOUNT
        },

        condition = {
            id = CONDITIONID_DEFAULT,
            subId = 1018,
            type = CONDITION_ATTRIBUTES,
            param = CONDITION_PARAM_SPECIALSKILL_LIFELEECHAMOUNT,
            ticks = -1
        }
    },
    ["manaLeechChance"] = {
        abilitie = {
            type = "specialSkills",
            index = SPECIALSKILL_MANALEECHCHANCE
        },

        condition = {
            id = CONDITIONID_DEFAULT,
            subId = 1019,
            type = CONDITION_ATTRIBUTES,
            param = CONDITION_PARAM_SPECIALSKILL_MANALEECHCHANCE,
            ticks = -1
        }
    },
    ["manaLeechAmount"] = {
        abilitie = {
            type = "specialSkills",
            index = SPECIALSKILL_MANALEECHAMOUNT
        },

        condition = {
            id = CONDITIONID_DEFAULT,
            subId = 1020,
            type = CONDITION_ATTRIBUTES,
            param = CONDITION_PARAM_SPECIALSKILL_MANALEECHAMOUNT,
            ticks = -1
        }
    }
}

print(">> Rarity System Loaded")

local conditionCount = 0
for _, __ in pairs(conditions) do
    conditionCount = conditionCount +1
end

local slotBits = {
	[CONST_SLOT_HEAD] = SLOTP_HEAD,
	[CONST_SLOT_NECKLACE] = SLOTP_NECKLACE,
	[CONST_SLOT_BACKPACK] = SLOTP_BACKPACK,
	[CONST_SLOT_ARMOR] = SLOTP_ARMOR,
	[CONST_SLOT_RIGHT] = SLOTP_RIGHT,
	[CONST_SLOT_LEFT] = SLOTP_LEFT,
	[CONST_SLOT_LEGS] = SLOTP_LEGS,
	[CONST_SLOT_FEET] = SLOTP_FEET,
	[CONST_SLOT_RING] = SLOTP_RING,
	[CONST_SLOT_AMMO] = SLOTP_AMMO,
    [CONST_SLOT_BADGE] = SLOTP_BADGE,
    [CONST_SLOT_GLOVES] = SLOTP_GLOVES,
    [CONST_SLOT_BELT] = SLOTP_BELT,
    [CONST_SLOT_DECK] = SLOTP_DECK
}

local function usesSlot(itemType, slot)
	return bit.band(itemType:getSlotPosition(), slotBits[slot] or 0) ~= 0
end

local function onDeEquip(player, slotPosition)
    for _, info in pairs(conditions) do
        local subId = (conditionCount * slotPosition) + info.condition.subId
        player:removeCondition(info.condition.type, info.condition.id, subId, true)
    end
    local item = player:getSlotItem(slotPosition)
    if item then
        -- Fire Absorb
        local fireAbsorb = item:getCustomAttribute("rarity_FireAbsorb") or 0
        if fireAbsorb > 0 then
            local currentFireAbsorb = player:getStorageValue(977544) or 0
            local newFireAbsorb = math.max(0, currentFireAbsorb - fireAbsorb)
            player:setStorageValue(977544, newFireAbsorb)
        end

        -- Physical Absorb
        local physicalAbsorb = item:getCustomAttribute("rarity_physicalAbsorb") or 0
        if physicalAbsorb > 0 then
            local currentPhysicalAbsorb = player:getStorageValue(977545) or 0
            local newPhysicalAbsorb = math.max(0, currentPhysicalAbsorb - physicalAbsorb)
            player:setStorageValue(977545, newPhysicalAbsorb)
        end

        -- Energy Absorb
        local energyAbsorb = item:getCustomAttribute("rarity_energyAbsorb") or 0
        if energyAbsorb > 0 then
            local currentEnergyAbsorb = player:getStorageValue(977546) or 0
            local newEnergyAbsorb = math.max(0, currentEnergyAbsorb - energyAbsorb)
            player:setStorageValue(977546, newEnergyAbsorb)
        end

        -- Earth Absorb
        local earthAbsorb = item:getCustomAttribute("rarity_earthAbsorb") or 0
        if earthAbsorb > 0 then
            local currentEarthAbsorb = player:getStorageValue(977547) or 0
            local newEarthAbsorb = math.max(0, currentEarthAbsorb - earthAbsorb)
            player:setStorageValue(977547, newEarthAbsorb)
        end

        -- Drown Absorb
        local drownAbsorb = item:getCustomAttribute("rarity_drownAbsorb") or 0
        if drownAbsorb > 0 then
            local currentDrownAbsorb = player:getStorageValue(977548) or 0
            local newDrownAbsorb = math.max(0, currentDrownAbsorb - drownAbsorb)
            player:setStorageValue(977548, newDrownAbsorb)
        end

        -- Ice Absorb
        local iceAbsorb = item:getCustomAttribute("rarity_iceAbsorb") or 0
        if iceAbsorb > 0 then
            local currentIceAbsorb = player:getStorageValue(977549) or 0
            local newIceAbsorb = math.max(0, currentIceAbsorb - iceAbsorb)
            player:setStorageValue(977549, newIceAbsorb)
        end

        -- Holy Absorb
        local holyAbsorb = item:getCustomAttribute("rarity_holyAbsorb") or 0
        if holyAbsorb > 0 then
            local currentHolyAbsorb = player:getStorageValue(977550) or 0
            local newHolyAbsorb = math.max(0, currentHolyAbsorb - holyAbsorb)
            player:setStorageValue(977550, newHolyAbsorb)
        end

        -- Death Absorb
        local deathAbsorb = item:getCustomAttribute("rarity_deathAbsorb") or 0
        if deathAbsorb > 0 then
            local currentDeathAbsorb = player:getStorageValue(977551) or 0
            local newDeathAbsorb = math.max(0, currentDeathAbsorb - deathAbsorb)
            player:setStorageValue(977551, newDeathAbsorb)
        end

        -- Water Absorb
        local waterAbsorb = item:getCustomAttribute("rarity_waterAbsorb") or 0
        if waterAbsorb > 0 then
            local currentWaterAbsorb = player:getStorageValue(977552) or 0
            local newWaterAbsorb = math.max(0, currentWaterAbsorb - waterAbsorb)
            player:setStorageValue(977552, newWaterAbsorb)
        end

        -- Arcane Absorb
        local arcaneAbsorb = item:getCustomAttribute("rarity_arcaneAbsorb") or 0
        if arcaneAbsorb > 0 then
            local currentArcaneAbsorb = player:getStorageValue(977553) or 0
            local newArcaneAbsorb = math.max(0, currentArcaneAbsorb - arcaneAbsorb)
            player:setStorageValue(977553, newArcaneAbsorb)
        end
    end

    
    local item = player:getSlotItem(slotPosition)
    if item then
        local elementTypes = {
            {key = "rarity_elementfire",   storage = 977554},
            {key = "rarity_elementice",    storage = 977555},
            {key = "rarity_elementenergy", storage = 977556},
            {key = "rarity_elementearth",  storage = 977557},
            {key = "rarity_elementdeath",  storage = 977558},
            {key = "rarity_elementwater",  storage = 977559},
            {key = "rarity_elementholy",   storage = 977560},
            {key = "rarity_elementarcane", storage = 977561},
        }
        for _, elem in ipairs(elementTypes) do
            local bonusValue = item:getCustomAttribute(elem.key) or 0
            if bonusValue > 0 then
                local currentValue = player:getStorageValue(elem.storage) or 0
                if currentValue < 0 then
                    currentValue = 0
                end
                local newValue = math.max(0, currentValue - bonusValue)
                player:setStorageValue(elem.storage, newValue)
            end
        end
    end

    local elementDamage = {
        fire = 0,
        ice = 0,
        energy = 0,
        earth = 0,
        death = 0,
        water = 0,
        holy = 0,
        arcane = 0,
    }

    for slot = CONST_SLOT_RIGHT, CONST_SLOT_LEFT do
        local equippedItem = player:getSlotItem(slot)
        if equippedItem then
            elementDamage.fire = elementDamage.fire + (equippedItem:getCustomAttribute("rarity_elementfire") or 0)
            elementDamage.ice = elementDamage.ice + (equippedItem:getCustomAttribute("rarity_elementice") or 0)
            elementDamage.energy = elementDamage.energy + (equippedItem:getCustomAttribute("rarity_elementenergy") or 0)
            elementDamage.earth = elementDamage.earth + (equippedItem:getCustomAttribute("rarity_elementearth") or 0)
            elementDamage.death = elementDamage.death + (equippedItem:getCustomAttribute("rarity_elementdeath") or 0)
            elementDamage.water = elementDamage.water + (equippedItem:getCustomAttribute("rarity_elementwater") or 0)
            elementDamage.holy = elementDamage.holy + (equippedItem:getCustomAttribute("rarity_elementholy") or 0)
            elementDamage.arcane = elementDamage.arcane + (equippedItem:getCustomAttribute("rarity_elementarcane") or 0)
        end
    end

    player:setStorageValue(977554, elementDamage.fire)
    player:setStorageValue(977555, elementDamage.ice)
    player:setStorageValue(977556, elementDamage.energy)
    player:setStorageValue(977557, elementDamage.earth)
    player:setStorageValue(977558, elementDamage.death)
    player:setStorageValue(977559, elementDamage.water)
    player:setStorageValue(977560, elementDamage.holy)
    player:setStorageValue(977561, elementDamage.arcane)

    local totalAbsorb = {
        fire = 0,
        physical = 0,
        energy = 0,
        earth = 0,
        drown = 0,
        ice = 0,
        holy = 0,
        death = 0,
        water = 0,
        arcane = 0
    }

    for slot = CONST_SLOT_HEAD, CONST_SLOT_GLOVES do
        local equippedItem = player:getSlotItem(slot)
        if equippedItem then
            totalAbsorb.fire = totalAbsorb.fire + (equippedItem:getCustomAttribute("rarity_FireAbsorb") or 0)
            totalAbsorb.physical = totalAbsorb.physical + (equippedItem:getCustomAttribute("rarity_physicalAbsorb") or 0)
            totalAbsorb.energy = totalAbsorb.energy + (equippedItem:getCustomAttribute("rarity_energyAbsorb") or 0)
            totalAbsorb.earth = totalAbsorb.earth + (equippedItem:getCustomAttribute("rarity_earthAbsorb") or 0)
            totalAbsorb.drown = totalAbsorb.drown + (equippedItem:getCustomAttribute("rarity_drownAbsorb") or 0)
            totalAbsorb.ice = totalAbsorb.ice + (equippedItem:getCustomAttribute("rarity_iceAbsorb") or 0)
            totalAbsorb.holy = totalAbsorb.holy + (equippedItem:getCustomAttribute("rarity_holyAbsorb") or 0)
            totalAbsorb.death = totalAbsorb.death + (equippedItem:getCustomAttribute("rarity_deathAbsorb") or 0)
            totalAbsorb.water = totalAbsorb.water + (equippedItem:getCustomAttribute("rarity_waterAbsorb") or 0)
            totalAbsorb.arcane = totalAbsorb.arcane + (equippedItem:getCustomAttribute("rarity_arcaneAbsorb") or 0)
        end
    end

    player:setStorageValue(977544, totalAbsorb.fire)
    player:setStorageValue(977545, totalAbsorb.physical)
    player:setStorageValue(977546, totalAbsorb.energy)
    player:setStorageValue(977547, totalAbsorb.earth)
    player:setStorageValue(977548, totalAbsorb.drown)
    player:setStorageValue(977549, totalAbsorb.ice)
    player:setStorageValue(977550, totalAbsorb.holy)
    player:setStorageValue(977551, totalAbsorb.death)
    player:setStorageValue(977552, totalAbsorb.water)
    player:setStorageValue(977553, totalAbsorb.arcane)
end


local function onEquip(player, item, slotPosition)
    local cleanSlot = true
    for index, info in pairs(conditions) do
        local key = string.format("rarity_%s", index)
        local value = item:getCustomAttribute(key) or 0
        if value ~= 0 then
            local condition = Condition(info.condition.type, info.condition.id)
            condition:setTicks(info.condition.ticks)
            local subId = (conditionCount * slotPosition) + info.condition.subId
            condition:setParameter(CONDITION_PARAM_SUBID, subId)
            if info.condition.healthTicks then
                condition:setParameter(CONDITION_PARAM_HEALTHTICKS, info.condition.healthTicks)
            end
            if info.condition.manaTicks then
                condition:setParameter(CONDITION_PARAM_MANATICKS, info.condition.manaTicks)
            end
            condition:setParameter(info.condition.param, value)
            player:addCondition(condition)
            cleanSlot = false
        end
    end

    local absorbTypes = {
        {key = "rarity_FireAbsorb", storage = 977544},
        {key = "rarity_physicalAbsorb", storage = 977545},
        {key = "rarity_energyAbsorb", storage = 977546},
        {key = "rarity_earthAbsorb", storage = 977547},
        {key = "rarity_drownAbsorb", storage = 977548},
        {key = "rarity_iceAbsorb", storage = 977549},
        {key = "rarity_holyAbsorb", storage = 977550},
        {key = "rarity_deathAbsorb", storage = 977551},
        {key = "rarity_waterAbsorb", storage = 977552},
        {key = "rarity_arcaneAbsorb", storage = 977553}
    }

    for _, absorb in pairs(absorbTypes) do
        local absorbValue = item:getCustomAttribute(absorb.key) or 0
        if absorbValue > 0 then
            local currentAbsorb = player:getStorageValue(absorb.storage) or 0
            player:setStorageValue(absorb.storage, currentAbsorb + absorbValue)
        end
    end

    local elementTypes = {
        {key = "rarity_elementfire",   storage = 977554},
        {key = "rarity_elementice",    storage = 977555},
        {key = "rarity_elementenergy", storage = 977556},
        {key = "rarity_elementearth",  storage = 977557},
        {key = "rarity_elementdeath",  storage = 977558},
        {key = "rarity_elementwater",  storage = 977559},
        {key = "rarity_elementholy",   storage = 977560},
        {key = "rarity_elementarcane", storage = 977561},
    }

    for _, elem in ipairs(elementTypes) do
        local bonusValue = item:getCustomAttribute(elem.key) or 0
        if bonusValue > 0 then
            local currentValue = player:getStorageValue(elem.storage) or 0
            if currentValue < 0 then
                currentValue = 0
            end
            player:setStorageValue(elem.storage, currentValue + bonusValue)
        end
    end

    if cleanSlot then
        onDeEquip(player, slotPosition)
    end
end

--- Not Used since we don't need it, it was done to check resistances and skills applied to player
--- I leave it here in case someone want extend or want work on it
local ec = EventCallback

function ec.onItemMoved(player, item, count, fromPosition, toPosition, fromCylinder, toCylinder)
    if fromPosition.x == CONTAINER_POSITION and bit.band(fromPosition.y, 0x40) == 0 then
        local itemType = item:getType()
        if usesSlot(itemType, fromPosition.y) then
            onDeEquip(player, fromPosition.y)
        end
    end

    if toPosition.x == CONTAINER_POSITION and bit.band(toPosition.y, 0x40) == 0 then
        local itemType = item:getType()
        if usesSlot(itemType, toPosition.y) then
            onEquip(player, item, toPosition.y)
        end
    end
end

ec:register(10)

creatureEvent = CreatureEvent("rarity_onThink")

local function onThinkInventory(playerId)
    local player = Player(playerId)
    if not player then
        return
    end

    for i = CONST_SLOT_HEAD, CONST_SLOT_GLOVES do
        local item = player:getSlotItem(i)
        if not item then
            onDeEquip(player, i)
        end
    end

    addEvent(onThinkInventory, 3000, playerId)
end

local creatureEvent = CreatureEvent("rarity_Login")

function creatureEvent.onLogin(player)
    for i = CONST_SLOT_HEAD, CONST_SLOT_GLOVES do
        local item = player:getSlotItem(i)
        if item then
            if usesSlot(item:getType(), i) then
                onEquip(player, item, i)
            end
        end
    end

    addEvent(onThinkInventory, 3000, player:getId())
    return true
end

creatureEvent:register()
