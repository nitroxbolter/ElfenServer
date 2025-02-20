local mType = Game.createMonsterType("Babayaga")
local monster = {}

monster.description = "a Babayaga"
monster.experience = 40000
monster.outfit = {
	lookType = 1261,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 55000
monster.maxHealth = 55000
monster.race = "undead"
monster.corpse = 26691
monster.speed = 450
monster.manaCost = 0

monster.changeTarget = {
	interval = 4000,
	chance = 0
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
	canPushCreatures = false,
	staticAttackChance = 90,
	targetDistance = 4,
	runHealth = 0,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = true,
	canWalkOnFire = true,
	canWalkOnPoison = true
}

monster.light = {
	level = 0,
	color = 0
}

monster.voices = {

}

monster.loot = {
	{id = "crystal coin", chance = 70540},
	{id = "platinum coin", chance = 81920, maxCount = 33},
	{id = 28080, chance = 71920, maxCount = 2},
	{id = 28076, chance = 71920, maxCount = 2},
	{id = 7632, chance = 54560}, -- giant shimmering pearl (green)
	{id = 7633, chance = 54560}, -- giant shimmering pearl (brown)
	{id = "white gem", chance = 64560},
	{id = 28117, chance = 7500, maxCount = 2},
	{id = "wand of voodoo", chance = 11920},
	{id = "wand of defiance", chance = 10920},
	{id = "wand of everblazing", chance = 9920},
	{id = "alloy legs", chance = 17920},
	{id = 27300, chance = 29000}, 
	{id = 26187, chance = 29000},
	{id = "wand of starstorm", chance = 11920}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -950, maxDamage = -1300},
	{name ="combat", interval = 3000, chance = 24, type = COMBAT_EARTHDAMAGE, minDamage = -950, maxDamage = -1400, range = 7, radius = 3, shootEffect = CONST_ANI_SUDDENDEATH, effect = CONST_ME_MORTAREA, target = true},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_ICEDAMAGE, minDamage = -700, maxDamage = -1600, range = 7, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA, target = true},
	{name ="combat", interval = 3000, chance = 20, type = COMBAT_FIREDAMAGE, minDamage = -750, maxDamage = -1400, radius = 4, effect = CONST_ME_FIREAREA, target = false}
}

monster.defenses = {
	defense = 75,
	armor = 100
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = -10},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 50},
	{type = COMBAT_FIREDAMAGE, percent = 0},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = - 0},
	{type = COMBAT_HOLYDAMAGE , percent = 0},
	{type = COMBAT_DEATHDAMAGE , percent = 0}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = true},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
