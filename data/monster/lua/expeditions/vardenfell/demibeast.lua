local mType = Game.createMonsterType("Demibeast")
local monster = {}
monster.description = "a Demibeast"
monster.experience = 33000
monster.outfit = {
	lookType = 1378
}

monster.health = 34000
monster.maxHealth = 34000
monster.corpse = 26691
monster.speed = 190
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
	{id = "royal helmet", chance = 2540, maxCount = 1 },
	{id = "poison fin", chance = 8000},
	{id = "robust scale", chance = 8000, maxCount = 2},
	{id = "medusa shield", chance = 4000, maxCount = 1 },
	{id = "boots of haste", chance = 2000, maxCount = 1 },
	{id = "spellbook of warding", chance = 8180},
	{id = "wand of starstorm", chance = 3910},
	{id = "wand of cosmic energy", chance = 9730},
	{id = "green crystal shard", chance = 15450},
	{id = "blue crystal shard", chance = 15450},
	{id = "fur armor", chance = 31640},
	{id = "wood cape", chance = 22650},
	{id = "haunted blade", chance = 6370},
	{id = "platinum coin", chance = 15450, maxCount = 30},
	{id = "monstrosity", chance = 7000}

}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -700, maxDamage = -1600},
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_MANADRAIN, minDamage = -700, maxDamage = -1900, range = 3, effect = 208, target = false},
	{name ="combat", interval = 2000, chance = 25, type = COMBAT_LIFEDRAIN, minDamage = -600, maxDamage = -1750, length = 8, spread = 3, effect = 220, target = false},
	{name ="combat", interval = 2000, chance = 21, type = COMBAT_LIFEDRAIN, minDamage = -750, maxDamage = -1900, radius = 6, effect = 222, target = false},
	{name ="condition", type = CONDITION_FIRE, interval = 3000, chance = 20, minDamage = -500, maxDamage = -1500, range = 3, radius = 7, shootEffect = 84, effect = 226, target = true}

}

monster.defenses = {
	defense = 95,
	armor = 95,
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = -10},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = -3},
	{type = COMBAT_FIREDAMAGE, percent = 0},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 100},
	{type = COMBAT_DROWNDAMAGE, percent = 100},
	{type = COMBAT_ICEDAMAGE, percent = 0},
	{type = COMBAT_HOLYDAMAGE , percent = 0},
	{type = COMBAT_DEATHDAMAGE , percent = -4},
	{type = COMBAT_WATERDAMAGE, percent = -10},
	{type = COMBAT_ARCANEDAMAGE, percent = 0},
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
