local creatureEvent = CreatureEvent("rarity_onHealthChangeAbsorb")

function creatureEvent.onHealthChange(target, source, primaryDamage, primaryType, secondaryDamage, secondaryType, origin)
    if not target or not target:isPlayer() then
        return primaryDamage, primaryType, secondaryDamage, secondaryType
    end

    local absorbTypes = {
        {type = COMBAT_FIREDAMAGE, storage = 977544},
        {type = COMBAT_PHYSICALDAMAGE, storage = 977545},
        {type = COMBAT_ENERGYDAMAGE, storage = 977546},
        {type = COMBAT_EARTHDAMAGE, storage = 977547},
        {type = COMBAT_DROWNDAMAGE, storage = 977548},
        {type = COMBAT_ICEDAMAGE, storage = 977549},
        {type = COMBAT_HOLYDAMAGE, storage = 977550},
        {type = COMBAT_DEATHDAMAGE, storage = 977551},
        {type = COMBAT_WATERDAMAGE, storage = 977552},
        {type = COMBAT_ARCANEDAMAGE, storage = 977553}
    }

    for _, absorb in ipairs(absorbTypes) do
        local absorbValue = target:getStorageValue(absorb.storage) or 0
        if primaryType == absorb.type and absorbValue > 0 then
            if absorbValue >= 100 then
                primaryDamage = 0
            else
                local reducedPrimaryDamage = math.floor(primaryDamage * (1 - absorbValue / 100))
                primaryDamage = math.max(0, reducedPrimaryDamage)
            end
        end

        if secondaryType == absorb.type and absorbValue > 0 then
            local reducedSecondaryDamage = math.floor(secondaryDamage * (1 - absorbValue / 100))
            secondaryDamage = math.max(0, reducedSecondaryDamage)
        end

        if origin == ORIGIN_NONE and primaryType == absorb.type and absorbValue > 0 then
            local reducedFieldDamage = math.floor(primaryDamage * (1 - absorbValue / 100))
            primaryDamage = math.max(0, reducedFieldDamage)
        end
    end

    return primaryDamage, primaryType, secondaryDamage, secondaryType
end

creatureEvent:register()


local ec = EventCallback

function ec.onTargetCombat(creature, target)
    if creature and target then
        if creature:isPlayer() then
            target:registerEvent("rarity_onHealthChangeAbsorb")
        end
    end
    return RETURNVALUE_NOERROR
end

ec:register(7)