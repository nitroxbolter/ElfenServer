local mType = Game.createMonsterType("Hollowborn Zepharix")
local monster = {}
monster.description = "a Hollowborn Zepharix"
monster.experience = 700000
monster.outfit = {
	lookType = 1392
}

monster.health = 800000
monster.maxHealth = 800000
monster.race = "undead"
monster.corpse = 26691
monster.speed = 1300
monster.manaCost = 0

monster.changeTarget = {
	interval = 4000,
	chance = 20
}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	convinceable = false,
	pushable = false,
	illusionable = false,
	canPushItems = true,
	canPushCreatures = true,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 0,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = true,
	canWalkOnFire = true,
	canWalkOnPoison = true,
	pet = false
}

monster.summons = {
}

monster.events = {
	"playerAttackSound"
}

monster.voices = {
}

monster.loot = { 
	{id = "Crystal Coin", chance = 95000, maxCount = 50},
	{id = "mythic mana potion", chance = 100000, maxCount = 10},
	{id = "mythic health potion", chance = 100000, maxCount = 10},
	{id = "mythic spirit potion", chance = 100000, maxCount = 10},
    {id = "azure crystal fragment", chance = 80000, maxCount = 4},
	{id = "amulet of loss", chance = 80000},
    {id = "adamantine bar", chance = 70000, maxCount = 5},
	{id = "mithril bar", chance = 70000, maxCount = 5},
	{id = "amethyst vial", chance = 80000, maxCount = 2},
	{id = "twilight amethyst shard", chance = 80000, maxCount = 4},
	{id = "eternal amethyst shard", chance = 15000, maxCount = 2},
	{id = "melodic shard", chance = 30000, maxCount = 3},
	{id = "phantom resonance", chance = 30000, maxCount = 3},
	{id = "ethereal harmony orb", chance = 8000},
	{id = "venerable cloth", chance = 53720, maxCount = 3},
    {id = "petrified dragon head", chance = 13000},
	{id = "petrified dragon wings", chance = 15000},
	{id = "petrified dragon foot", chance = 20000},
	{id = "giant white pearl", chance = 88000, maxCount = 3},
	{id = "giant sky blue pearl", chance = 55000, maxCount = 3},
	{id = "giant midnight pearl", chance = 65000, maxCount = 3},
	{id = "giant pearl bracelet", chance = 12000},
	{id = "diamond ring in a shell", chance = 10000},
	{id = "rough diamond", chance = 10000, maxCount = 2},
	{id = "jungle flail", chance = 2000},
	{id = "throwing axe", chance = 2000},
	{id = "exotic legs", chance = 3000},
	{id = "bast legs", chance = 3000},
	{id = "jungle bow", chance = 2000},
	{id = "makeshift boots", chance = 2500},
	{id = "make-do boots", chance = 2500},
	{id = "jungle rod", chance = 2000},
	{id = "jungle wand", chance = 2000},
	{id = "jungle quiver", chance = 2000},
	{id = "eldritch shield", chance = 2000},
	{id = "eldritch claymore", chance = 2000},
	{id = "gilded eldritch claymore", chance = 1000},
	{id = "eldritch warmace", chance = 2000},
	{id = "gilded eldritch warmace", chance = 1000},
	{id = "eldritch greataxe", chance = 2000},
	{id = "gilded eldritch greataxe", chance = 1000},
	{id = "eldritch cuirass", chance = 2000},
	{id = "eldritch bow", chance = 2000},
	{id = "gilded eldritch bow", chance = 1000},
	{id = "eldritch quiver", chance = 2000},
	{id = "eldritch breeches", chance = 2500},
	{id = "eldritch wand", chance = 2000},
	{id = "gilded eldritch wand", chance = 1000},
	{id = "eldritch cowl", chance = 2000},
	{id = "eldritch hood", chance = 2000},
	{id = "eldritch folio", chance = 2000},
	{id = "eldritch tome", chance = 2000},
	{id = "eldritch rod", chance = 2000},
	{id = "gilded eldritch rod", chance = 1000},
	{id = "spiritthorn armor", chance = 1500},
	{id = "spiritthorn helmet", chance = 1500},
	{id = "alicorn headguard", chance = 1500},
	{id = "alicorn quiver", chance = 1500},
	{id = "aeris quiver", chance = 1500},
	{id = "bazelgeuse quiver", chance = 1000},
	{id = "kirin quiver", chance = 1000},
	{id = "arcanomancer regalia", chance = 1500},
	{id = "arcanomancer folio", chance = 1500},
	{id = "arboreal crown", chance = 1500},
	{id = "arboreal tome", chance = 1500},
	{id = "naga sword", chance = 1500},
	{id = "naga club", chance = 1500},
	{id = "frostflower boots", chance = 1500},
	{id = "naga crossbow", chance = 1500},
	{id = "naga quiver", chance = 1500},
	{id = "feverbloom boots", chance = 1500},
	{id = "naga wand", chance = 1500},
	{id = "naga rod", chance = 1500},
	{id = "dawnfire sherwani", chance = 1500},
	{id = "midnight tunic", chance = 1500},
	{id = "dawnfire pantaloons", chance = 1500},
	{id = "midnight sarong", chance = 1500},
	{id = "legendary exotic essence", chance = 33000, maxCount = 5},
	{id = "legendary chaos essence", chance = 26000, maxCount = 5},
	{id = "legendary abyssal essence", chance = 20000, maxCount = 5},
	{id = "legendary ancestral essence", chance = 15000, maxCount = 5},
	{id = "rare essence", chance = 50000, maxCount = 5},
	{id = "epic essence", chance = 35000, maxCount = 5},
	{id = "mythic essence", chance = 25000, maxCount = 5},
	{id = "raging exiled spirit badge", chance = 2500},
	{id = "raging fury badge", chance = 2500},
	{id = "raging moon badge", chance = 2500},
	{id = "raging night seeker badge", chance = 2500},
	{id = "raging earthshade badge", chance = 2500},
	{id = "raging reborn badge", chance = 2500},
	{id = "raging chaosfiend badge", chance = 2500},
	{id = "raging veins badge", chance = 2500},
	{id = "raging daybreak badge", chance = 2500},
	{id = "legendary exotic ascalon lv1", chance = 1000},
	{id = "legendary exotic saydon lv1", chance = 1000},
	{id = "legendary exotic vercruze lv1", chance = 1000},
	{id = "legendary exotic kaiser lv1", chance = 1000},
	{id = "legendary chaos ascalon lv1", chance = 900},
	{id = "legendary chaos saydon lv1", chance = 900},
	{id = "legendary chaos vercruze lv1", chance = 900},
	{id = "legendary chaos kaiser lv1", chance = 900},
	{id = "legendary abyssal ascalon lv1", chance = 800},
	{id = "legendary abyssal saydon lv1", chance = 800},
	{id = "legendary abyssal vercruze lv1", chance = 800},
	{id = "legendary abyssal kaiser lv1", chance = 800},
	{id = "legendary ancestral ascalon lv1", chance = 700},
	{id = "legendary ancestral saydon lv1", chance = 700},
	{id = "legendary ancestral vercruze lv1", chance = 700},
	{id = "legendary ancestral kaiser lv1", chance = 700},
	{id = "exiled amplifier catalyst [1]", chance = 5000, maxCount = 2},
	{id = "exiled amplifier catalyst [2]", chance = 4200, maxCount = 2},
	{id = "exiled amplifier catalyst [3]", chance = 2000},
	{id = "fury amplifier catalyst [1]", chance = 5000, maxCount = 2},
	{id = "fury amplifier catalyst [2]", chance = 4200, maxCount = 2},
	{id = "exiled amplifier catalyst [3]", chance = 2000},
	{id = "moon amplifier catalyst [1]", chance = 5000, maxCount = 2},
	{id = "moon amplifier catalyst [2]", chance = 4200, maxCount = 2},
	{id = "moon amplifier catalyst [3]", chance = 2000},
	{id = "moon amplifier catalyst [4]", chance = 1000},
	{id = "night seeker amplifier catalyst [1]", chance = 5000, maxCount = 2},
	{id = "night seeker amplifier catalyst [2]", chance = 4200, maxCount = 2},
	{id = "night seeker amplifier catalyst [3]", chance = 2000},
	{id = "night seeker amplifier catalyst [4]", chance = 1000},
	{id = "earthshade amplifier catalyst [1]", chance = 5000, maxCount = 2},
	{id = "earthshade amplifier catalyst [2]", chance = 4200, maxCount = 2},
	{id = "earthshade amplifier catalyst [3]", chance = 2000},
	{id = "reborn amplifier catalyst [1]", chance = 5000, maxCount = 2},
	{id = "reborn amplifier catalyst [2]", chance = 4200, maxCount = 2},
	{id = "reborn amplifier catalyst [3]", chance = 2000},
	{id = "reborn amplifier catalyst [4]", chance = 1000},
	{id = "chaosfiend amplifier catalyst [1]", chance = 5000, maxCount = 2},
	{id = "chaosfiend amplifier catalyst [2]", chance = 4200, maxCount = 2},
	{id = "chaosfiend amplifier catalyst [3]", chance = 2000},
	{id = "veins amplifier catalyst [1]", chance = 5000, maxCount = 2},
	{id = "veins amplifier catalyst [2]", chance = 4200, maxCount = 2},
	{id = "veins amplifier catalyst [3]", chance = 2000},
	{id = "daybreak amplifier catalyst [1]", chance = 5000, maxCount = 2},
	{id = "daybreak amplifier catalyst [2]", chance = 4200, maxCount = 2},
	{id = "daybreak amplifier catalyst [3]", chance = 2000},
	{id = "daybreak amplifier catalyst [4]", chance = 1000},
	{id = "golden deck", chance = 4000},
	{id = "butterfly wings", chance = 500},
	{id = "Whisperwind", chance = 400},
	{id = "boss token", chance = 8000, maxCount = 2},
	{id = "exercise token", chance = 8000, maxCount = 2},
	{id = "ticket roulette", chance = 5000, maxCount = 2},
	{id = 29619, chance = 12000}, --- Upgrade Rune v1
	{id = 29620, chance= 8000}, --- Upgrade Rune v2
	{id = 29621, chance = 6500}, --- Upgrade Rune v3
	{id = 29622, chance = 4000}, --- Upgrade Rune v4
	{id = 29623, chance = 10000} --- Upgrade and Rarity Remover

}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -2300, maxDamage = -5500},
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_ENERGYDAMAGE, minDamage = -1600, maxDamage = -4500, range = 6, shootEffect = 295, target = true},
	{name ="combat", interval = 1000, chance = 15, type = COMBAT_MANADRAIN, minDamage = -1900, maxDamage = -3500, range = 7, effect = 294, target = false},
	{name ="combat", interval = 1000, chance = 13, type = COMBAT_ENERGYDAMAGE, minDamage = -1800, maxDamage = -4490, range = 7, shootEffect = 86, effect = 306, target = false},
	{name ="combat", interval = 1000, chance = 10, type = COMBAT_PHYSICALDAMAGE, minDamage = -1800, maxDamage = -5555, range = 7, shootEffect = 81, target = false},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_DROWNDAMAGE, minDamage = -1800, maxDamage = -4800, radius = 8, effect = 322, target = false},
}

monster.defenses = {
	defense = 200,
	armor = 200,
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 10},
	{type = COMBAT_ENERGYDAMAGE, percent = 100},
	{type = COMBAT_EARTHDAMAGE, percent = -7},
	{type = COMBAT_FIREDAMAGE, percent = -4},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 100},
	{type = COMBAT_DROWNDAMAGE, percent = 100},
	{type = COMBAT_ICEDAMAGE, percent = -6},
	{type = COMBAT_HOLYDAMAGE , percent = 7},
	{type = COMBAT_DEATHDAMAGE , percent = 3},
	{type = COMBAT_WATERDAMAGE, percent = -15},
	{type = COMBAT_ARCANEDAMAGE, percent = -8},
}

monster.immunities = {
	{type = "fire", condition = true},
	{type = "drown", condition = true},
	{type = "lifedrain", combat = true},
	{type = "paralyze", condition = true},
	{type = "invisible", condition = true}
}

local allowedArea = {
    fromPos = Position(31499, 31053, 10),
    toPos = Position(31536, 31087, 10)
}

local fallbackPosition = Position(31517, 31068, 10)

local phase1Positions = {
    Position(31503, 31060, 10),
    Position(31506, 31066, 10),
    Position(31510, 31062, 10),
    Position(31501, 31067, 10),
    Position(31512, 31073, 10),
    Position(31520, 31062, 10),
    Position(31518, 31075, 10),
    Position(31525, 31075, 10),
    Position(31530, 31071, 10),
    Position(31524, 31064, 10),
	Position(31509, 31070, 10),
	Position(31514, 31064, 10),
	Position(31526, 31069, 10),
	Position(31517, 31078, 10),
	Position(31516, 31071, 10),
	Position(31500, 31063, 10),
}

local phase2Positions = {
    Position(31503, 31065, 10),
    Position(31505, 31061, 10),
    Position(31511, 31060, 10),
    Position(31519, 31063, 10),
    Position(31514, 31068, 10),
    Position(31512, 31073, 10),
    Position(31519, 31075, 10),
    Position(31520, 31062, 10),
    Position(31526, 31078, 10),
    Position(31528, 31072, 10),
    Position(31526, 31066, 10),
    Position(31517, 31061, 10),
	Position(31512, 31065, 10),
	Position(31508, 31058, 10),
	Position(31521, 31079, 10),
	Position(31514, 31076, 10),
	Position(31519, 31066, 10),
}

local currentPhase = 1

local function starPattern(centerPos)
    local offsets = {
        {x = -1, y = -1},                {x =  1, y = -1},
                         {x =  0, y =  0},
        {x = -1, y =  1},                {x =  1, y =  1}
    }

    local patternTiles = {}

    for _, offset in ipairs(offsets) do
        local effectPos = Position(centerPos.x + offset.x, centerPos.y + offset.y, centerPos.z)
        effectPos:sendMagicEffect(262)
        table.insert(patternTiles, effectPos)
    end
	addEvent(function()
		for _, offset in ipairs(offsets) do
			local effectPos = Position(centerPos.x + offset.x, centerPos.y + offset.y, centerPos.z)
			effectPos:sendMagicEffect(338)
			table.insert(patternTiles, effectPos)
		end
	end, 1700)
	addEvent(function()
		for _, offset in ipairs(offsets) do
			local effectPos = Position(centerPos.x + offset.x, centerPos.y + offset.y, centerPos.z)
			effectPos:sendMagicEffect(350)
			table.insert(patternTiles, effectPos)
		end
	end, 2000)

    addEvent(function()
        for _, pos in ipairs(patternTiles) do
            local tile = Tile(pos)
            local creatures = tile:getCreatures()

            if creatures then
                for _, creature in ipairs(creatures) do
                    if creature:isPlayer() then
                        local damage = math.random(-8000, -14000)
                        creature:addHealth("arcane", damage)
                        pos:sendMagicEffect(350)
                    end
                end
            end
        end
    end, 2000)
end

local function createStarsAndDealDamage()
    local positionsToUse = (currentPhase == 1) and phase1Positions or phase2Positions
    for _, basePos in ipairs(positionsToUse) do
        if not basePos:isInRange(allowedArea.fromPos, allowedArea.toPos) then
            basePos = fallbackPosition
        end
        starPattern(basePos)
    end
    currentPhase = (currentPhase == 1) and 2 or 1
end

mType.onThink = function(monster, interval)
    for _, player in pairs(Game.getPlayers()) do
        local position = player:getPosition()
        if position:isInRange(allowedArea.fromPos, allowedArea.toPos) then
            if player:getStorageValue(197462) == -1 or player:getStorageValue(197462) == 0 then
                player:setStorageValue(197462, 1)
            end
            addEvent(function()
                if player:getStorageValue(197462) == 1 then
                    local condition = Condition(CONDITION_BEWITCHED)
                    condition:setParameter(CONDITION_PARAM_DELAYED, true)
                    condition:setParameter(CONDITION_PARAM_MINVALUE, 450)
                    condition:setParameter(CONDITION_PARAM_MAXVALUE, 450)
                    condition:setParameter(CONDITION_PARAM_STARTVALUE, 450)
                    condition:setParameter(CONDITION_PARAM_TICKINTERVAL, 2000)
                    player:addCondition(condition)
                    player:setStorageValue(197462, 0)
                    if player:getStorageValue(197463) == -1 or player:getStorageValue(197463) == 0 then
                        player:setStorageValue(197463, 1)
                    end
                elseif player:getStorageValue(197463) == 1 then
                    local condition = Condition(CONDITION_SPLASHED)
                    condition:setParameter(CONDITION_PARAM_DELAYED, true)
                    condition:setParameter(CONDITION_PARAM_MINVALUE, 333)
                    condition:setParameter(CONDITION_PARAM_MAXVALUE, 333)
                    condition:setParameter(CONDITION_PARAM_STARTVALUE, 333)
                    condition:setParameter(CONDITION_PARAM_TICKINTERVAL, 2000)
                    player:addCondition(condition)
                    player:setStorageValue(197463, 0)
                    if player:getStorageValue(197462) == -1 or player:getStorageValue(197462) == 0 then
                        player:setStorageValue(197462, 1)
                    end
                end
            end, 30000)
        end
    end
    if monster:getStorageValue(197464) == 0 or monster:getStorageValue(197464) == -1 then
		monster:setStorageValue(197464, 1)
		createStarsAndDealDamage()
	end
	addEvent(function() monster:setStorageValue(197464, 0) end, 15000)
end

mType.onAppear = function(monster, creature)
	if monster:getId() == creature:getId() then
	end
end

mType.onDisappear = function(monster, creature)
	if monster:getId() == creature:getId() then
	end
end

mType.onMove = function(monster, creature, fromPosition, toPosition)
    if monster:getId() == creature:getId() then
        if toPosition.x < allowedArea.fromPos.x or toPosition.x > allowedArea.toPos.x or
           toPosition.y < allowedArea.fromPos.y or toPosition.y > allowedArea.toPos.y or
           toPosition.z ~= allowedArea.fromPos.z then
            monster:teleportTo(fallbackPosition)
			monster:say("Come back here if you want to challenge me.", TALKTYPE_MONSTER_SAY)
            fallbackPosition:sendMagicEffect(CONST_ME_TELEPORT)
        end
    end
end

mType.onSay = function(monster, creature, type, message)
end

mType:register(monster)
