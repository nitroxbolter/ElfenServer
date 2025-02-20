local herbalistSystem = Action()
local COOLDOWN_SECONDS = 4

local config = {
    [26741] = {text = {"The plant is regenerating."}}, 
    [26717] = {break_chance = 75, loot_chance = 80, lower_tier = 26741, requiredSkill = 0, 
        normal_loot_table = { -- 80%
            [1] = {item_id = 26731, count = 1}, 
        },
        semi_rare_loot_table = { -- 15%
            [1] = {item_id = 26729, count = 2}, 
        },
        rare_loot_table = { -- 5%
            [1] = {item_id = 26729, count = 4},
        },
    },
    [26742] = {text = {"The plant is regenerating."}}, 
    [26718] = {break_chance = 75, loot_chance = 80, lower_tier = 26742, requiredSkill = 5, 
        normal_loot_table = { -- 80%
            [1] = {item_id = 26730, count = 1}, 
        },
        semi_rare_loot_table = { -- 15%
            [1] = {item_id = 26732, count = 2}, 
        },
        rare_loot_table = { -- 5%
            [1] = {item_id = 26732, count = 4},
        },
    },


}

local skillsStages = {
    {
        minlevel = 10,
        maxlevel = 20,
        multiplier = 30
    }, {
        minlevel = 21,
        maxlevel = 40,
        multiplier = 20
    }, {
        minlevel = 41,
        maxlevel = 60,
        multiplier = 15
    }, {
        minlevel = 61,
        maxlevel = 90,
        multiplier = 10
    }, {
        minlevel = 91,
        maxlevel = 120,
        multiplier = 8
    },{
        minlevel = 121,
        multiplier = 5
    }
}


function herbalistSystem.onUse(cid, item, fromPosition, itemEx, toPosition)
    local player = Player(cid)
    if not player then
        return true
    end
    
    local lastUsageTime = player:getStorageValue(215550) 

    if os.time() - lastUsageTime < COOLDOWN_SECONDS then
        player:sendTextMessage(MESSAGE_INFO_DESCR, "You must wait a few seconds before using the scissor's again.")
        return true
    end

    local object = config[itemEx.itemid]
    if object then
        if object.text then
            local rand_text = math.random(#object.text)
            doCreatureSay(cid, object.text[rand_text], TALKTYPE_ORANGE_1, nil, nil, toPosition)
            SendMagicEffect(toPosition, 181)
            playSound(player, "herbalist_fail.ogg")
            return true
        end
        
        local requiredSkill = object.requiredSkill or 0
        local playerSkill = player:getSkillLevel(SKILL_HERBALIST)

        if playerSkill < requiredSkill then
            player:sendTextMessage(MESSAGE_INFO_DESCR, "You don't have the required herbalist skill to harvest on this plant.")
            return true
        end
        player:setNoMove(true)
            addEvent(function()
                player:setNoMove(false)
          end, 2300)
        local skillMultiplier = 1 

        for _, stage in ipairs(skillsStages) do
            if playerSkill >= stage.minlevel then
                if not stage.maxlevel or playerSkill <= stage.maxlevel then
                    skillMultiplier = stage.multiplier
                    break
                end
            end
        end
        toPosition.y = toPosition.y + 1
        toPosition.x = toPosition.x + 1

        SendMagicEffect(toPosition, 194)  
        SendMagicEffect(player:getPosition(), 176)
        playSound(player, "herbalist.ogg")
        addEvent(function()
            local rand_event = math.random(200)
            if rand_event == 200 then
                SendMagicEffect(toPosition, 181)
                return true
            end

            local rand_break = math.random(100)
            if rand_break <= object.break_chance then
                doTransformItem(itemEx.uid, object.lower_tier)
                SendMagicEffect(toPosition, 181)
                local transformedItem = Item(itemEx.uid)
                transformedItem:decay()
            end

            local rand_reward = math.random(100)
            if rand_reward > (object.loot_chance + 10) then
                SendMagicEffect(toPosition, 181)
                return true
            end

            local multiple = 1
            local rand_multiple = math.random(15)
            if rand_multiple == 15 then
                multiple = math.random(2, 3)
            end
            for i = 1, multiple do
                local loot_table = object.normal_loot_table
                local rand_loot = math.random(100)
                if rand_loot < 6 then
                    loot_table = object.rare_loot_table
                elseif rand_loot < 21 then
                    loot_table = object.semi_rare_loot_table
                end
                local rand_item = math.random(#loot_table)
                rand_item = loot_table[rand_item]
                if rand_item.count == 1 then
                    doPlayerAddItem(cid, rand_item.item_id, 1, true)
                else
                    local new_count = math.random(rand_item.count)
                    doPlayerAddItem(cid, rand_item.item_id, new_count, true)
                end
            end
            local skillTries = math.floor(skillMultiplier)
            player:addSkillTries(SKILL_HERBALIST, skillTries)
        end, 3000)  
    else
        player:say("This scissor's cannot harvest this plant.", TALKTYPE_MONSTER_SAY)

    end
    player:setStorageValue(215550, os.time())
    return true
end

herbalistSystem:id(26713)
herbalistSystem:register()