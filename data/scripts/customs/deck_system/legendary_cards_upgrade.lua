local action = Action()

local config = {
    messages = {
        success = {
            text  = 'The Legendary card has been upgraded!',
            talkType = MESSAGE_INFO_DESCR,
            effect   = 210
        },

        fail = {
            text  = 'Legendary Card Upgrade Failed.',
            talkType = MESSAGE_INFO_DESCR,
            effect   = 212
        }

    },

    gear = {
        --- Exotic Lv1 > Lv2 > Lv3...Lv6 ---
        [27699] = {tier = 1, upgraderType = 'essence', chance = 30,
            items = {
                [27542] = 27543, -- Exotic Ascalon 1 > 2
                [27543] = 27544, -- Exotic Ascalon 2 > 3
                [27544] = 27545, -- Exotic Ascalon 3 > 4
                [27545] = 27546, -- Exotic Ascalon 4 > 5
                [27546] = 27547, -- Exotic Ascalon 5 > 6
                [27566] = 27567, -- Exotic Saydon 1 > 2
                [27567] = 27568, -- Exotic Saydon 2 > 3
                [27568] = 27569, -- Exotic Saydon 3 > 4
                [27569] = 27570, -- Exotic Saydon 4 > 5
                [27570] = 27571, -- Exotic Saydon 5 > 6
                [27590] = 27591, -- Exotic Vercruze 1 > 2
                [27591] = 27592, -- Exotic Vercruze 2 > 3
                [27592] = 27593, -- Exotic Vercruze 3 > 4
                [27593] = 27594, -- Exotic Vercruze 4 > 5
                [27594] = 27595, -- Exotic Vercruze 5 > 6
                [27608] = 27609, -- Exotic Kaiser 1 > 2
                [27609] = 27610, -- Exotic Kaiser 2 > 3
                [27610] = 27611, -- Exotic Kaiser 3 > 4
                [27611] = 27612, -- Exotic Kaiser 4 > 5
                [27612] = 27613, -- Exotic Kaiser 5 > 6
            }
        },
        --- Chaos Lv1 > Lv2 > Lv3...Lv6 ---
        [27700] = {tier = 2, upgraderType = 'essence', chance = 20,
            items = {
                [27548] = 27549, -- Chaos Ascalon 1 > 2
                [27549] = 27550, -- Chaos Ascalon 2 > 3
                [27550] = 27551, -- Chaos Ascalon 3 > 4
                [27551] = 27552, -- Chaos Ascalon 4 > 5
                [27552] = 27553, -- Chaos Ascalon 5 > 6
                [27572] = 27573, -- Chaos Saydon 1 > 2
                [27573] = 27574, -- Chaos Saydon 2 > 3
                [27574] = 27575, -- Chaos Saydon 3 > 4
                [27575] = 27576, -- Chaos Saydon 4 > 5
                [27576] = 27577, -- Chaos Saydon 5 > 6
                [27596] = 27597, -- Chaos Vercruze 1 > 2
                [27597] = 27598, -- Chaos Vercruze 2 > 3
                [27598] = 27599, -- Chaos Vercruze 3 > 4
                [27599] = 27600, -- Chaos Vercruze 4 > 5
                [27600] = 27601, -- Chaos Vercruze 5 > 6
                [27614] = 27615, -- Chaos Kaiser 1 > 2
                [27615] = 27616, -- Chaos Kaiser 2 > 3
                [27616] = 27617, -- Chaos Kaiser 3 > 4
                [27617] = 27618, -- Chaos Kaiser 4 > 5
                [27618] = 27619, -- Chaos Kaiser 5 > 6
            }
        },
        --- Abyssal Lv1 > Lv2 > Lv3...Lv6 ---
        [27701] = {tier = 3, upgraderType = 'essence', chance = 10,
            items = {
                [27554] = 27555, -- Abyssal Ascalon 1 > 2
                [27555] = 27556, -- Abyssal Ascalon 2 > 3
                [27556] = 27557, -- Abyssal Ascalon 3 > 4
                [27557] = 27558, -- Abyssal Ascalon 4 > 5
                [27558] = 27559, -- Abyssal Ascalon 5 > 6
                [27578] = 27579, -- Abyssal Saydon 1 > 2
                [27579] = 27580, -- Abyssal Saydon 2 > 3
                [27580] = 27581, -- Abyssal Saydon 3 > 4
                [27581] = 27582, -- Abyssal Saydon 4 > 5
                [27582] = 27583, -- Abyssal Saydon 5 > 6
                [27602] = 27603, -- Abyssal Vercruze 1 > 2
                [27603] = 27604, -- Abyssal Vercruze 2 > 3
                [27604] = 27605, -- Abyssal Vercruze 3 > 4
                [27605] = 27606, -- Abyssal Vercruze 4 > 5
                [27606] = 27607, -- Abyssal Vercruze 5 > 6
                [27620] = 27621, -- Abyssal Kaiser 1 > 2
                [27621] = 27622, -- Abyssal Kaiser 2 > 3
                [27622] = 27623, -- Abyssal Kaiser 3 > 4
                [27623] = 27624, -- Abyssal Kaiser 4 > 5
                [27624] = 27625, -- Abyssal Kaiser 5 > 6
            }
        },
        --- Ancestral Lv1 > Lv2 > Lv3...Lv6 ---
        [27702] = {tier = 2, upgraderType = 'essence', chance = 5,
            items = {
                [27560] = 27561, -- Ancestral Ascalon 1 > 2
                [27561] = 27562, -- Ancestral Ascalon 2 > 3
                [27562] = 27563, -- Ancestral Ascalon 3 > 4
                [27563] = 27564, -- Ancestral Ascalon 4 > 5
                [27564] = 27565, -- Ancestral Ascalon 5 > 6
                [27584] = 27585, -- Ancestral Saydon 1 > 2
                [27585] = 27586, -- Ancestral Saydon 2 > 3
                [27586] = 27587, -- Ancestral Saydon 3 > 4
                [27587] = 27588, -- Ancestral Saydon 4 > 5
                [27588] = 27589, -- Ancestral Saydon 5 > 6
                [27635] = 27636, -- Ancestral Vercruze 1 > 2
                [27636] = 27637, -- Ancestral Vercruze 2 > 3
                [27637] = 27638, -- Ancestral Vercruze 3 > 4
                [27638] = 27639, -- Ancestral Vercruze 4 > 5
                [27639] = 27640, -- Ancestral Vercruze 5 > 6
                [27626] = 27627, -- Ancestral Kaiser 1 > 2
                [27627] = 27628, -- Ancestral Kaiser 2 > 3
                [27628] = 27629, -- Ancestral Kaiser 3 > 4
                [27629] = 27630, -- Ancestral Kaiser 4 > 5
                [27630] = 27631, -- Ancestral Kaiser 5 > 6
            }
        },
    }
}


function action.onUse(player, item, fromPosition, target, toPosition, isHotkey)
    local pos = target:getPosition().x == 65535 and player:getPosition() or target:getPosition()
    if not target:isItem() then
        player:sendCancelMessage('You must select a card.')
        pos:sendMagicEffect(CONST_ME_POFF)
        return true
    end
    local keyConfig = config.gear[item:getId()]
    local name  = (target:getArticle() ~= '') and string.format('%s %s', target:getArticle(), target:getName()) or target:getName()
    if keyConfig then
      local upgradeId = keyConfig.items[target:getId()]
        if not upgradeId then
            player:sendCancelMessage(string.format('You are unable to upgrade %s with an %d %s essence.', (name == '') and 'this' or name, keyConfig.tier, keyConfig.upgraderType))
            pos:sendMagicEffect(249)
            return true
        end
       if target:getCount() > 1 then
            player:sendCancelMessage('You may only upgrade this card one at a time.')
            pos:sendMagicEffect(CONST_ME_POFF)
            return true
        end
        local confKey = (math.random(100) <= keyConfig.chance and 'success' or 'fail')
        local resultConfig = config.messages[confKey]
        pos:sendMagicEffect(resultConfig.effect)
        player:sendTextMessage(MESSAGE_INFO_DESCR, resultConfig.text)
        if confKey == 'success' then
            target:transform(upgradeId)
            target:setAttribute(ITEM_ATTRIBUTE_DESCRIPTION, ItemType(target:getId()):getDescription().."\nUpgraded by "..player:getName()..".")
            playSound(player, "success.ogg")
        else
            playSound(player, "fail.ogg")
        end
        if confKey == 'fail' and target.itemid == 65555 then
            target:transform()
            playSound(player, "fail.ogg")
        end
        item:remove(1)
    end
    return true
end


for keyId, _ in pairs(config.gear) do
    action:id(keyId)
end
action:aid(27699, 27700, 27701, 27702)
action:register()