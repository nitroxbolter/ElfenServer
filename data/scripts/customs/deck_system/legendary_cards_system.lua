-- Script maded by

--            _                   _             _     _      _    _          _        _                 _______   
--           / /\                _\ \          /\ \ /_/\    /\ \ /\ \    _ / /\   _  /\ \              / ___  /\  
--          / /  \              /\__ \        /  \ \\ \ \   \ \_\\ \ \  /_/ / /  /\_\\ \ \            / /\__\ \ \ 
--         / / /\ \            / /_ \_\      / /\ \ \\ \ \__/ / / \ \ \ \___\/  / / / \ \ \          / / /   \_\/ 
--        / / /\ \ \          / / /\/_/     / / /\ \_\\ \__ \/_/  / / /  \ \ \ / / /   \ \ \        / / /         
--       / / /  \ \ \        / / /         / /_/_ \/_/ \/_/\__/\  \ \ \   \_\ \\ \ \____\ \ \       \ \ \         
--      / / /___/ /\ \      / / /         / /____/\     _/\/__\ \  \ \ \  / / / \ \________\ \       \ \ \        
--     / / /_____/ /\ \    / / / ____    / /\____\/    / _/_/\ \ \  \ \ \/ / /   \/________/\ \       \ \ \       
--    / /_________/\ \ \  / /_/_/ ___/\ / / /______   / / /   \ \ \  \ \ \/ /              \ \ \  ____/ / /       
--   / / /_       __\ \_\/_______/\__\// / /_______\ / / /    /_/ /   \ \  /                \ \_\/_____/ /        
--   \_\___\     /____/_/\_______\/    \/__________/ \/_/     \_\/     \_\/                  \/_/\_____\/         


--- Do not touch if you dont know what you are doing ---


local config = {
    chance = 7,
    chance2 = 9,
    chance3 = 14,
    chance4 = 20,
    summonKnight1 = 'Nineveth',
    summonKnight2 = 'Kaldor',
    summonKnight3 = 'Blackfang',
    summonKnight4 = 'Thirain',
    summonPaladin1 = 'Vykas',
    summonPaladin2 = 'Wonpho',
    summonPaladin3 = 'Kyzra',
    summonPaladin4 = 'Shandi',
    summonDruid1 = 'Signatus',
    summonDruid2 = 'Erasmo',
    summonDruid3 = 'Azena',
    summonDruid4 = 'Navinos',
    summonSorcerer1 = 'Kagros',
    summonSorcerer2 = 'Lutia',
    summonSorcerer3 = 'Thaemine',
    summonSorcerer4 = 'Halrock',
    bonusKnight = CONDITION_PARAM_SKILL_MELEE,
    bonusSorcAndDruid = CONDITION_PARAM_STAT_MAGICPOINTS,
    bonusPaladin = CONDITION_PARAM_SKILL_DISTANCE,
    bonusPercent = 3,
    bonusPercent2 = 6,
    bonusPercent3 = 9,
    bonusPercent4 = 15,
    duration = 25,
    duration2 = 45,
    duration3 = 65,
    duration4= 90,
    minDetectableDamage = 50,
    onlyWeapons = false,
    itemidKnights = {
       7382, 7403, 7405, 6528, 8932, 2408, 2390, 11306, 12613, 22398, 22399, 22400, 22401, 22402, 22403, 26759, 26760, 27204,
       27214, 27269, 27377, 27378, 27400, 27458, 27459, 27464, 27465, 27654, 27655, 27681, 2454, 2443, 6553, 7453, 2415, 8926, 
       11309, 22404, 22405, 22406, 22407, 22408, 22409, 27205, 27216, 27285, 27379, 27380, 27404, 27462, 27463, 27468, 27469, 27643,
       27658, 27659, 27682, 2444, 2452, 7423, 829, 11308, 201108, 22410, 22411, 22412, 22413, 22414, 22415, 27206, 27210, 27229,
       27381, 27382, 27405, 27460, 27461, 27466, 27467, 27642, 27656, 27657, 27683, 28025, 28026, 28027, 28102, 28103, 28104, 28128,
       28129, 28130, 28134, 28135, 28373, 28374, 28375, 28712, 28714, 28716, 29481, 29482, 29483, 29484, 29485, 29486
    },
    itemidDruid = {
        18411, 18412, 24839, 26757, 27197, 27386, 27396, 27479, 27480, 27209, 27649, 27671, 27672, 27689, 28042, 28110, 28133, 28376, 28717, 29489, 29490
    },
    itemidSorcerer = {
        18390, 18409, 19391, 25421, 25422, 26756, 27194, 27198, 27208, 27385, 27397, 27476, 27477, 27650, 27665, 27666, 27688, 28042, 28110,
        28132, 28376, 28717, 29487, 29488
    },
    itemidPaladin = {
        5803, 8850, 8853, 8852, 8851, 8856, 8858, 8854, 15643, 15644, 16111, 18453, 18454, 21690, 22416, 22417, 22418, 
        22419, 22420, 22421, 25522, 25523, 26758, 26765, 27199, 27212, 27230, 27383, 27384, 27395, 27471, 27472, 27473, 
        27474, 27646, 27661, 27662, 27685, 28051, 28052, 28116, 28131, 28137, 28378, 28713, 28715, 29477, 29478, 29479, 29480
    }
}


local function whenPlayerAttack(player, damage)
    local leftHand = player:getSlotItem(CONST_SLOT_LEFT)
    --- KNIGHTS --- 
if player:getStorageValue(DeckSystem.Legendary.LegendaryAncestralKaiserLv6) == 1 then
    local canCreateSummon = player:getStorageValue(DeckSystem.Legendary.CanCreateSummon)
        if canCreateSummon < 1 then
    if damage >= config.minDetectableDamage and math.random(100) <= config.chance4 and leftHand and table.find(config.itemidKnights, leftHand.itemid) then
        local monster = Game.createMonster(config.summonKnight4, player:getPosition())
        if monster then
            monster:setMaster(player)
            monster:registerEvent('SummonFollow')
            monster:getPosition():sendMagicEffect(214)
            player:setStorageValue(DeckSystem.Legendary.CanCreateSummon, 1)
            playSound(player, "monster_summoned.ogg")
            addEvent(function (cid)
                local monster = Monster(cid)
                if monster then
                    monster:getPosition():sendMagicEffect(218)
                    player:setStorageValue(DeckSystem.Legendary.CanCreateSummon, 0)
                    monster:remove()
                end
            end, config.duration4 * 1000, monster:getId())
                local bonus = Condition(CONDITION_ATTRIBUTES)
                bonus:setParameter(CONDITION_PARAM_TICKS, config.duration4 * 1000)
                bonus:setParameter(config.bonusKnight, config.bonusPercent4)
                player:addCondition(bonus)
        end
    end
end
elseif player:getStorageValue(DeckSystem.Legendary.LegendaryAbyssalKaiserLv6) == 1 then
    local canCreateSummon = player:getStorageValue(DeckSystem.Legendary.CanCreateSummon)
        if canCreateSummon < 1 then
    if damage >= config.minDetectableDamage and math.random(100) <= config.chance3 and leftHand and table.find(config.itemidKnights, leftHand.itemid) then
        local monster = Game.createMonster(config.summonKnight3, player:getPosition())
        if monster then
            monster:setMaster(player)
            monster:registerEvent('SummonFollow')
            monster:getPosition():sendMagicEffect(214)
            player:setStorageValue(DeckSystem.Legendary.CanCreateSummon, 1)
            playSound(player, "monster_summoned.ogg")
            addEvent(function (cid)
                local monster = Monster(cid)
                if monster then
                    monster:getPosition():sendMagicEffect(218)
                    player:setStorageValue(DeckSystem.Legendary.CanCreateSummon, 0)
                    monster:remove()
                end
            end, config.duration3 * 1000, monster:getId())
                local bonus = Condition(CONDITION_ATTRIBUTES)
                bonus:setParameter(CONDITION_PARAM_TICKS, config.duration3 * 1000)
                bonus:setParameter(config.bonusKnight, config.bonusPercent3)
                player:addCondition(bonus)
        end
    end
end
elseif player:getStorageValue(DeckSystem.Legendary.LegendaryChaosKaiserLv6) == 1 then
    local canCreateSummon = player:getStorageValue(DeckSystem.Legendary.CanCreateSummon)
        if canCreateSummon < 1 then
    if damage >= config.minDetectableDamage and math.random(100) <= config.chance2 and leftHand and table.find(config.itemidKnights, leftHand.itemid) then
        local monster = Game.createMonster(config.summonKnight2, player:getPosition())
        if monster then
            monster:setMaster(player)
            monster:registerEvent('SummonFollow')
            monster:getPosition():sendMagicEffect(214)
            player:setStorageValue(DeckSystem.Legendary.CanCreateSummon, 1)
            playSound(player, "monster_summoned.ogg")
            addEvent(function (cid)
                local monster = Monster(cid)
                if monster then
                    monster:getPosition():sendMagicEffect(218)
                    player:setStorageValue(DeckSystem.Legendary.CanCreateSummon, 0)
                    monster:remove()
                end
            end, config.duration2 * 1000, monster:getId())
                local bonus = Condition(CONDITION_ATTRIBUTES)
                bonus:setParameter(CONDITION_PARAM_TICKS, config.duration2 * 1000)
                bonus:setParameter(config.bonusKnight, config.bonusPercent2)
                player:addCondition(bonus)
        end
    end
end
elseif player:getStorageValue(DeckSystem.Legendary.LegendaryExoticKaiserLv6) == 1 then
    local canCreateSummon = player:getStorageValue(DeckSystem.Legendary.CanCreateSummon)
        if canCreateSummon < 1 then
        if damage >= config.minDetectableDamage and math.random(100) <= config.chance and leftHand and table.find(config.itemidKnights, leftHand.itemid) then
            local monster = Game.createMonster(config.summonKnight1, player:getPosition())
            if monster then
                monster:setMaster(player)
                monster:registerEvent('SummonFollow')
                monster:getPosition():sendMagicEffect(214)
                player:setStorageValue(DeckSystem.Legendary.CanCreateSummon, 1)
                playSound(player, "monster_summoned.ogg")
                addEvent(function (cid)
                    local monster = Monster(cid)
                    if monster then
                        monster:getPosition():sendMagicEffect(218)
                        player:setStorageValue(DeckSystem.Legendary.CanCreateSummon, 0)
                        monster:remove()
                    end
                end, config.duration * 1000, monster:getId())
                    local bonus = Condition(CONDITION_ATTRIBUTES)
                    bonus:setParameter(CONDITION_PARAM_TICKS, config.duration * 1000)
                    bonus:setParameter(config.bonusKnight, config.bonusPercent)
                    player:addCondition(bonus)
            end
        end
    end
        --- DRUIDS ------
    elseif player:getStorageValue(DeckSystem.Legendary.LegendaryAncestralSaydonLv6) == 1 then
        local canCreateSummon = player:getStorageValue(DeckSystem.Legendary.CanCreateSummon)
        if canCreateSummon < 1 then
        if damage >= config.minDetectableDamage and math.random(100) <= config.chance4 and leftHand and table.find(config.itemidDruid, leftHand.itemid) then
            local monster = Game.createMonster(config.summonDruid4, player:getPosition())
            if monster then
                monster:setMaster(player)
                monster:registerEvent('SummonFollow')
                monster:getPosition():sendMagicEffect(214)
                player:setStorageValue(DeckSystem.Legendary.CanCreateSummon, 1)
                playSound(player, "monster_summoned.ogg")
                addEvent(function (cid)
                    local monster = Monster(cid)
                    if monster then
                        monster:getPosition():sendMagicEffect(218)
                        player:setStorageValue(DeckSystem.Legendary.CanCreateSummon, 0)
                        monster:remove()
                    end
                end, config.duration4 * 1000, monster:getId())
                    local bonus = Condition(CONDITION_ATTRIBUTES)
                    bonus:setParameter(CONDITION_PARAM_TICKS, config.duration4 * 1000)
                    bonus:setParameter(config.bonusSorcAndDruid, config.bonusPercent4)
                    player:addCondition(bonus)
            end
        end
    end
    elseif player:getStorageValue(DeckSystem.Legendary.LegendaryAbyssalSaydonLv6) == 1 then
        local canCreateSummon = player:getStorageValue(DeckSystem.Legendary.CanCreateSummon)
        if canCreateSummon < 1 then
        if damage >= config.minDetectableDamage and math.random(100) <= config.chance3 and leftHand and table.find(config.itemidDruid, leftHand.itemid) then
            local monster = Game.createMonster(config.summonDruid3, player:getPosition())
            if monster then
                monster:setMaster(player)
                monster:registerEvent('SummonFollow')
                monster:getPosition():sendMagicEffect(214)
                player:setStorageValue(DeckSystem.Legendary.CanCreateSummon, 1)
                playSound(player, "monster_summoned.ogg")
                addEvent(function (cid)
                    local monster = Monster(cid)
                    if monster then
                        monster:getPosition():sendMagicEffect(218)
                        player:setStorageValue(DeckSystem.Legendary.CanCreateSummon, 0)
                        monster:remove()
                    end
                end, config.duration3 * 1000, monster:getId())
                    local bonus = Condition(CONDITION_ATTRIBUTES)
                    bonus:setParameter(CONDITION_PARAM_TICKS, config.duration3 * 1000)
                    bonus:setParameter(config.bonusSorcAndDruid, config.bonusPercent3)
                    player:addCondition(bonus)
            end
        end
    end
    elseif player:getStorageValue(DeckSystem.Legendary.LegendaryChaosSaydonLv6) == 1 then
        local canCreateSummon = player:getStorageValue(DeckSystem.Legendary.CanCreateSummon)
        if canCreateSummon < 1 then
        if damage >= config.minDetectableDamage and math.random(100) <= config.chance2 and leftHand and table.find(config.itemidDruid, leftHand.itemid) then
            local monster = Game.createMonster(config.summonDruid2, player:getPosition())
            if monster then
                monster:setMaster(player)
                monster:registerEvent('SummonFollow')
                monster:getPosition():sendMagicEffect(214)
                player:setStorageValue(DeckSystem.Legendary.CanCreateSummon, 1)
                playSound(player, "monster_summoned.ogg")
                addEvent(function (cid)
                    local monster = Monster(cid)
                    if monster then
                        monster:getPosition():sendMagicEffect(218)
                        player:setStorageValue(DeckSystem.Legendary.CanCreateSummon, 0)
                        monster:remove()
                    end
                end, config.duration2 * 1000, monster:getId())
                    local bonus = Condition(CONDITION_ATTRIBUTES)
                    bonus:setParameter(CONDITION_PARAM_TICKS, config.duration2 * 1000)
                    bonus:setParameter(config.bonusSorcAndDruid, config.bonusPercent2)
                    player:addCondition(bonus)
            end
        end
    end
    elseif player:getStorageValue(DeckSystem.Legendary.LegendaryExoticSaydonLv6) == 1 then
        local canCreateSummon = player:getStorageValue(DeckSystem.Legendary.CanCreateSummon)
        if canCreateSummon < 1 then
        if damage >= config.minDetectableDamage and math.random(100) <= config.chance and leftHand and table.find(config.itemidDruid, leftHand.itemid) then
            local monster = Game.createMonster(config.summonDruid1, player:getPosition())
            if monster then
                monster:setMaster(player)
                monster:registerEvent('SummonFollow')
                monster:getPosition():sendMagicEffect(214)
                player:setStorageValue(DeckSystem.Legendary.CanCreateSummon, 1)
                playSound(player, "monster_summoned.ogg")
                addEvent(function (cid)
                    local monster = Monster(cid)
                    if monster then
                        monster:getPosition():sendMagicEffect(218)
                        player:setStorageValue(DeckSystem.Legendary.CanCreateSummon, 0)
                        monster:remove()
                    end
                end, config.duration * 1000, monster:getId())
                    local bonus = Condition(CONDITION_ATTRIBUTES)
                    bonus:setParameter(CONDITION_PARAM_TICKS, config.duration * 1000)
                    bonus:setParameter(config.bonusSorcAndDruid, config.bonusPercent)
                    player:addCondition(bonus)
            end
        end
    end
        --- PALADINS ---
    elseif player:getStorageValue(DeckSystem.Legendary.LegendaryAncestralVercruzeLv6) == 1 then
        local canCreateSummon = player:getStorageValue(DeckSystem.Legendary.CanCreateSummon)
        if canCreateSummon < 1 then
    if damage >= config.minDetectableDamage and math.random(100) <= config.chance4 and leftHand and table.find(config.itemidPaladin, leftHand.itemid) then
            local monster = Game.createMonster(config.summonPaladin4, player:getPosition())
            if monster then
                monster:setMaster(player)
                monster:registerEvent('SummonFollow')
                monster:getPosition():sendMagicEffect(214)
                player:setStorageValue(DeckSystem.Legendary.CanCreateSummon, 1)
                playSound(player, "monster_summoned.ogg")
                addEvent(function (cid)
                    local monster = Monster(cid)
                    if monster then
                        monster:getPosition():sendMagicEffect(218)
                        monster:remove()
                        player:setStorageValue(DeckSystem.Legendary.CanCreateSummon, 0)
                    end
                end, config.duration4 * 1000, monster:getId())
                    local bonus = Condition(CONDITION_ATTRIBUTES)
                    bonus:setParameter(CONDITION_PARAM_TICKS, config.duration4 * 1000)
                    bonus:setParameter(config.bonusPaladin, config.bonusPercent4)
                    player:addCondition(bonus)
            end
        end
    end
    elseif player:getStorageValue(DeckSystem.Legendary.LegendaryAbyssalVercruzeLv6) == 1 then
        local canCreateSummon = player:getStorageValue(DeckSystem.Legendary.CanCreateSummon)
        if canCreateSummon < 1 then
        if damage >= config.minDetectableDamage and math.random(100) <= config.chance3 and leftHand and table.find(config.itemidPaladin, leftHand.itemid) then
            local monster = Game.createMonster(config.summonPaladin3, player:getPosition())
            if monster then
                monster:setMaster(player)
                monster:registerEvent('SummonFollow')
                monster:getPosition():sendMagicEffect(214)
                player:setStorageValue(DeckSystem.Legendary.CanCreateSummon, 1)
                playSound(player, "monster_summoned.ogg")
                addEvent(function (cid)
                    local monster = Monster(cid)
                    if monster then
                        monster:getPosition():sendMagicEffect(218)
                        monster:remove()
                        player:setStorageValue(DeckSystem.Legendary.CanCreateSummon, 0)
                    end
                end, config.duration3 * 1000, monster:getId())
                    local bonus = Condition(CONDITION_ATTRIBUTES)
                    bonus:setParameter(CONDITION_PARAM_TICKS, config.duration3 * 1000)
                    bonus:setParameter(config.bonusPaladin, config.bonusPercent3)
                    player:addCondition(bonus)
            end
        end
    end
    elseif player:getStorageValue(DeckSystem.Legendary.LegendaryChaosVercruzeLv6) == 1 then
        local canCreateSummon = player:getStorageValue(DeckSystem.Legendary.CanCreateSummon)
        if canCreateSummon < 1 then
        if damage >= config.minDetectableDamage and math.random(100) <= config.chance2 and leftHand and table.find(config.itemidPaladin, leftHand.itemid) then
            local monster = Game.createMonster(config.summonPaladin2, player:getPosition())
            if monster then
                monster:setMaster(player)
                monster:registerEvent('SummonFollow')
                monster:getPosition():sendMagicEffect(214)
                player:setStorageValue(DeckSystem.Legendary.CanCreateSummon, 1)
                playSound(player, "monster_summoned.ogg")
                addEvent(function (cid)
                    local monster = Monster(cid)
                    if monster then
                        monster:getPosition():sendMagicEffect(218)
                        monster:remove()
                        player:setStorageValue(DeckSystem.Legendary.CanCreateSummon, 0)
                    end
                end, config.duration2 * 1000, monster:getId())
                    local bonus = Condition(CONDITION_ATTRIBUTES)
                    bonus:setParameter(CONDITION_PARAM_TICKS, config.duration2 * 1000)
                    bonus:setParameter(config.bonusPaladin, config.bonusPercent2)
                    player:addCondition(bonus)
            end
        end
    end
    elseif player:getStorageValue(DeckSystem.Legendary.LegendaryExoticVercruzeLv6) == 1 then
        local canCreateSummon = player:getStorageValue(DeckSystem.Legendary.CanCreateSummon)
        if canCreateSummon < 1 then
        if damage >= config.minDetectableDamage and math.random(100) <= config.chance and leftHand and table.find(config.itemidPaladin, leftHand.itemid) then
            local monster = Game.createMonster(config.summonPaladin1, player:getPosition())
            if monster then
                monster:setMaster(player)
                monster:registerEvent('SummonFollow')
                monster:getPosition():sendMagicEffect(214)
                player:setStorageValue(DeckSystem.Legendary.CanCreateSummon, 1)
                playSound(player, "monster_summoned.ogg")
                addEvent(function (cid)
                    local monster = Monster(cid)
                    if monster then
                        monster:getPosition():sendMagicEffect(218)
                        player:setStorageValue(DeckSystem.Legendary.CanCreateSummon, 0)
                        monster:remove()
                    end
                end, config.duration * 1000, monster:getId())
                    local bonus = Condition(CONDITION_ATTRIBUTES)
                    bonus:setParameter(CONDITION_PARAM_TICKS, config.duration * 1000)
                    bonus:setParameter(config.bonusPaladin, config.bonusPercent)
                    player:addCondition(bonus)
            end
        end
    end
        --- SORCERERS ---
    elseif player:getStorageValue(DeckSystem.Legendary.LegendaryAncestralAscalonLv6) == 1 then
        local canCreateSummon = player:getStorageValue(DeckSystem.Legendary.CanCreateSummon)
        if canCreateSummon < 1 then
        if damage >= config.minDetectableDamage and math.random(100) <= config.chance4 and leftHand and table.find(config.itemidSorcerer, leftHand.itemid) then
            local monster = Game.createMonster(config.summonSorcerer4, player:getPosition())
            if monster then
                monster:setMaster(player)
                monster:registerEvent('SummonFollow')
                monster:getPosition():sendMagicEffect(214)
                player:setStorageValue(DeckSystem.Legendary.CanCreateSummon, 1)
                playSound(player, "monster_summoned.ogg")
                addEvent(function (cid)
                    local monster = Monster(cid)
                    if monster then
                        monster:getPosition():sendMagicEffect(218)
                        monster:remove()
                        player:setStorageValue(DeckSystem.Legendary.CanCreateSummon, 0)
                    end
                end, config.duration4 * 1000, monster:getId())
                    local bonus = Condition(CONDITION_ATTRIBUTES)
                    bonus:setParameter(CONDITION_PARAM_TICKS, config.duration4 * 1000)
                    bonus:setParameter(config.bonusSorcAndDruid, config.bonusPercent4)
                    player:addCondition(bonus)
            end
        end
    end
    elseif player:getStorageValue(DeckSystem.Legendary.LegendaryAbyssalAscalonLv6) == 1 then
        local canCreateSummon = player:getStorageValue(DeckSystem.Legendary.CanCreateSummon)
        if canCreateSummon < 1 then
        if damage >= config.minDetectableDamage and math.random(100) <= config.chance3 and leftHand and table.find(config.itemidSorcerer, leftHand.itemid) then
            local monster = Game.createMonster(config.summonSorcerer3, player:getPosition())
            if monster then
                monster:setMaster(player)
                monster:registerEvent('SummonFollow')
                monster:getPosition():sendMagicEffect(214)
                player:setStorageValue(DeckSystem.Legendary.CanCreateSummon, 1)
                playSound(player, "monster_summoned.ogg")
                addEvent(function (cid)
                    local monster = Monster(cid)
                    if monster then
                        monster:getPosition():sendMagicEffect(218)
                        player:setStorageValue(DeckSystem.Legendary.CanCreateSummon, 0)
                        monster:remove()
                    end
                end, config.duration3 * 1000, monster:getId())
                    local bonus = Condition(CONDITION_ATTRIBUTES)
                    bonus:setParameter(CONDITION_PARAM_TICKS, config.duration3 * 1000)
                    bonus:setParameter(config.bonusSorcAndDruid, config.bonusPercent3)
                    player:addCondition(bonus)
            end
        end
    end
    elseif player:getStorageValue(DeckSystem.Legendary.LegendaryChaosAscalonLv6) == 1 then
        local canCreateSummon = player:getStorageValue(DeckSystem.Legendary.CanCreateSummon)
        if canCreateSummon < 1 then
        if damage >= config.minDetectableDamage and math.random(100) <= config.chance2 and leftHand and table.find(config.itemidSorcerer, leftHand.itemid) then
            local monster = Game.createMonster(config.summonSorcerer2, player:getPosition())
            if monster then
                monster:setMaster(player)
                monster:registerEvent('SummonFollow')
                monster:getPosition():sendMagicEffect(214)
                player:setStorageValue(DeckSystem.Legendary.CanCreateSummon, 1)
                playSound(player, "monster_summoned.ogg")
                addEvent(function (cid)
                    local monster = Monster(cid)
                    if monster then
                        monster:getPosition():sendMagicEffect(218)
                        player:setStorageValue(DeckSystem.Legendary.CanCreateSummon, 0)
                        monster:remove()
                    end
                end, config.duration2 * 1000, monster:getId())
                    local bonus = Condition(CONDITION_ATTRIBUTES)
                    bonus:setParameter(CONDITION_PARAM_TICKS, config.duration2 * 1000)
                    bonus:setParameter(config.bonusSorcAndDruid, config.bonusPercent2)
                    player:addCondition(bonus)
            end
        end
    end
    elseif player:getStorageValue(DeckSystem.Legendary.LegendaryExoticAscalonLv6) == 1 then
        local canCreateSummon = player:getStorageValue(DeckSystem.Legendary.CanCreateSummon)
        if canCreateSummon < 1 then
        if damage >= config.minDetectableDamage and math.random(100) <= config.chance and leftHand and table.find(config.itemidSorcerer, leftHand.itemid) then
            local monster = Game.createMonster(config.summonSorcerer1, player:getPosition())
            if monster then
                monster:setMaster(player)
                monster:registerEvent('SummonFollow')
                monster:getPosition():sendMagicEffect(214)
                player:setStorageValue(DeckSystem.Legendary.CanCreateSummon, 1)
                playSound(player, "monster_summoned.ogg")
                addEvent(function (cid)
                    local monster = Monster(cid)
                    if monster then
                        monster:getPosition():sendMagicEffect(218)
                        player:setStorageValue(DeckSystem.Legendary.CanCreateSummon, 0)
                        monster:remove()
                    end
                end, config.duration * 1000, monster:getId())
                    local bonus = Condition(CONDITION_ATTRIBUTES)
                    bonus:setParameter(CONDITION_PARAM_TICKS, config.duration * 1000)
                    bonus:setParameter(config.bonusSorcAndDruid, config.bonusPercent)
                    player:addCondition(bonus)
            end
        end
    end
    end
end

local creatureEvent = CreatureEvent("WhenPlayerAttackHealth")

function creatureEvent.onHealthChange(creature, player, primaryDamage, primaryType, secondaryDamage, secondaryType, origin)
    if not player then
        return primaryDamage, primaryType, secondaryDamage, secondaryType
    end
    if primaryType == COMBAT_HEALING or not player:isPlayer() then
        return primaryDamage, primaryType, secondaryDamage, secondaryType
    end
    if not config.onlyWeapons or table.contains({ORIGIN_WAND, ORIGIN_MELEE, ORIGIN_RANGED}, origin) then
        whenPlayerAttack(player, primaryDamage + secondaryDamage)
    end
    return primaryDamage, primaryType, secondaryDamage, secondaryType
end

creatureEvent:register()

local creatureEvent = CreatureEvent("WhenPlayerAttackMana")

function creatureEvent.onManaChange(creature, player, primaryDamage, primaryType, secondaryDamage, secondaryType, origin)
    if not player then
        return primaryDamage, primaryType, secondaryDamage, secondaryType
    end
    if primaryType == COMBAT_MANADRAIN or not player:isPlayer() then
        return primaryDamage, primaryType, secondaryDamage, secondaryType
    end
    if not config.onlyWeapons or table.contains({ORIGIN_WAND, ORIGIN_MELEE, ORIGIN_RANGED}, origin) then
        whenPlayerAttack(player, primaryDamage + secondaryDamage)
    end
    return primaryDamage, primaryType, secondaryDamage, secondaryType
end

creatureEvent:register()



