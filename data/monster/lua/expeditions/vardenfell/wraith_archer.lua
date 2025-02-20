local mType = Game.createMonsterType("Wraith Archer")
local monster = {}
monster.description = "a Wrath Archer"
monster.experience = 21500
monster.outfit = {
	lookType = 1384
}

monster.health = 18000
monster.maxHealth = 18000
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
	{id = "Crystal Coin", chance = 70000, maxCount = 3},
	{id = "divine mana potion", chance = 11500, maxCount = 3},
	{id = "divine health potion", chance = 11500, maxCount = 3},
	{id = "divine spirit potion", chance = 11500, maxCount = 3},
	{id = "crushed bone", chance = 4800, maxCount = 2},
	{id = "woven fabric", chance = 4000},
	{id = "ornate crossbow", chance = 2200},
	{id = "crystal crossbow", chance = 1500},
	{id = "warsinger bow", chance = 2200},
	{id = "mycological bow", chance = 1500},
	{id = "gold ingot", chance = 8000},
	{id = "violet gem", chance = 6000},
	{id = "yellow gem", chance = 4000},
	{id = "ham",  chance = 35000, maxCount = 3},
	{id = "monstrosity", chance = 7000}

}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, type = COMBAT_ARCANEDAMAGE, minDamage = -700, maxDamage = -1800, range = 7, radius = 4, shootEffect = 93, effect = 208, target = true},
	{name ="combat", interval = 2000, chance = 13, type = COMBAT_HOLYDAMAGE, minDamage = -600, maxDamage = -1400, range = 7, radius = 4, shootEffect = 31, effect = 259, target = true},
	{name ="combat", interval = 2000, chance = 17, type = COMBAT_WATERDAMAGE, minDamage = -850, maxDamage = -1800, radius = 3, effect = 343, target = false},
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_HOLYDAMAGE, minDamage = -750, maxDamage = -1700, range = 7, shootEffect = 71, effect = 270, target = true},
}

monster.defenses = {
	defense = 85,
	armor = 85,
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = -16},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = -3},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 100},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 0},
	{type = COMBAT_HOLYDAMAGE , percent = 20},
	{type = COMBAT_DEATHDAMAGE , percent = -4},
	{type = COMBAT_WATERDAMAGE, percent = 3},
	{type = COMBAT_ARCANEDAMAGE, percent = 3},
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
