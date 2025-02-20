local mType = Game.createMonsterType("Emberlord Zanarth")
local monster = {}
monster.description = "a Emberlord Zanarth"
monster.experience = 1200000
monster.outfit = {
	lookType = 1393
}

monster.health = 1500000
monster.maxHealth = 1500000
monster.race = "undead"
monster.corpse = 26691
monster.speed = 1500
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
	{id = "Crystal Coin", chance = 95000, maxCount = 90},
	{id = "mythic mana potion", chance = 100000, maxCount = 15},
	{id = "mythic health potion", chance = 100000, maxCount = 15},
	{id = "mythic spirit potion", chance = 100000, maxCount = 15},
	{id = "crimson tonic", chance = 80000, maxCount = 2},
	{id = "molten ruby shard", chance = 80000, maxCount = 4},
	{id = "volcanic ruby shard", chance = 15000, maxCount = 2},
	{id = "bloodfire fragment", chance = 30000, maxCount = 3},
	{id = "dread core", chance = 30000, maxCount = 3},
	{id = "crimson soulstone", chance = 8000},
	{id = "venerable cloth", chance = 72000, maxCount = 5},
	{id = "titanium bar", chance = 28000, maxCount = 2},
	{id = "golden fang", chance = 50000, maxCount = 2},
	{id = "azure frostlight shard", chance = 50000, maxCount = 2},
	{id = "adamantine bar", chance = 70000, maxCount = 15},
	{id = "mithril bar", chance = 70000, maxCount = 15},
	{id = "crimson vial", chance = 28000, maxCount = 2},
	{id = "petrified dragon head", chance = 13000},
	{id = "petrified dragon wings", chance = 15000},
	{id = "petrified dragon foot", chance = 20000},
	{id = "giant white pearl", chance = 88000, maxCount = 3},
	{id = "giant sky blue pearl", chance = 55000, maxCount = 3},
	{id = "giant midnight pearl", chance = 65000, maxCount = 3},
	{id = "giant pearl bracelet", chance = 22000},
	{id = "diamond ring in a shell", chance = 20000},
	{id = "rough diamond", chance = 10000, maxCount = 2},
	{id = "jungle flail", chance = 4000},
	{id = "throwing axe", chance = 4000},
	{id = "exotic legs", chance = 6000},
	{id = "bast legs", chance = 6000},
	{id = "jungle bow", chance = 4000},
	{id = "makeshift boots", chance = 4500},
	{id = "make-do boots", chance = 4500},
	{id = "jungle rod", chance = 4000},
	{id = "jungle wand", chance = 4000},
	{id = "jungle quiver", chance = 4000},
	{id = "eldritch shield", chance = 4000},
	{id = "eldritch claymore", chance = 4000},
	{id = "gilded eldritch claymore", chance = 2000},
	{id = "eldritch warmace", chance = 4000},
	{id = "gilded eldritch warmace", chance = 2000},
	{id = "eldritch greataxe", chance = 4000},
	{id = "gilded eldritch greataxe", chance = 2000},
	{id = "eldritch cuirass", chance = 4000},
	{id = "eldritch bow", chance = 4000},
	{id = "gilded eldritch bow", chance = 2000},
	{id = "eldritch quiver", chance = 4000},
	{id = "eldritch breeches", chance = 5500},
	{id = "eldritch wand", chance = 4000},
	{id = "gilded eldritch wand", chance = 2000},
	{id = "eldritch cowl", chance = 4000},
	{id = "eldritch hood", chance = 4000},
	{id = "eldritch folio", chance = 4000},
	{id = "eldritch tome", chance = 4000},
	{id = "eldritch rod", chance = 4000},
	{id = "gilded eldritch rod", chance = 2000},
	{id = "spiritthorn armor", chance = 2500},
	{id = "spiritthorn helmet", chance = 2500},
	{id = "alicorn headguard", chance = 2500},
	{id = "alicorn quiver", chance = 2500},
	{id = "aeris quiver", chance = 2500},
	{id = "bazelgeuse quiver", chance = 2000},
	{id = "kirin quiver", chance = 2000},
	{id = "arcanomancer regalia", chance = 2500},
	{id = "arcanomancer folio", chance = 2500},
	{id = "arboreal crown", chance = 2500},
	{id = "arboreal tome", chance = 2500},
	{id = "naga sword", chance = 2500},
	{id = "naga club", chance = 2500},
	{id = "frostflower boots", chance = 2500},
	{id = "naga crossbow", chance = 2500},
	{id = "naga quiver", chance = 2500},
	{id = "feverbloom boots", chance = 2500},
	{id = "naga wand", chance = 2500},
	{id = "naga rod", chance = 2500},
	{id = "dawnfire sherwani", chance = 2500},
	{id = "midnight tunic", chance = 2500},
	{id = "dawnfire pantaloons", chance = 2500},
	{id = "midnight sarong", chance = 2500},
	{id = "legendary exotic essence", chance = 55000, maxCount = 5},
	{id = "legendary chaos essence", chance = 33000, maxCount = 5},
	{id = "legendary abyssal essence", chance = 26000, maxCount = 5},
	{id = "legendary ancestral essence", chance = 20000, maxCount = 5},
	{id = "rare essence", chance = 50000, maxCount = 5},
	{id = "epic essence", chance = 35000, maxCount = 5},
	{id = "mythic essence", chance = 25000, maxCount = 5},
	{id = "raging exiled spirit badge", chance = 2500},
	{id = "raging fury badge", chance = 3500},
	{id = "raging moon badge", chance = 3500},
	{id = "raging night seeker badge", chance = 3500},
	{id = "raging earthshade badge", chance = 3500},
	{id = "raging reborn badge", chance = 3500},
	{id = "raging chaosfiend badge", chance = 3500},
	{id = "raging veins badge", chance = 3500},
	{id = "raging daybreak badge", chance = 3500},
	{id = "legendary exotic ascalon lv1", chance = 2000},
	{id = "legendary exotic saydon lv1", chance = 2000},
	{id = "legendary exotic vercruze lv1", chance = 2000},
	{id = "legendary exotic kaiser lv1", chance = 2000},
	{id = "legendary chaos ascalon lv1", chance = 1700},
	{id = "legendary chaos saydon lv1", chance = 1700},
	{id = "legendary chaos vercruze lv1", chance = 1700},
	{id = "legendary chaos kaiser lv1", chance = 1700},
	{id = "legendary abyssal ascalon lv1", chance = 1500},
	{id = "legendary abyssal saydon lv1", chance = 1500},
	{id = "legendary abyssal vercruze lv1", chance = 1500},
	{id = "legendary abyssal kaiser lv1", chance = 1500},
	{id = "legendary ancestral ascalon lv1", chance = 1400},
	{id = "legendary ancestral saydon lv1", chance = 1400},
	{id = "legendary ancestral vercruze lv1", chance = 1400},
	{id = "legendary ancestral kaiser lv1", chance = 1400},
	{id = "exiled amplifier catalyst [1]", chance = 8000, maxCount = 2},
	{id = "exiled amplifier catalyst [2]", chance = 6200, maxCount = 2},
	{id = "exiled amplifier catalyst [3]", chance = 4000},
	{id = "fury amplifier catalyst [1]", chance = 8000, maxCount = 2},
	{id = "fury amplifier catalyst [2]", chance = 6200, maxCount = 2},
	{id = "exiled amplifier catalyst [3]", chance = 4000},
	{id = "moon amplifier catalyst [1]", chance = 8000, maxCount = 2},
	{id = "moon amplifier catalyst [2]", chance = 6200, maxCount = 2},
	{id = "moon amplifier catalyst [3]", chance = 3000},
	{id = "moon amplifier catalyst [4]", chance = 1000},
	{id = "night seeker amplifier catalyst [1]", chance = 8000, maxCount = 2},
	{id = "night seeker amplifier catalyst [2]", chance = 6200, maxCount = 2},
	{id = "night seeker amplifier catalyst [3]", chance = 4000},
	{id = "night seeker amplifier catalyst [4]", chance = 3000},
	{id = "earthshade amplifier catalyst [1]", chance = 8000, maxCount = 2},
	{id = "earthshade amplifier catalyst [2]", chance = 6200, maxCount = 2},
	{id = "earthshade amplifier catalyst [3]", chance = 4000},
	{id = "reborn amplifier catalyst [1]", chance = 8000, maxCount = 2},
	{id = "reborn amplifier catalyst [2]", chance = 6200, maxCount = 2},
	{id = "reborn amplifier catalyst [3]", chance = 4000},
	{id = "reborn amplifier catalyst [4]", chance = 3000},
	{id = "chaosfiend amplifier catalyst [1]", chance = 8000, maxCount = 2},
	{id = "chaosfiend amplifier catalyst [2]", chance = 6200, maxCount = 2},
	{id = "chaosfiend amplifier catalyst [3]", chance = 4000},
	{id = "veins amplifier catalyst [1]", chance = 8000, maxCount = 2},
	{id = "veins amplifier catalyst [2]", chance = 6200, maxCount = 2},
	{id = "veins amplifier catalyst [3]", chance = 4000},
	{id = "daybreak amplifier catalyst [1]", chance = 8000, maxCount = 2},
	{id = "daybreak amplifier catalyst [2]", chance = 6200, maxCount = 2},
	{id = "daybreak amplifier catalyst [3]", chance = 4000},
	{id = "daybreak amplifier catalyst [4]", chance = 3000},
	{id = "golden deck", chance = 10000},
	{id = "butterfly wings", chance = 2500},
	{id = "Whisperwind", chance = 3000},
	{id = "boss token", chance = 12000, maxCount = 2},
	{id = "exercise token", chance = 9000, maxCount = 2},
	{id = "ticket roulette", chance = 7000, maxCount = 2},
	{id = "Zanarth Heart", chance = 89000, maxCount = 1},
	{id = "Ancient Glyph", chance = 90000, maxCount = 2},
	{id = 29619, chance = 20000}, --- Upgrade Rune v1
	{id = 29620, chance= 15000}, --- Upgrade Rune v2
	{id = 29621, chance = 11500}, --- Upgrade Rune v3
	{id = 29622, chance = 8000}, --- Upgrade Rune v4
	{id = 29623, chance = 20000} --- Upgrade and Rarity Remover

}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -3000, maxDamage = -7000},
	{name ="combat", interval = 1000, chance = 8, type = COMBAT_ARCANEDAMAGE, minDamage = -4000, maxDamage = -9000, radius = 9, effect = 217, target = false},
	{name ="speed", interval = 1000, chance = 12, speed = -900, radius = 6, effect = 224, target = false, duration = 60000},
	{name ="combat", interval = 3000, chance = 13, type = COMBAT_WATERDAMAGE, minDamage = -3500, maxDamage = -9000, range = 7, radius = 7, shootEffect = 67, effect = 232, target = true},
	{name ="combat", interval = 3000, chance = 8, type = COMBAT_FIREDAMAGE, minDamage = -2000, maxDamage = -5000, radius = 10, effect = 200, target = false},
	{name ="combat", interval = 2000, chance = 9, type = COMBAT_DEATHDAMAGE, minDamage = -1800, maxDamage = -5800, length = 8, spread = 3, effect = 229, target = false},
	{name ="combat", interval = 1000, chance = 10, type = COMBAT_ICEDAMAGE, minDamage = -1900, maxDamage = -4800, radius = 8, effect = 282, target = false},
	{name ="combat", interval = 1000, chance = 7, type = COMBAT_ENERGYDAMAGE, minDamage = -1800, maxDamage = -5800, range = 7, shootEffect = 291, effect = 247, target = false},
	
}

monster.defenses = {
	defense = 150,
	armor = 150,
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 10},
	{type = COMBAT_ENERGYDAMAGE, percent = 10},
	{type = COMBAT_EARTHDAMAGE, percent = 10},
	{type = COMBAT_FIREDAMAGE, percent = 10},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 100},
	{type = COMBAT_DROWNDAMAGE, percent = 100},
	{type = COMBAT_ICEDAMAGE, percent = 10},
	{type = COMBAT_HOLYDAMAGE , percent = 10},
	{type = COMBAT_DEATHDAMAGE , percent = 10},
	{type = COMBAT_WATERDAMAGE, percent = 10},
	{type = COMBAT_ARCANEDAMAGE, percent = 10},
}

monster.immunities = {
	{type = "fire", condition = true},
	{type = "drown", condition = true},
	{type = "lifedrain", combat = true},
	{type = "paralyze", condition = true},
	{type = "invisible", condition = true}
}


mType.onThink = function(monster, interval)
    local fromPos = Position(30925, 31257, 9)
    local toPos = Position(30951, 31279, 9)
    local centerPos = Position(30938, 31267, 9)


    local areaDamage1From = Position(30935, 31258, 9)
    local areaDamage1To = Position(30941, 31277, 9)
    local areaDamage2From = Position(30927, 31266, 9)
    local areaDamage2To = Position(30949, 31269, 9)

    if monster:getStorageValue(197467) == 0 or monster:getStorageValue(197467) == -1 then
        monster:setStorageValue(197467, 1)

		monster:say("Zanarth's curse is upon you!", TALKTYPE_MONSTER_SAY)
		addEvent(function() 
		monster:teleportTo(centerPos)
		monster:setNoMove(true)
        local center = Position(30938, 31267, 9)
    	local spectators = Game.getSpectators(center, false, false, 30, 30, 30, 30) 

    	for _, creature in ipairs(spectators) do
        	if creature:isPlayer() then
            	creature:teleportTo(center, true)
            	center:sendMagicEffect(CONST_ME_TELEPORT)
        	end
    	end
		end, 3000)

        addEvent(function()
            for x = areaDamage1From.x, areaDamage1To.x do
                for y = areaDamage1From.y, areaDamage1To.y do
                    local tilePos = Position(x, y, areaDamage1From.z)
                    tilePos:sendMagicEffect(262)
                end
            end
            for x = areaDamage2From.x, areaDamage2To.x do
                for y = areaDamage2From.y, areaDamage2To.y do
                    local tilePos = Position(x, y, areaDamage2From.z)
                    tilePos:sendMagicEffect(262)
                end
            end
        end, 3500)

        addEvent(function()
            for x = areaDamage1From.x, areaDamage1To.x do
                for y = areaDamage1From.y, areaDamage1To.y do
                    local tilePos = Position(x, y, areaDamage1From.z)
                    tilePos:sendMagicEffect(317)
                end
            end
            for x = areaDamage2From.x, areaDamage2To.x do
                for y = areaDamage2From.y, areaDamage2To.y do
                    local tilePos = Position(x, y, areaDamage2From.z)
                    tilePos:sendMagicEffect(317)
                end
            end
        end, 4800)

        addEvent(function()
            for x = areaDamage1From.x, areaDamage1To.x do
                for y = areaDamage1From.y, areaDamage1To.y do
                    local tilePos = Position(x, y, areaDamage1From.z)
                    tilePos:sendMagicEffect(312)
                end
            end
            for x = areaDamage2From.x, areaDamage2To.x do
                for y = areaDamage2From.y, areaDamage2To.y do
                    local tilePos = Position(x, y, areaDamage2From.z)
                    tilePos:sendMagicEffect(312)
                end
            end

            local areaSpectators1 = Game.getSpectators(areaDamage1From, false, true, areaDamage1To)
            for _, creature in ipairs(areaSpectators1) do
                if creature:isPlayer() then
                    creature:addHealth("arcane", -30000)
                end
            end

            local areaSpectators2 = Game.getSpectators(areaDamage2From, false, true, areaDamage2To)
            for _, creature in ipairs(areaSpectators2) do
                if creature:isPlayer() then
                    creature:addHealth("arcane", -30000)
                end
            end
        end, 5500)

        addEvent(function()
            if monster then
                monster:setNoMove(false)
            end
        end, 8000)
		addEvent(function() monster:setStorageValue(197467, 0) end, 15000)
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
