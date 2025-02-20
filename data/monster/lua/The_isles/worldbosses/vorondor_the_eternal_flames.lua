local mType = Game.createMonsterType("Vorondor The Eternal Flames")
local monster = {}

monster.description = "Vorondor The Eternal Flames"
monster.experience = 425000
monster.outfit = {
	lookType = 1132,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}


monster.health = 1150000
monster.maxHealth = 1150000
monster.race = "undead"
monster.corpse = 26691
monster.speed = 900
monster.manaCost = 0

monster.changeTarget = {
	interval = 4000,
	chance = 10
}
monster.events = {
	"playerAttackSound"
}
monster.strategiesTarget = {
	nearest = 10,
	health = 10,
	damage = 70,
	random = 10,
}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	convinceable = false,
	pushable = false,
	rewardBoss = false,
	illusionable = true,
	canPushItems = true,
	canPushCreatures = true,
	staticAttackChance = 95,
	targetDistance = 1,
	runHealth = 0,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = true,
	canWalkOnFire = true,
	canWalkOnPoison = true,
	pet = false
}

monster.light = {
	level = 0,
	color = 0
}

monster.summons = {
}

monster.voices = {
}

monster.loot = {
	{id = "crystal coin", chance = 95000, maxCount = 70},
	{id = "tumble mana potion", chance = 84285, maxCount = 12},
	{id = "tumble life potion", chance = 85000, maxCount = 12},
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
	{id = "vorondor flames", chance = 500},
	{id = "The Awakener", chance = 400},
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
	{name ="melee", interval = 2000, chance = 100, skill = 400, attack = 400},
	{name ="vorondorexplosion", interval = 2000, chance = 15, minDamage = -2500, maxDamage = -5000, target = false},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_FIREDAMAGE, minDamage = -2300, maxDamage = -9000, length = 10, spread = 3, effect = 226, target = false},
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_FIREDAMAGE, minDamage = -2200, maxDamage = -7800, radius = 3, effect = 216, target = false},
	{name ="combat", interval = 2000, chance = 19, type = COMBAT_FIREDAMAGE, minDamage = -2000, maxDamage = -5500, radius = 4, effect = 257, target = false},
	{name ="firefield", interval = 2000, chance = 12, radius = 6, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREATTACK, target = true},
	{name ="combat", interval = 2000, chance = 4, type = COMBAT_FIREDAMAGE, minDamage = -1900, maxDamage = -4600, range = 3, shootEffect = 71, effect = 251, target = false}
}

monster.defenses = {
	defense = 180,
	armor = 180,
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = 100},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 100},
	{type = COMBAT_DROWNDAMAGE, percent = 100},
	{type = COMBAT_ICEDAMAGE, percent = 0},
	{type = COMBAT_HOLYDAMAGE , percent = 0},
	{type = COMBAT_DEATHDAMAGE , percent = 0}
}

monster.immunities = {
	{type = "paralyze", condition = false},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
