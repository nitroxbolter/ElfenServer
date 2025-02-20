local mType = Game.createMonsterType("Sineater Inferniarch")
local monster = {}
monster.description = "a Sineater Inferniarch"
monster.experience = 34000
monster.outfit = {
	lookType = 1367
}

monster.health = 32000
monster.maxHealth = 32000
monster.corpse = 26691
monster.speed = 400
monster.maxSummons = 0
monster.race = "undead"

monster.changeTarget = {
	interval = 4000,
	chance = 20
}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	convinceable = false,
	pushable = true,
	illusionable = true,
	canPushItems = true,
	canPushCreatures = false,
	staticAttackChance = 90,
	targetDistance = 4,
	runHealth = 0,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = false,
	canWalkOnFire = false,
	canWalkOnPoison = false,
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
	{id = "Crystal Coin", chance = 40000, maxCount = 3},
	{id = "divine mana potion", chance = 11500, maxCount = 3},
	{id = "divine health potion", chance = 11500, maxCount = 3},
	{id = "divine spirit potion", chance = 11500, maxCount = 3},
	{id = "storm shell", chance = 1800},
	{id = "storm tail", chance = 1000},
	{id = "storm scale", chance = 4000},
	{id = "red gem", chance = 35100},
	{id = "blue gem", chance = 34080},
	{id = "blue robe", chance = 4000},
	{id = "foxtail amulet", chance = 1830},
	{id = "gill gugel", chance = 2800},
	{id = "terra legs", chance = 4500},
	{id = "terra hood", chance = 5000},
	{id = "terra mantle", chance = 3900},
	{id = "springsprout rod", chance = 6500},
	{id = "falcon rod", chance = 1200},
	{id = "jade hat", chance = 2800},
	{id = "glacial rod", chance = 1800},
	{id = "green crystal shard", chance = 5720},
	{id = "brown crystal splinter", chance = 12610, maxCount = 2},
	{id = "red crystal fragment", chance = 10540},
	{id = "mystical ribbon", chance = 2000},
	{id = "gorger antlers", chance = 9000, maxCount = 2},
	{id = "sineater wing", chance = 8000, maxCount = 3},
	{id = "monstrosity", chance = 7000}

}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, type = COMBAT_EARTHDAMAGE, minDamage = -500, maxDamage = -1700, shootEffect = 83},
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_ARCANEDAMAGE, minDamage = -600, maxDamage = -1550, range = 7, shootEffect = 64, effect = 207, target = false},
	{name ="energyfield", interval = 2000, chance = 10, range = 7, radius = 5, shootEffect = 71, target = true},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_ARCANEDAMAGE, minDamage = -600, maxDamage = -1500, range = 7, radius = 3, shootEffect = 58, effect = 286, target = true},
}

monster.defenses = {
	defense = 75,
	armor = 75,
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = -11},
	{type = COMBAT_ENERGYDAMAGE, percent = 2},
	{type = COMBAT_EARTHDAMAGE, percent = 9},
	{type = COMBAT_FIREDAMAGE, percent = -4},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 100},
	{type = COMBAT_DROWNDAMAGE, percent = 100},
	{type = COMBAT_ICEDAMAGE, percent = 0},
	{type = COMBAT_HOLYDAMAGE , percent = 0},
	{type = COMBAT_DEATHDAMAGE , percent = -6},
	{type = COMBAT_WATERDAMAGE, percent = -3},
	{type = COMBAT_ARCANEDAMAGE, percent = 7},
}

monster.immunities = {
	{type = "fire", condition = false},
	{type = "drown", condition = true},
	{type = "lifedrain", combat = true},
	{type = "paralyze", condition = true},
	{type = "invisible", condition = true}
}

mType.onThink = function(monster, interval)
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
