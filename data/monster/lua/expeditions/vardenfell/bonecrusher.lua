local mType = Game.createMonsterType("Bonecrusher")
local monster = {}
monster.description = "a Bonecrusher"
monster.experience = 25000
monster.outfit = {
	lookType = 1383
}

monster.health = 21000
monster.maxHealth = 21000
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
	targetDistance = 1,
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
	{id = "Crystal Coin", chance = 70000, maxCount = 3},
	{id = "divine mana potion", chance = 11500, maxCount = 3},
	{id = "divine health potion", chance = 11500, maxCount = 3},
	{id = "divine spirit potion", chance = 11500, maxCount = 3},
	{id = "crushed bone", chance = 4800, maxCount = 2},
	{id = "woven fabric", chance = 4000},
	{id = "diamond", chance = 4170},
	{id = "small diamond", chance = 7000, maxCount = 4},
	{id = "soulful legs", chance = 2000},
	{id = "fire axe", chance = 8000},
	{id = "crystal wand", chance = 4000},
	{id = "guardian halberd", chance = 9000},
	{id = "demon horn", chance = 8000},
	{id = "magic sulphur", chance = 4000},
	{id = "royal draken mail", chance = 1800},
	{id = "ham",  chance = 35000, maxCount = 3},
	{id = "monstrosity", chance = 7000}

}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -500, maxDamage = -1800},
	{name ="combat", interval = 1700, chance = 15, type = COMBAT_WATERDAMAGE, minDamage = -600, maxDamage = -1450, radius = 3, shootEffect = 65, target = true},
	{name ="combat", interval = 1700, chance = 25, type = COMBAT_ENERGYDAMAGE, minDamage = -700, maxDamage = -1800, length = 4, spread = 3, effect = 230, target = false},
	{name ="combat", interval = 1700, chance = 35, type = COMBAT_DEATHDAMAGE, minDamage = -520, maxDamage = -1700, radius = 3, effect = 247, target = false},
}

monster.defenses = {
	defense = 85,
	armor = 85,
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 5},
	{type = COMBAT_ENERGYDAMAGE, percent = 7},
	{type = COMBAT_EARTHDAMAGE, percent = -6},
	{type = COMBAT_FIREDAMAGE, percent = 0},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 100},
	{type = COMBAT_DROWNDAMAGE, percent = 100},
	{type = COMBAT_ICEDAMAGE, percent = 0},
	{type = COMBAT_HOLYDAMAGE , percent = -3},
	{type = COMBAT_DEATHDAMAGE , percent = 11},
	{type = COMBAT_WATERDAMAGE, percent = 4},
	{type = COMBAT_ARCANEDAMAGE, percent = -7},
}

monster.immunities = {
	{type = "fire", condition = true},
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
