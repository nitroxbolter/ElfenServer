local mType = Game.createMonsterType("Voidweaver Krythax")
local monster = {}
monster.description = "a Voidweaver Krythax"
monster.experience = 700000
monster.outfit = {
	lookType = 1390
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
    {id = "adamantine bar", chance = 70000, maxCount = 5},
	{id = "mithril bar", chance = 70000, maxCount = 5},
	{id = "amulet of loss", chance = 80000},
	{id = "viridian brew", chance = 80000, maxCount = 2},
	{id = "verdant jade shard", chance = 80000, maxCount = 4},
	{id = "primal jade shard", chance = 15000, maxCount = 2},
	{id = "herbal spiral", chance = 30000, maxCount = 3},
	{id = "emerald fragment", chance = 30000, maxCount = 3},
	{id = "verdant orb", chance = 8000},
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
	{name ="melee", interval = 2000, chance = 100, minDamage = -2300, maxDamage = -4500},
	{name ="combat", interval = 6000, chance = 80, type = COMBAT_EARTHDAMAGE, minDamage = -1800, maxDamage = -3250, length = 8, spread = 3, effect = 235, target = false},
	{name ="combat", interval = 1000, chance = 20, type = COMBAT_EARTHDAMAGE, minDamage = -1820, maxDamage = -4750, radius = 5, effect = 272, target = false},
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_PHYSICALDAMAGE, minDamage = -2860, maxDamage = -4900, range = 7, shootEffect = 80, effect = 207, target = false},
    {name ="combat", interval = 2000, chance = 25, type = COMBAT_LIFEDRAIN, minDamage = -1900, maxDamage = -3500, range = 1, radius = 1, shootEffect = 60, effect = 206, target = true},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_LIFEDRAIN, minDamage = -1800, maxDamage = -4444, range = 1, radius = 1, effect = 64, target = true}

}

monster.defenses = {
	defense = 200,
	armor = 200,
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 10},
	{type = COMBAT_ENERGYDAMAGE, percent = -15},
	{type = COMBAT_EARTHDAMAGE, percent = 100},
	{type = COMBAT_FIREDAMAGE, percent = -5},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 100},
	{type = COMBAT_DROWNDAMAGE, percent = 100},
	{type = COMBAT_ICEDAMAGE, percent = -3},
	{type = COMBAT_HOLYDAMAGE , percent = 5},
	{type = COMBAT_DEATHDAMAGE , percent = -4},
	{type = COMBAT_WATERDAMAGE, percent = -3},
	{type = COMBAT_ARCANEDAMAGE, percent = -8},
}

monster.immunities = {
	{type = "fire", condition = true},
	{type = "drown", condition = true},
	{type = "lifedrain", combat = true},
	{type = "paralyze", condition = true},
	{type = "invisible", condition = true}
}

local useAlternatingPattern = true

local function xPattern(fromPos, toPos)
    local startX = math.min(fromPos.x, toPos.x)
    local startY = math.min(fromPos.y, toPos.y)
    local endX = math.max(fromPos.x, toPos.x)
    local endY = math.max(fromPos.y, toPos.y)

    local patternTiles = {}

    for y = startY, endY do
        for x = startX, endX do
            if (x + y) % 2 == 0 then
                table.insert(patternTiles, {x = x, y = y})
            end
        end
    end
    return patternTiles
end

local function linePattern(fromPos, toPos)
    local startX = math.min(fromPos.x, toPos.x)
    local startY = math.min(fromPos.y, toPos.y)
    local endX = math.max(fromPos.x, toPos.x)
    local endY = math.max(fromPos.y, toPos.y)

    local patternTiles = {}

    for y = startY, endY do
        local effectLine = {}
        for x = startX, endX do
            if (y - startY) % 2 == 0 then
                table.insert(effectLine, {x = x, y = y})
            end
        end
        if #effectLine > 0 then
            for _, tile in ipairs(effectLine) do
                table.insert(patternTiles, tile)
            end
        end
    end
    return patternTiles
end

local function applyEarthBossEffectAndDamage(monster)
    local fromPos = Position(31145, 31234, 10)
    local toPos = Position(31176, 31272, 10)
    local patternTiles
    if useAlternatingPattern then
        patternTiles = xPattern(fromPos, toPos)
    else
        patternTiles = linePattern(fromPos, toPos)
    end

    if patternTiles and #patternTiles > 0 then
        for _, tile in ipairs(patternTiles) do
            local pos = Position(tile.x, tile.y, 10)
            pos:sendMagicEffect(262)
        end
        addEvent(function()
            for _, tile in ipairs(patternTiles) do
                local pos = Position(tile.x, tile.y, 10)
                pos:sendMagicEffect(262)
            end
        end, 1400)
        addEvent(function(patternTiles)
            if patternTiles and #patternTiles > 0 then
                for _, tile in ipairs(patternTiles) do
                    local pos = Position(tile.x, tile.y, 10)
                    pos:sendMagicEffect(337)
                end
            else
                return true
            end
        end, 3000, patternTiles)

        addEvent(function(patternTiles)
            if patternTiles and #patternTiles > 0 then
                for _, tile in ipairs(patternTiles) do
                    local pos = Position(tile.x, tile.y, 10)
                    local damage = math.random(-8000, -14000)
                    local tileObj = Tile(pos)
                    local creatures = tileObj:getCreatures()

                    if creatures == nil then
                        creatures = {}
                    end

                    for _, creature in ipairs(creatures) do
                        if creature:isPlayer() then
                            creature:addHealth("earth", damage)
                            pos:sendMagicEffect(336)
                        end
                    end
                end
            else
            end
        end, 3700, patternTiles)
    end
end

mType.onThink = function(monster, interval)
    if monster:getStorageValue(197459) == 0 or monster:getStorageValue(197459) == -1 then
        applyEarthBossEffectAndDamage(monster)
        useAlternatingPattern = not useAlternatingPattern
        monster:setStorageValue(197459, 1)
        addEvent(function()
            monster:setStorageValue(197459, 0)
        end, 45000)
    else
        return true
    end
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
	end
end

mType.onSay = function(monster, creature, type, message)
end

mType:register(monster)
