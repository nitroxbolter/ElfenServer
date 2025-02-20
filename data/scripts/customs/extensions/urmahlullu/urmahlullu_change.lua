local timetochange = 60 
local time = 0 
local lastForm = '' 

local config = {
    {itemId = 26691},
    {itemId = 2016},
}


local function changeForm(creature, formName)
    local position = creature:getPosition()
    creature:remove()
    Game.createMonster(formName, position, true, true)
    time = os.time()
    lastForm = formName 
end

local urmahlulluChanges = CreatureEvent("UrmahlulluChanges")

function urmahlulluChanges.onHealthChange(creature, attacker, primaryDamage, primaryType,
                                          secondaryDamage, secondaryType)
    if creature and creature:getName() == 'Urmahlullu the Immaculate' and lastForm ~= 'Wildness of Urmahlullu' then
        if creature:getHealth() <= 400000 then
            changeForm(creature, 'Wildness of Urmahlullu')
        end
    elseif creature and creature:getName() == 'Wildness of Urmahlullu' and lastForm ~= 'Urmahlullu the Tamed' then
        if creature:getHealth() <= 300000 then
            if os.time() > time + timetochange then
                changeForm(creature, 'Urmahlullu the Immaculate')
            else
                changeForm(creature, 'Urmahlullu the Tamed')
            end
        end
    elseif creature and creature:getName() == 'Urmahlullu the Tamed' and lastForm ~= 'Wisdom of Urmahlullu' then
        if creature:getHealth() <= 200000 then
            if os.time() > time + timetochange then
                changeForm(creature, 'Wildness of Urmahlullu')
            else
                changeForm(creature, 'Wisdom of Urmahlullu')
            end
        end
    elseif creature and creature:getName() == 'Wisdom of Urmahlullu' and lastForm ~= 'Urmahlullu the Weakened' then
        if creature:getHealth() <= 100000 then
            if os.time() > time + timetochange then
                changeForm(creature, 'Urmahlullu the Tamed')
            else
                changeForm(creature, 'Urmahlullu the Weakened')
            end
        end
    end
    return primaryDamage, primaryType, secondaryDamage, secondaryType
end

urmahlulluChanges:register()

local weakenedDeath = CreatureEvent("WeakenedDeath")

function weakenedDeath.onDeath(creature, corpse, killer, mostDamageKiller, unjustified, mostDamageUnjustified)
    if creature and creature:getName() == 'Urmahlullu the Weakened' then
        if os.time() > time + timetochange then
            local position = creature:getPosition()
            local creatureTile = Tile(position)
            if not creatureTile then
                return true
            end

            for _, tab in ipairs(config) do
                local item = creatureTile:getItemById(tab.itemId)
                if item then
                    item:remove()
                end
            end

            Game.createMonster('Wisdom of Urmahlullu', position, true, true)
            time = os.time()
            lastForm = 'Wisdom of Urmahlullu' 
        end
    end
    return true
end

weakenedDeath:register()
