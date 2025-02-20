local mType = Game.createMonsterType("Ashseer Dravok")
local monster = {}
monster.description = "a Ashseer Dravok"
monster.experience = 700000
monster.outfit = {
	lookType = 1388
}

monster.health = 1000000
monster.maxHealth = 1000000
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
	{id = "amulet of loss", chance = 80000},
	{id = "adamantine bar", chance = 70000, maxCount = 5},
	{id = "mithril bar", chance = 70000, maxCount = 5},
	{id = "azure crystal fragment", chance = 80000, maxCount = 4},
	{id = "infernal elixir", chance = 80000, maxCount = 2},
	{id = "scorched citrine shard", chance = 80000, maxCount = 4},
	{id = "inferno citrine shard", chance = 15000, maxCount = 2},
	{id = "flaming core", chance = 30000, maxCount = 3},
	{id = "scorched sphere", chance = 30000, maxCount = 3},
	{id = "blazing ember orb", chance = 8000},
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
	{id = 29619, chance = 5000}, --- Upgrade Rune v1
	{id = 29620, chance= 3000}, --- Upgrade Rune v2
	{id = 29621, chance = 2500}, --- Upgrade Rune v3
	{id = 29622, chance = 2000}, --- Upgrade Rune v4
	{id = 29623, chance = 3000} --- Upgrade and Rarity Remover

}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -1900, maxDamage = -4500},
	{name ="combat", interval = 2000, chance = 8, type = COMBAT_FIREDAMAGE, minDamage = -1750, maxDamage = -2850, radius = 3, effect = 226, target = false},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_PHYSICALDAMAGE, minDamage = -1900, maxDamage = -3580, length = 5, spread = 3, effect = 296, target = false},
	{name ="combat", interval = 3000, chance = 14, type = COMBAT_FIREDAMAGE, minDamage = -2000, maxDamage = -3750, shootEffect = 84, target = true},
	{name ="combat", interval = 2000, chance = 16, type = COMBAT_FIREDAMAGE, minDamage = -2500, maxDamage = -2920, radius = 4, shootEffect = 84, effect = 234, target = true},
	{name ="combat", interval = 3000, chance = 12, type = COMBAT_PHYSICALDAMAGE, minDamage = -1800, maxDamage = -4200, radius = 2, effect = 285, target = false}
}

monster.defenses = {
	defense = 200,
	armor = 200,
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 10},
	{type = COMBAT_ENERGYDAMAGE, percent = 7},
	{type = COMBAT_EARTHDAMAGE, percent = -3},
	{type = COMBAT_FIREDAMAGE, percent = 100},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 100},
	{type = COMBAT_DROWNDAMAGE, percent = 100},
	{type = COMBAT_ICEDAMAGE, percent = -15},
	{type = COMBAT_HOLYDAMAGE , percent = 3},
	{type = COMBAT_DEATHDAMAGE , percent = -5},
	{type = COMBAT_WATERDAMAGE, percent = -15},
	{type = COMBAT_ARCANEDAMAGE, percent = 3},
}

monster.immunities = {
	{type = "fire", condition = true},
	{type = "drown", condition = true},
	{type = "lifedrain", combat = true},
	{type = "paralyze", condition = true},
	{type = "invisible", condition = true}
}

local fromPos = {x = 31009, y = 31004, z = 8}
local toPos = {x = 31071, y = 31047, z = 8}

local function generateLavaPositions(count)
    local positions = {}
    local eligiblePositions = {}

    for x = fromPos.x, toPos.x do
        for y = fromPos.y, toPos.y do
            local pos = {x = x, y = y, z = fromPos.z}
            local tile = Tile(pos)
            if tile and tile:getItemById(29005) then
                table.insert(eligiblePositions, pos)
            end
        end
    end

    if #eligiblePositions >= count then
        for i = 1, count do
            local randomIndex = math.random(#eligiblePositions)
            table.insert(positions, eligiblePositions[randomIndex])
            table.remove(eligiblePositions, randomIndex)
        end
    else
        return true
    end

    return positions
end

local function removeLavaField(pos)
    local tile = Tile(pos)
    if tile then
        local lavaItem = tile:getItemById(1492)
        if lavaItem and lavaItem:getActionId() == 34141 then
            lavaItem:remove()
        end
    end
end

local function spawnLavaPools()
    local lavaPositions = generateLavaPositions(100)

    for _, pos in ipairs(lavaPositions) do
        Position(pos):sendMagicEffect(262)
    end

    addEvent(function()
        for _, pos in ipairs(lavaPositions) do
            local tile = Tile(pos)
            if tile and not tile:getItemById(1492) then
                local lava = Game.createItem(1492, 1, pos)
                if lava then
                    lava:setActionId(34141)
                    addEvent(removeLavaField, 15000, pos)
                end
            end
        end
    end, 1400)
end

local function checkAndSpawnLavaPools(monsterId)
    local monster = Creature(monsterId)
    if monster and monster:isMonster() then
        spawnLavaPools()
        addEvent(checkAndSpawnLavaPools, 60000, monster:getId())
    end
end

local function resetStorage(monsterId)
    local monster = Creature(monsterId)
    if monster and monster:isMonster() then
        monster:setStorageValue(197457, 0)
    end
end

mType.onThink = function(monster, interval)
    if monster:getStorageValue(197457) == 0 or monster:getStorageValue(197457) == -1 then
        monster:setStorageValue(197457, 1)
        spawnLavaPools()
        addEvent(checkAndSpawnLavaPools, 60000, monster:getId())
        addEvent(resetStorage, 60000, monster:getId())
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
