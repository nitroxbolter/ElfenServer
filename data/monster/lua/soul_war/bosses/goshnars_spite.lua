local mType = Game.createMonsterType("Goshnar's Spite")
local monster = {}

monster.description = "Goshnar's Spite"
monster.experience = 200000
monster.outfit = {
	lookType = 1052,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 300000
monster.maxHealth = 300000
monster.race = "undead"
monster.corpse = 26691
monster.speed = 550

monster.changeTarget = {
	interval = 2000,
	chance = 10
}

monster.strategiesTarget = {
	nearest = 70,
	health = 10,
	damage = 10,
	random = 10,
}
monster.events = {
	"playerAttackSound"
}
monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	convinceable = false,
	pushable = false,
	rewardBoss = false,
	illusionable = false,
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

monster.summon = {
	maxSummons = 4,
	summons = {
		{name = "dreadful harvester", chance = 40, interval = 1000, count = 2},
		{name = "spiteful spitter", chance = 30, interval = 1000, count = 2}
	}
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Ah that Pain you inflicted! Let me share it with you!", yell = true},
	{text = "You will suffer!", yell = true},
	{text = "I will harvest your soul!", yell = true}
}

monster.loot = {
	{id = "crystal coin", chance = 55000, minCount = 70, maxCount = 75},
	{id = 7632, chance = 1150}, -- giant shimmering pearl (green)
	{id = "giant sapphire", chance = 10000, maxCount = 1},
	{id = "giant topaz", chance = 10000, maxCount = 1},
	{id = "violet gem", chance = 6000, maxCount = 1},
	{id = "blue gem", chance = 10000, maxCount = 3},
	{id = 2156, chance = 10000, maxCount = 3}, -- red gem
	{id = "green gem", chance = 10000, maxCount = 3},
	{id = "yellow gem", chance = 10000, maxCount = 3},
	{id = "boss token", chance = 8000, maxCount = 2},
	{id = "exercise token", chance = 4000, maxCount = 2},
	{id = "white gem", chance = 6000, maxCount = 3},
	{id = "dragon figurine", chance = 10000, maxCount = 1},
	{id = "bullseye potion", chance = 15000, minCount = 10, maxCount = 25},
	{id = "mastermind potion", chance = 15000, minCount = 10, maxCount = 25},
	{id = "berserk potion", chance = 15000, minCount = 10, maxCount = 25},
	{id = "ultimate mana potion", chance = 18000, minCount = 50, maxCount = 100},
	{id = "supreme health potion", chance = 18000, minCount = 50, maxCount = 100},
	{id = "ultimate spirit potion", chance = 18000, minCount = 50, maxCount = 100},
	{id = "the skull of a beast", chance = 400},
	{id = "figurine of spite", chance = 400},
	{id = "spite's spirit", chance = 400},
	{id = "bag you desire", chance = 600},
	{id = 29619, chance = 5000}, --- Upgrade Rune v1
	{id = 29620, chance= 3000}, --- Upgrade Rune v2
	{id = 29621, chance = 2500}, --- Upgrade Rune v3
	{id = 29622, chance = 2000}, --- Upgrade Rune v4
	{id = 29623, chance = 3000} --- Upgrade and Rarity Remover
}

monster.attacks = {

	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -2000},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_EARTHDAMAGE, minDamage = -400, maxDamage = -1200, length = 8, spread = 3, effect = CONST_ME_GREEN_RINGS, target = false},
	{name ="singlecloudchain", interval = 6000, chance = 40, minDamage = -700, maxDamage = -1500, range = 6, effect = CONST_ME_ENERGYHIT, target = true},
	{name ="combat", interval = 2000, chance = 30, type = COMBAT_EARTHDAMAGE, minDamage = -1000, maxDamage = -2500, range = 7, radius = 4, shootEffect = CONST_ANI_POISON, effect = CONST_ME_GREEN_RINGS, target = true},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_EARTHDAMAGE, minDamage = -400, maxDamage = -1200, length = 8, spread = 0, effect = CONST_ME_GREEN_RINGS, target = false}
}

monster.defenses = {
	defense = 160,
	armor = 160,
	{name = "speed", chance = 15, interval = 2*1000, speed = 650, effect = CONST_ME_MAGIC_RED},
	{name ="combat", interval = 2000, chance = 25, type = COMBAT_HEALING, minDamage = 350, maxDamage = 1250, effect = 185, target = false},
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 10},
	{type = COMBAT_EARTHDAMAGE, percent = 20},
	{type = COMBAT_FIREDAMAGE, percent = 10},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 100},
	{type = COMBAT_ICEDAMAGE, percent = 10},
	{type = COMBAT_HOLYDAMAGE , percent = 0},
	{type = COMBAT_DEATHDAMAGE , percent = 0}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType.onThink = function(monster, interval)
end

mType.onAppear = function(monster, creature)
end

mType.onDisappear = function(monster, creature)
end

mType.onMove = function(monster, creature, fromPosition, toPosition)
end

mType.onSay = function(monster, creature, type, message)
end

mType:register(monster)
