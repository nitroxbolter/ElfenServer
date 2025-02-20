local action = Action()

local config = {
    messages = {
        success = {
            text  = 'The card has been upgraded!',
            talkType = MESSAGE_INFO_DESCR,
            effect   = 210
        },

        fail = {
            text  = 'Card Upgrade Failed.',
            talkType = MESSAGE_INFO_DESCR,
            effect   = 212
        }

    },

    gear = {
        --- Common > Rare ---
        [27703] = {tier = 1, upgraderType = 'essence', chance = 50,
            items = {
                [27482] = 27483, -- Erasmo Card
                [27486] = 27487, -- Demetar
                [27490] = 27491, -- Kaishuter
                [27494] = 27495, -- Enraged Chuo
                [27498] = 27499, -- Zaika
                [27502] = 27503, -- Rictus
                [27506] = 27507, -- Globus
                [27510] = 27511, -- Hidaka
                [27514] = 27515, -- Brelshaza
                [27518] = 27519, -- Vairgrys
                [27522] = 27523, -- Enviska
                [27526] = 27527, -- Harzal
                [27530] = 27531, -- Agaton
                [27534] = 27535, -- Lumerus
                [27538] = 27539, -- Velganos
            }
        },
        --- Rare > Epic ---
        [27704] = {tier = 2, upgraderType = 'essence', chance = 25,
            items = {
                [27483] = 27484, -- Erasmo Card
                [27487] = 27488, -- Demetar
                [27491] = 27492, -- Kaishuter
                [27495] = 27496, -- Enraged Chuo
                [27499] = 27500, -- Zaika
                [27503] = 27504, -- Rictus
                [27507] = 27508, -- Globus
                [27511] = 27512, -- Hidaka
                [27515] = 27516, -- Brelshaza
                [27519] = 27520, -- Vairgrys
                [27523] = 27524, -- Enviska
                [27527] = 27528, -- Harzal
                [27531] = 27532, -- Agaton
                [27535] = 27536, -- Lumerus
                [27539] = 27540, -- Velganos
            }
        },
        --- Epic > Mythic ---
        [27705] = {tier = 2, upgraderType = 'essence', chance = 10,
            items = {
                [27484] = 27485, -- Erasmo Cardc
                [27488] = 27489, -- Demetar
                [27492] = 27493, -- Kaishuter
                [27496] = 27497, -- Enraged Chuo
                [27500] = 27501, -- Zaika
                [27504] = 27505, -- Rictus
                [27508] = 27509, -- Globus
                [27512] = 27513, -- Hidaka
                [27516] = 27517, -- Brelshaza
                [27520] = 27521, -- Vairgrys
                [27524] = 27525, -- Enviska
                [27528] = 27529, -- Harzal
                [27532] = 27533, -- Agaton
                [27536] = 27537, -- Lumerus
                [27540] = 27541, -- Velganos
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
            player:sendCancelMessage(string.format('You are unable to upgrade %s with a %d %s essence.', (name == '') and 'this' or name, keyConfig.tier, keyConfig.upgraderType))
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
            target:setAttribute(ITEM_ATTRIBUTE_DESCRIPTION, ItemType(target:getId()):getDescription().."\nRefined by "..player:getName()..".")
            playSound(player, "success.ogg")
        else
            playSound(player, "fail.ogg")
        end
        if confKey == 'fail' and target.itemid == 40804 then
            target:transform(42033)
            playSound(player, "fail.ogg")
        end
        item:remove(1)
    end
    return true
end


for keyId, _ in pairs(config.gear) do
    action:id(keyId)
end
action:aid(27703, 27704, 27705) 
action:register()