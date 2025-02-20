local action = Action()

print(">> Badge System Loaded")

local config = {
    messages = {
        success = {
            text  = 'The Badge has been upgraded!',
            talkType = MESSAGE_INFO_DESCR,
            effect   = 210
        },

        fail = {
            text  = 'Badge Upgrade Failed.',
            talkType = MESSAGE_INFO_DESCR,
            effect   = 212
        }

    },

    gear = {
        [27843] = {tier = 2, upgraderType = 'amplifier', chance = 35,
            items = {
                [27803] = 27804, -- Raging Exiled Spirit badge > Furious Exiled Spirit badge
            }
        },
        [27844] = {tier = 3, upgraderType = 'amplifier', chance = 25,
            items = {
                [27804] = 27805, -- Furious Exiled Spirit Badge > Tempest Exiled Spirit Badge
            }
        },
        [27845] = {tier = 4, upgraderType = 'amplifier', chance = 15,
            items = {
                [27805] = 27806, -- Tempest Exiled Badge > Blazing Exiled Badge
            }
        },
        [27846] = {tier = 2, upgraderType = 'amplifier', chance = 35,
            items = {
                [27807] = 27808, -- Raging Fury badge > Furious Fury badge
            }
        },
        [27847] = {tier = 3, upgraderType = 'amplifier', chance = 25,
            items = {
                [27808] = 27809, -- Furious Fury Badge > Tempest Fury Badge
            }
        },
        [27848] = {tier = 4, upgraderType = 'amplifier', chance = 15,
            items = {
                [27809] = 27810, -- Tempest Fury Badge > Blazing Fury Badge
            }
        },
        [27849] = {tier = 2, upgraderType = 'amplifier', chance = 35,
            items = {
                [27811] = 27812, -- Raging Moon badge > Furious Moon badge
            }
        },
        [27850] = {tier = 3, upgraderType = 'amplifier', chance = 25,
            items = {
                [27812] = 27813, -- Furious Moon Badge > Tempest Moon Badge
            }
        },
        [27851] = {tier = 4, upgraderType = 'amplifier', chance = 15,
            items = {
                [27813] = 27814, -- Tempest Moon Badge > Blazing Moon Badge
            }
        },
        [27852] = {tier = 5, upgraderType = 'amplifier', chance = 10,
            items = {
                [27814] = 27815, -- Blazing Moon Badge > Eternal Moon Badge
            }
        },
        [27853] = {tier = 2, upgraderType = 'amplifier', chance = 35,
            items = {
                [27816] = 27817, -- Raging Night Seeker badge > Furious Night Seeker badge
            }
        },
        [27854] = {tier = 3, upgraderType = 'amplifier', chance = 25,
            items = {
                [27817] = 27818, -- Furious Night Seeker Badge > Tempest Night Seeker Badge
            }
        },
        [27855] = {tier = 4, upgraderType = 'amplifier', chance = 15,
            items = {
                [27818] = 27819, -- Tempest Night Seeker Badge > Blazing Night Seeker Badge
            }
        },
        [27856] = {tier = 5, upgraderType = 'amplifier', chance = 10,
            items = {
                [27819] = 27820, -- Blazing Night Seeker Badge > Eternal Night Seeker Badge
            }
        },
        [27857] = {tier = 2, upgraderType = 'amplifier', chance = 35,
            items = {
                [27821] = 27822, -- Raging Earthshade badge > Furious Earthshade badge
            }
        },
        [27858] = {tier = 3, upgraderType = 'amplifier', chance = 25,
            items = {
                [27822] = 27823, -- Furious Earthshade Badge > Tempest Earthshade Badge
            }
        },
        [27859] = {tier = 4, upgraderType = 'amplifier', chance = 15,
            items = {
                [27823] = 27824, -- Tempest Earthshade Badge > Blazing Earthshade Badge
            }
        },
        [27860] = {tier = 2, upgraderType = 'amplifier', chance = 35,
            items = {
                [27825] = 27826, -- Raging Reborn badge > Furious Reborn badge
            }
        },
        [27861] = {tier = 3, upgraderType = 'amplifier', chance = 25,
            items = {
                [27826] = 27827, -- Furious Reborn Badge > Tempest Reborn Badge
            }
        },
        [27862] = {tier = 4, upgraderType = 'amplifier', chance = 15,
            items = {
                [27827] = 27828, -- Tempest Reborn Badge > Blazing Reborn Badge
            }
        },
        [27863] = {tier = 5, upgraderType = 'amplifier', chance = 10,
            items = {
                [27828] = 27829, -- Blazing Reborn Badge > Eternal Reborn Badge
            }
        },
        [27864] = {tier = 2, upgraderType = 'amplifier', chance = 35,
            items = {
                [27830] = 27831, -- Raging Chaosfiend badge > Furious Chaosfiend badge
            }
        },
        [27865] = {tier = 3, upgraderType = 'amplifier', chance = 25,
            items = {
                [27831] = 27832, -- Furious Chaosfiend Badge > Tempest Chaosfiend Badge
            }
        },
        [27866] = {tier = 4, upgraderType = 'amplifier', chance = 15,
            items = {
                [27832] = 27833, -- Tempest Chaosfiend Badge > Blazing Chaosfiend Badge
            }
        },
        [27867] = {tier = 2, upgraderType = 'amplifier', chance = 35,
            items = {
                [27834] = 27835, -- Raging Veins badge > Furious Veins badge
            }
        },
        [27868] = {tier = 3, upgraderType = 'amplifier', chance = 25,
            items = {
                [27835] = 27836, -- Furious Veins Badge > Tempest Veins Badge
            }
        },
        [27869] = {tier = 4, upgraderType = 'amplifier', chance = 15,
            items = {
                [27836] = 27837, -- Tempest Veins Badge > Blazing Veins Badge
            }
        },
        [27870] = {tier = 2, upgraderType = 'amplifier', chance = 35,
            items = {
                [27838] = 27839, -- Raging Daybreak badge > Furious Daybreak badge
            }
        },
        [27871] = {tier = 3, upgraderType = 'amplifier', chance = 25,
            items = {
                [27839] = 27840, -- Furious Daybreak Badge > Tempest Daybreak Badge
            }
        },
        [27872] = {tier = 4, upgraderType = 'amplifier', chance = 15,
            items = {
                [27840] = 27841, -- Tempest Daybreak Badge > Blazing Daybreak Badge
            }
        },
        [27873] = {tier = 5, upgraderType = 'amplifier', chance = 10,
            items = {
                [27841] = 27842, -- Blazing Daybreak Badge > Eternal Daybreak Badge
            }
        },

    }
}


function action.onUse(player, item, fromPosition, target, toPosition, isHotkey)
    local pos = target:getPosition().x == 65535 and player:getPosition() or target:getPosition()
    if not target:isItem() then
        player:sendCancelMessage('You must select a badge.')
        pos:sendMagicEffect(CONST_ME_POFF)
        return true
    end
    local keyConfig = config.gear[item:getId()]
    local name  = (target:getArticle() ~= '') and string.format('%s %s', target:getArticle(), target:getName()) or target:getName()
    if keyConfig then
      local upgradeId = keyConfig.items[target:getId()]
        if not upgradeId then
            player:sendCancelMessage(string.format('You are unable to upgrade %s with an %d %s catalyst.', (name == '') and 'this' or name, keyConfig.tier, keyConfig.upgraderType))
            pos:sendMagicEffect(249)
            return true
        end
       if target:getCount() > 1 then
            player:sendCancelMessage('You may only upgrade this badge one at a time.')
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
            playSound(player, "fail.ogg")
            target:transform()
        end
        item:remove(1)
    end
    return true
end


for keyId, _ in pairs(config.gear) do
    action:id(keyId)
end
action:aid(27843, 27844, 27845, 27846, 27847, 27848, 27849, 27850, 27851, 27852, 27853, 27854, 27855, 27856, 27857, 27858, 27859, 27860, 27861, 27862, 27863, 27864, 27865, 27866, 27867, 27868, 27869, 27870, 27871, 27872, 27873)
action:register()