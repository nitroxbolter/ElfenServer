local skillStages = {
    [SKILL_FIST] = {
        [{  1,   60}] = {multiplier = 20},
        [{  61,  80}] = {multiplier = 15},
        [{ 81,  100}] = {multiplier = 11},
        [{ 101, 110}] = {multiplier = 9},
        [{111, 125}]  = {multiplier = 8},
        [{126, 149}]  = {multiplier = 7},
        [{150}]       = {multiplier = 4}
    },
    [SKILL_CLUB] = {
        [{  1,   60}] = {multiplier = 20},
        [{  61,  80}] = {multiplier = 15},
        [{ 81,  100}] = {multiplier = 11},
        [{ 101, 110}] = {multiplier = 9},
        [{111, 125}]  = {multiplier = 8},
        [{126, 149}]  = {multiplier = 7},
        [{150}]       = {multiplier = 4}
    },
    [SKILL_SWORD] = {
        [{  1,   60}] = {multiplier = 20},
        [{  61,  80}] = {multiplier = 15},
        [{ 81,  100}] = {multiplier = 11},
        [{ 101, 110}] = {multiplier = 9},
        [{111, 125}]  = {multiplier = 8},
        [{126, 149}]  = {multiplier = 7},
        [{150}]       = {multiplier = 4}
    },
    [SKILL_AXE] = {
        [{  1,   60}] = {multiplier = 20},
        [{  61,  80}] = {multiplier = 15},
        [{ 81,  100}] = {multiplier = 11},
        [{ 101, 110}] = {multiplier = 9},
        [{111, 125}]  = {multiplier = 8},
        [{126, 149}]  = {multiplier = 7},
        [{150}]       = {multiplier = 4}
    },
    [SKILL_DISTANCE] = {
        [{  1,   60}] = {multiplier = 20},
        [{  61,  80}] = {multiplier = 15},
        [{ 81,  100}] = {multiplier = 11},
        [{ 101, 110}] = {multiplier = 9},
        [{111, 125}]  = {multiplier = 8},
        [{126, 149}]  = {multiplier = 7},
        [{150}]       = {multiplier = 4}
    },
    [SKILL_SHIELD] = {
        [{  1,   60}] = {multiplier = 20},
        [{  61,  80}] = {multiplier = 15},
        [{ 81,  100}] = {multiplier = 11},
        [{ 101, 110}] = {multiplier = 9},
        [{111, 125}]  = {multiplier = 8},
        [{126, 149}]  = {multiplier = 7},
        [{150}]       = {multiplier = 4}
    },
    [SKILL_FISHING] = {
        [{  1,   60}] = {multiplier = 20},
        [{  61,  80}] = {multiplier = 15},
        [{ 81,  100}] = {multiplier = 11},
        [{ 101, 110}] = {multiplier = 9},
        [{111, 125}]  = {multiplier = 8},
        [{126, 149}]  = {multiplier = 7},
        [{150}]       = {multiplier = 4}
    },
    [SKILL_MAGLEVEL] = {
        [{  1,   60}] = {multiplier = 16},
        [{  61,  80}] = {multiplier = 12},
        [{ 81,  100}] = {multiplier = 8},
        [{ 101, 110}] = {multiplier = 7},
        [{111, 125}]  = {multiplier = 6},
        [{126, 149}]  = {multiplier = 5},
        [{150}]       = {multiplier = 3}
    }
}


local ec = EventCallback

ec.onGainSkillTries = function(self, skill, tries)
    if not skillStages[skill] then
        return tries
    end
    local playerLevel = skill == SKILL_MAGLEVEL and self:getMagicLevel() or self:getSkillLevel(skill)
    for k, v in pairs(skillStages[skill]) do
        if playerLevel >= k[1] then
            if not k[2] or playerLevel <= k[2] then
                tries = tries * v.multiplier
            end
        end
    end  
    return tries
end

ec:register()