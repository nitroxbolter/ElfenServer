local mType = Game.createMonsterType("Malvaroth")
local monster = {}
monster.description = "a Malvaroth"
monster.experience = 48000
monster.outfit = {
	lookType = 1366,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 3,
}

monster.health = 45000
monster.maxHealth = 45000
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
	{id = "Crystal Coin", chance = 40000, maxCount = 3},
	{id = "divine mana potion", chance = 11500, maxCount = 3},
	{id = "divine health potion", chance = 11500, maxCount = 3},
	{id = "divine spirit potion", chance = 11500, maxCount = 3},
	{id = "storm shell", chance = 1800},
	{id = "storm tail", chance = 1000},
	{id = "storm scale", chance = 4000},
	{id = "spiritthorn helmet", chance = 800},
	{id = "blade of corruption", chance = 1800},
	{id = "the justice seeker", chance = 2300},
	{id = "glooth blade", chance = 3000},
	{id = "rift lance", chance = 2800},
	{id = "executioner", chance = 2200},
	{id = "impaler", chance = 2000},
	{id = "abyss hammer", chance = 1800},
	{id = "ornate mace", chance = 1400},
	{id = "golden helmet", chance = 200},
	{id = "great shield", chance = 450},
	{id = "blessed shield", chance = 40},
	{id = "mastermind shield", chance = 3000},
	{id = "small topaz", chance = 20000, maxCount = 3},
	{id = "giant amethyst", chance = 2000},
	{id = "green crystal splinter", chance = 14000, maxCount = 2},
	{id = "mystical ribbon", chance = 2000},
	{id = "gorger antlers", chance = 9000, maxCount = 2},
	{id = "hellhunter eye", chance = 7000, maxCount = 2},
	{id = "mummified demon finger", chance = 11000},
	{id = "demonic core essence", chance = 6500},
	{id = "monstrosity", chance = 7000}

}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -900, maxDamage = -1800},
	{name ="combat", interval = 6000, chance = 12, type = COMBAT_EARTHDAMAGE, minDamage = -600, maxDamage = -1400, radius = 3, effect = 338, target = false},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_FIREDAMAGE, minDamage = -550, maxDamage = -1700, shootEffect = 79, target = false},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_WATERDAMAGE, minDamage = -600, maxDamage = -1925, range = 7, radius = 4, effect = 300, target = true},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_ARCANEDAMAGE, minDamage = -400, maxDamage = -1400, radius = 3, effect = 314, target = false},

}

monster.defenses = {
	defense = 130,
	armor = 130,
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 22},
	{type = COMBAT_ENERGYDAMAGE, percent = -12},
	{type = COMBAT_EARTHDAMAGE, percent = 8},
	{type = COMBAT_FIREDAMAGE, percent = 0},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 100},
	{type = COMBAT_DROWNDAMAGE, percent = 100},
	{type = COMBAT_ICEDAMAGE, percent = -9},
	{type = COMBAT_HOLYDAMAGE , percent = 0},
	{type = COMBAT_DEATHDAMAGE , percent = -11},
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
