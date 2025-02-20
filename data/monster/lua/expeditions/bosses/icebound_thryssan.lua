local mType = Game.createMonsterType("Icebound Thryssan")
local monster = {}
monster.description = "a Icebound Thryssan"
monster.experience = 700000
monster.outfit = {
	lookType = 1389
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
	{id = "azure essence", chance = 80000, maxCount = 2},
	{id = "frozen sapphire shard", chance = 80000, maxCount = 4},
	{id = "glacial sapphire shard", chance = 15000, maxCount = 2},
	{id = "abyssal whirlpool", chance = 30000, maxCount = 3},
	{id = "cerulean droplet", chance = 30000, maxCount = 3},
	{id = "tidal sphere", chance = 8000},
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
	{name ="melee", interval = 2000, chance = 100, minDamage = -1800, maxDamage = -4500},
	{name ="combat", interval = 2000, chance = 40, type = COMBAT_PHYSICALDAMAGE, minDamage = -1800, maxDamage = -3500, range = 7, radius = 6, effect = 338, target = false},
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_ICEDAMAGE, minDamage = -1400, maxDamage = -3950, range = 7, radius = 7, shootEffect = 65, effect = 197, target = true},
	{name ="combat", interval = 4000, chance = 30, type = COMBAT_ICEDAMAGE, minDamage = -1900, maxDamage = -3800, length = 8, spread = 3, effect = 282, target = false},
	{name ="combat", interval = 3000, chance = 20, type = COMBAT_PHYSICALDAMAGE, minDamage = -2600, maxDamage = -5000, range = 14, radius = 5, effect = 339, target = false},
	{name ="combat", interval = 4000, chance = 15, type = COMBAT_ICEDAMAGE, minDamage = -1700, maxDamage = -3650, range = 7, radius = 13, effect = 300, target = false},
}

monster.defenses = {
	defense = 200,
	armor = 200,
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 10},
	{type = COMBAT_ENERGYDAMAGE, percent = -2},
	{type = COMBAT_EARTHDAMAGE, percent = -4},
	{type = COMBAT_FIREDAMAGE, percent = -15},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 100},
	{type = COMBAT_DROWNDAMAGE, percent = 100},
	{type = COMBAT_ICEDAMAGE, percent = 100},
	{type = COMBAT_HOLYDAMAGE , percent = -4},
	{type = COMBAT_DEATHDAMAGE , percent = -3},
	{type = COMBAT_WATERDAMAGE, percent = 11},
	{type = COMBAT_ARCANEDAMAGE, percent = -4},
}

monster.immunities = {
	{type = "fire", condition = false},
	{type = "drown", condition = true},
	{type = "lifedrain", combat = true},
	{type = "paralyze", condition = true},
	{type = "invisible", condition = true}
}

local fromPos = {x = 30896, y = 31293, z = 4}
local toPos = {x = 30922, y = 31321, z = 4}
local damage = math.random(-8000, -14000)
local freezeDuration = 8000

local function getPlayersInArea(fromPos, toPos)
    if not fromPos or not toPos then
        return {}
    end

    local players = {}
    for x = fromPos.x, toPos.x do
        for y = fromPos.y, toPos.y do
            local tile = Tile({x = x, y = y, z = fromPos.z})
            if tile then
                for _, creature in ipairs(tile:getCreatures() or {}) do
                    if creature:isPlayer() then
                        table.insert(players, creature)
                    end
                end
            end
        end
    end
    return players
end

local function dealAoeDamage(monsterId)
    local monster = Monster(monsterId)
    if not monster then
        return
    end

    local monsterPos = monster:getPosition()
    local aoeRadius = 7

    for x = -aoeRadius, aoeRadius do
        for y = -aoeRadius, aoeRadius do
            local pos = {x = monsterPos.x + x, y = monsterPos.y + y, z = monsterPos.z}
            local distance = math.sqrt(x^2 + y^2)

            if distance <= aoeRadius then
                local tile = Tile(pos)
                if tile then
                    Position(pos):sendMagicEffect(205)

                    addEvent(function()
                        Position(pos):sendMagicEffect(282)
                    end, 1000)

                    for _, creature in ipairs(tile:getCreatures() or {}) do
                        if creature:isPlayer() then
                            creature:addHealth("ice", damage)
                        end
                    end
                end
            end
        end
    end
end

local function preDamageEffect(monsterId)
    local monster = Monster(monsterId)
    if not monster then
        return
    end

    local monsterPos = monster:getPosition()
    local aoeRadius = 7

    for x = -aoeRadius, aoeRadius do
        for y = -aoeRadius, aoeRadius do
            local pos = {x = monsterPos.x + x, y = monsterPos.y + y, z = monsterPos.z}
            local distance = math.sqrt(x^2 + y^2)
            if distance <= aoeRadius then
                Position(pos):sendMagicEffect(262) -- Apply the effect 262
            end
        end
    end
end

mType.onThink = function(monster, interval)
    if math.random(1, 100) <= 13 then
        local players = getPlayersInArea(fromPos, toPos)
    
        if #players > 0 then
			if monster:getStorageValue(197458) == 0 or monster:getStorageValue(197458) == -1 then
            monster:say("The cold grips you... Prepare to freeze!", TALKTYPE_MONSTER_SAY)
            monster:setNoMove(true)
            monster:setStorageValue(197458, 1)
			addEvent(preDamageEffect, 1000, monster:getId())
			addEvent(preDamageEffect, 2000, monster:getId())
			addEvent(function()
				monster:say("Freeze!", TALKTYPE_MONSTER_SAY)
			end, 4000)
            addEvent(dealAoeDamage, 5000, monster:getId())
            addEvent(function()
                local monsterRef = Monster(monster:getId())
                if monsterRef then
                    monsterRef:setNoMove(false)
					monster:setStorageValue(197458, 0)
                end
            end, freezeDuration)
			else
				return true
        	end
    	end
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
