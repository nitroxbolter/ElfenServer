local mType = Game.createMonsterType("Bloodfang Reaver")
local monster = {}
monster.description = "a Bloodfang Reaver"
monster.experience = 29000
monster.outfit = {
	lookType = 1385
}

monster.health = 28000
monster.maxHealth = 28000
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
	{id = "black pearl", chance = 8784, maxCount = 5},
	{id = "warrior helmet", chance = 8784},
	{id = "mino shield", chance = 8514},
	{id = "silver brooch", chance = 7838},
	{id = "knife", chance = 7703},
	{id = "demonic essence", chance = 20000, maxCount = 2},
	{id = "dreaded cleaver", chance = 1800},
	{id = "chaos mace", chance = 4000},
	{id = "shield of corruption", chance = 400},
	{id = "draken boots", chance = 2000},
	{id = "Zaoan armor", chance = 1800},
	{id = "Zaoan helmet", chance = 2200},
	{id = "Zaoan legs", chance = 3000},
	{id = "Zaoan sword", chance = 2000},
	{id = "ham", chance = 35000, maxCount = 3},
	{id = "monstrosity", chance = 7000}


}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, type = COMBAT_PHYSICALDAMAGE, minDamage = -950, maxDamage = -1400},
	{name ="combat", interval = 2000, chance = 25, type = COMBAT_PHYSICALDAMAGE, minDamage = -700, maxDamage = -1800, range = 7, shootEffect = 25, effect = 264, target = true},
	{name ="combat", interval = 3000, chance = 20, type = COMBAT_ENERGYDAMAGE, minDamage = -650, maxDamage = -1600, range = 7, radius = 4, shootEffect = 36, effect = 289, target = true},

}

monster.defenses = {
	defense = 90,
	armor = 90,
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = 0},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 0},
	{type = COMBAT_HOLYDAMAGE , percent = 0},
	{type = COMBAT_DEATHDAMAGE , percent = 0},
	{type = COMBAT_WATERDAMAGE, percent = 0},
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
