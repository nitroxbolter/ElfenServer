local textFloat = GlobalEvent("textFloat")

local effects = {
    {position = Position(32097, 32219, 7), text = 'Welcome to Exodus!', effect = 317},
    {position = Position(32373, 32240, 7), text = 'Collect First Items!', effect = 257},
    {position = Position(32360, 31776, 7), text = 'Collect First Items!', effect = 257},
    {position = Position(32959, 32072, 7), text = 'Collect First Items!', effect = 257},
    {position = Position(31650, 32236, 7), text = 'Trainers', effect = 223},
    {position = Position(32372, 32233, 7), text = 'Waypoint', effect = 228},

    {position = Position(31646, 32259, 7), text = 'Npc Shops & Ateliers', effect = 274},
    {position = Position(31646, 32236, 7), text = 'Quests & Spawns', effect = 316},
    {position = Position(31650, 32230, 7), text = 'Roulette', effect = 228},
    {position = Position(31650, 32259, 7), text = 'Trainers', effect = 264},

    {position = Position(31646, 32253, 7), text = 'Temple', effect = 288},
    {position = Position(31650, 32253, 7), text = 'Roulette', effect = 228},
    {position = Position(31646, 32230, 7), text = 'Temple', effect = 288},

    {position = Position(32365, 32236, 7), text = 'Teleports', effect = 316},
    {position = Position(32373, 32236, 7), text = 'Teleports', effect = 316},

    {position = Position(31648, 32230, 7), text = 'Ateliers', effect = 179},

    {position = Position(31639, 32265, 7), text = 'Daily Reward', effect = 315},
    {position = Position(31633, 32265, 7), text = 'Weekly Reward', effect = 314},
    {position = Position(31657, 32265, 7), text = 'Weekly Reward', effect = 314},
    {position = Position(31663, 32265, 7), text = 'Weekly Reward', effect = 314},

    {position = Position(31648, 32257, 6), text = 'More Teleports', effect = 316},
    {position = Position(31648, 32253, 7), text = 'Spawn Teleports', effect = 316},
    {position = Position(31162, 31292, 6), text = 'Npc Reputation', effect = 302},
    {position = Position(31171, 31292, 6), text = 'Emberlord Zanarth Boss', effect = 321},
    {position = Position(31159, 31286, 7), text = 'Dorn Reputation', effect = 226},
    {position = Position(31159, 31294, 7), text = 'Frosthold Reputation', effect = 282},
    {position = Position(31173, 31286, 7), text = 'Hallowfall Reputation', effect = 288},
    {position = Position(31165, 31291, 7), text = 'Vyrsk Reputation', effect = 304},
    {position = Position(31173, 31294, 7), text = 'Vardenfell Reputation', effect = 271},
    
}

function textFloat.onThink(interval)
    for i = 1, #effects do
        local settings = effects[i]
        local spectators = Game.getSpectators(settings.position, false, true, 10, 10, 10, 10)
        if #spectators > 0 then
            if settings.text then
                for i = 1, #spectators do
                    spectators[i]:say(settings.text, TALKTYPE_MONSTER_SAY, false, spectators[i], settings.position)
                end
            end
            if settings.effect then
                settings.position:sendMagicEffect(settings.effect)
            end
        end
    end
   return true
end

textFloat:interval(4000)
textFloat:register()