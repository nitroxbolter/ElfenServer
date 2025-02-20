local mType = Game.createMonsterType("Katex Blood Tongue")
local monster = {}

monster.description = "Katex Blood Tongue"
monster.experience = 5000
monster.outfit = {
	lookType = 1047,
	lookHead = 76,
	lookBody = 57,
	lookLegs = 113,
	lookFeet = 113,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 6300
monster.maxHealth = 6300
monster.race = "blood"
monster.corpse = 26691
monster.speed = 350
monster.manaCost = 0

monster.changeTarget = {
	interval = 5000,
	chance = 0
}


monster.strategiesTarget = {
	nearest = 100,
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
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 0,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = false,
	canWalkOnFire = true,
	canWalkOnPoison = true
}

monster.light = {
	level = 0,
	color = 0
}

monster.summon = {
	maxSummons = 1,
	summons = {
		{name = "werehyaena", chance = 50, interval = 5000, count = 1}
	}
}

monster.voices = {
	interval = 0,
	chance = 0
}

monster.loot = {
	{id = "platinum coin", chance = 32300, maxCount = 17},
	{id = "ultimate health potion", chance = 32300, maxCount = 5},
	{id = "gold ingot", chance = 2870},
	{id = "werehyaena nose", chance = 14800},
	{id = "katex's blood", chance = 12000},
	{id = "violet gem", chance = 510},
	{id = "werehyaena talisman", chance = 12000},
	{id = "demon shield", chance = 800},
	{id = "skull helmet", chance = 930},
	{id = "blue gem", chance = 560},
	{id = "gold ring", chance = 670},
	{id = "magic plate armor", chance = 140},
	{id = "demonrage sword", chance = 90},
	{id = "moonlight crystals", chance = 920},
	{id = "jade hammer", chance = 6200},
	{id = 26187, chance = 156}, -- ring of green plasma
	{id = "golden armor", chance = 18200},
	{id = "alloy legs", chance = 180},
	{id = "assassin dagger", chance = 2070},
	{id = "mastermind potion", chance = 750},
	{id = "ornate crossbow", chance = 2000},
	{id = "war axe", chance = 90},
	{id = "red silk flower", chance = 14800},
	{id = "raw watermelon tourmaline", chance = 960},
	{id = 7633, chance = 14000, maxCount = 2} -- giant shimmering pearl (brown)
}

monster.attacks = {
	{name = "melee", type = COMBAT_PHYSICALDAMAGE, interval = 2000, minDamage = -150, maxDamage = -300},
    {name = "combat", type = COMBAT_EARTHDAMAGE, interval = 2000, chance = 17, minDamage = -350, maxDamage = -500, range = 5, radius = 4, target = true, shootEffect = CONST_ANI_EARTH, effect = CONST_ME_GREEN_RINGS},
    {name = "combat", type = COMBAT_DEATHDAMAGE, interval = 2000, chance = 15, minDamage = -300, maxDamage = -430, radius = 4, target = false, effect = CONST_ME_MORTAREA},
    {name = "combat", type = COMBAT_DEATHDAMAGE, interval = 2000, chance = 13, minDamage = -250, maxDamage = -350, length = 3, spread = 0, effect = CONST_ME_MORTAREA}
}

monster.defenses = {
	{name = "speed", chance = 15, interval = 2*1000, speed = 450, effect = CONST_ME_MAGIC_RED},
	defense = 0,
	armor = 38
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 40},
	{type = COMBAT_FIREDAMAGE, percent = 10},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 0},
	{type = COMBAT_HOLYDAMAGE , percent = 0},
	{type = COMBAT_DEATHDAMAGE , percent = 0}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = true},
	{type = "invisible", condition = true},
	{type = "bleed", condition = true}
}

mType.onAppear = function(monster, creature)
end

mType:register(monster)
