local mType = Game.createMonsterType("Stonebark Titan")
local monster = {}
monster.description = "a Stonebark Titan"
monster.experience = 55000
monster.outfit = {
	lookType = 1387
}

monster.health = 50000
monster.maxHealth = 50000
monster.corpse = 26691
monster.speed = 350
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
	{id = "Crystal Coin", chance = 40000, maxCount = 3},
	{id = "divine mana potion", chance = 11500, maxCount = 3},
	{id = "divine health potion", chance = 11500, maxCount = 3},
	{id = "divine spirit potion", chance = 11500, maxCount = 3},
	{id = "eviscerated eye", chance = 8800, maxCount = 2},
	{id = "loaded leather", chance = 19000},
	{id = "robust scale", chance = 10000, maxCount = 2},
	{id = "poison fin", chance = 9000},
	{id = "storm shell", chance = 4000},
	{id = "storm tail", chance = 7800},
	{id = "storm scale", chance = 9000},
	{id = "brown mushroom", chance = 14000, maxCount = 2},
	{id = "beastslayer axe", chance = 4260},
	{id = "mercenary sword", chance = 2500},
	{id = "spiked squelcher", chance = 410},
	{id = "crown legs", chance = 1500},
	{id = "crusader helmet", chance = 1400},
	{id = "tower shield", chance = 2280},
	{id = "steel boots", chance = 1420},
	{id = "onyx flail", chance = 1100},
	{id = "jade hammer", chance = 900},
	{id = "blue crystal shard", chance = 23000, maxCount = 3},
	{id = "violet crystal shard", chance = 32000, maxCount = 3},
	{id = "green crystal shard", chance = 21600, maxCount = 3},
	{id = "green crystal splinter", chance = 30000, maxCount = 5},
	{id = "brown crystal splinter", chance = 30410, maxCount = 5},
	{id = "blue crystal splinter", chance = 40000, maxCount = 5},
	{id = "boots of haste", chance = 2000},
	{id = "crown helmet", chance = 4000},
	{id = "magic plate armor", chance = 2000},
	{id = "store coin", chance = 2000},
	{id = "monstrosity", chance = 7000}

}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, type = COMBAT_PHYSICALDAMAGE, minDamage = -1500, maxDamage = -3000},
	{name ="combat", interval = 2000, chance = 40, type = COMBAT_FIREDAMAGE, minDamage = -950, maxDamage = -2720, radius = 4, range = 5, shootEffect = 12, effect = 248, target = true},
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_EARTHDAMAGE, minDamage = -1350, maxDamage = -3850, range = 5, shootEffect = 30, effect = 272, target = true},

}

monster.defenses = {
	defense = 220,
	armor = 220,
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 20},
	{type = COMBAT_ENERGYDAMAGE, percent = 20},
	{type = COMBAT_EARTHDAMAGE, percent = 20},
	{type = COMBAT_FIREDAMAGE, percent = 20},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 100},
	{type = COMBAT_DROWNDAMAGE, percent = 100},
	{type = COMBAT_ICEDAMAGE, percent = 20},
	{type = COMBAT_HOLYDAMAGE , percent = 20},
	{type = COMBAT_DEATHDAMAGE , percent = 20},
	{type = COMBAT_WATERDAMAGE, percent = 20},
	{type = COMBAT_ARCANEDAMAGE, percent = 20},
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
