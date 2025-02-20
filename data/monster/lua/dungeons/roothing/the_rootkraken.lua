local config = {
    transformChance = 90, 
    transformIntervals = {20000, 40000}, 
    transformOutfits = {1267, 1268}, 
    damageIntervals = {10000, 15000}, 
    damageAmountRange = {2000, 3000} 
}

local mType = Game.createMonsterType("The Rootkraken")
local monster = {}

monster.description = "The Rootkraken"
monster.experience = 180000
monster.outfit = {
	lookType = 1270,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}


monster.health = 685000
monster.maxHealth = 685000
monster.race = "undead"
monster.corpse = 26691
monster.speed = 610
monster.manaCost = 0

monster.changeTarget = {
	interval = 4000,
	chance = 10
}

monster.strategiesTarget = {
	nearest = 100,
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

monster.events = {
	"playerAttackSound"
}
monster.loot = {
	{id = "crystal coin", chance = 70540, maxCount = 25},
	{id = 28081, chance = 71920, maxCount = 8},
	{id = 28077, chance = 71920, maxCount = 8},
	{id = 28089, chance = 71920, maxCount = 8},
	{id = 28138, chance = 35000, maxCount = 5},
	{id = 28142, chance = 28000},
	{id = 28143, chance = 41000, maxCount = 2},
	{id = 28144, chance = 14000, maxCount = 2},
	{id = 28145, chance = 12000, maxCount = 2},
	{id = 28146, chance = 28000, maxCount = 8},
	{id = 28147, chance = 28000, maxCount = 4},
	{id = 28148, chance = 28000, maxCount = 1},
	{id = 28149, chance = 28000, maxCount = 6},
	{id = "crystalline axe", chance = 11100},
	{id = "crystalline sword", chance = 11000},
	{id = "mycological mace", chance = 10000},
	{id = "mycological bow", chance = 9000},
	{id = "shiny blade", chance = 2000},
	{id = "crystal crossbow", chance = 4000},
	{id = "mycological bow", chance = 3000},
	{id = "crystalline arrow", chance = 77777, maxCount = 30},
	{id = "spellbook of vigilance", chance = 3000},
	{id = "crystalline spikes", chance = 7000, maxCount = 3},
	{id = "major crystalline token", chance = 8000, maxCount = 5},
	{id = "minor crystalline token", chance = 10000, maxCount = 9},
	{id = 29619, chance = 5000}, --- Upgrade Rune v1
	{id = 29620, chance= 3000}, --- Upgrade Rune v2
	{id = 29621, chance = 2500}, --- Upgrade Rune v3
	{id = 29622, chance = 2000}, --- Upgrade Rune v4
	{id = 29623, chance = 3000} --- Upgrade and Rarity Remover


}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -1200, maxDamage = -3000},
	{name ="combat", interval = 2000, chance = 7, type = COMBAT_DEATHDAMAGE, minDamage = -1950, maxDamage = -3900, length = 8, spread = 3, effect = 309, target = false},
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_LIFEDRAIN, minDamage = -850, maxDamage = -2260, length = 10, spread = 3, effect = 207, target = false},
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_EARTHDAMAGE, minDamage = -940, maxDamage = -2800, radius = 5, effect = 235, target = false},
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_ENERGYDAMAGE, minDamage = -1420, maxDamage = -1950, length = 8, spread = 3, effect = 238, target = false},
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_FIREDAMAGE, minDamage = -840, maxDamage = -1800, radius = 5, effect = 226, target = true},
	{name ="combat", interval = 2000, chance = 13, type = COMBAT_ICEDAMAGE, minDamage = -900, maxDamage = -2000, length = 8, spread = 3, effect = 281, target = false},
	{name ="combat", interval = 2000, chance = 19, type = COMBAT_MANADRAIN, minDamage = -1300, maxDamage = -2300, range = 7, radius = 6, shootEffect = 86, effect = 292, target = true},
}

monster.defenses = {
	defense = 145,
	armor = 145
}

monster.elements = {
{type = COMBAT_PHYSICALDAMAGE, percent = 6},
{type = COMBAT_ENERGYDAMAGE, percent = 6},
{type = COMBAT_EARTHDAMAGE, percent = 6},
{type = COMBAT_FIREDAMAGE, percent = 6},
{type = COMBAT_LIFEDRAIN, percent = 6},
{type = COMBAT_MANADRAIN, percent = 6},
{type = COMBAT_DROWNDAMAGE, percent = 6},
{type = COMBAT_ICEDAMAGE, percent = 6},
{type = COMBAT_HOLYDAMAGE , percent = 6},
{type = COMBAT_DEATHDAMAGE , percent = 6}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

local earthCombat = Combat()
earthCombat:setParameter(COMBAT_PARAM_TYPE, COMBAT_EARTHDAMAGE)
earthCombat:setParameter(COMBAT_PARAM_EFFECT, 21)
earthCombat:setArea(createCombatArea(AreaImpair))

function onGetFormulaValues(player, level, magicLevel)
    return -2000, -3000
end

earthCombat:setCallback(CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues")

local energyCombat = Combat()
energyCombat:setParameter(COMBAT_PARAM_TYPE, COMBAT_ENERGYDAMAGE)
energyCombat:setParameter(COMBAT_PARAM_EFFECT, 5)
energyCombat:setArea(createCombatArea(AreaPair))

function onGetFormulaValues(player, level, magicLevel)
    return -2000, -3000
end

energyCombat:setCallback(CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues")

local intervalTicks = 0

mType.onThink = function(monster, interval)
    intervalTicks = intervalTicks + interval
    if intervalTicks < 1000 then
        return
    end

    local applyDamage = nil
    local damageInterval = config.damageIntervals[math.random(#config.damageIntervals)]
    if intervalTicks >= damageInterval then
        intervalTicks = intervalTicks - damageInterval
        applyDamage = true
    end

    local spectators = Game.getSpectators(monster:getPosition(), false, true, 15, 15, 15, 15)
    if #spectators == 0 then
        return
    end

    for _, spectator in pairs(spectators) do
        local outfit = spectator:getOutfit()
        if not table.contains(config.transformOutfits, outfit.lookType) then
            if math.random(1, 100) <= config.transformChance then
                local condition = Condition(CONDITION_OUTFIT)
                outfit.lookType = config.transformOutfits[math.random(#config.transformOutfits)]
                condition:setOutfit(outfit)
                condition:setTicks(math.random(unpack(config.transformIntervals)))
                spectator:addCondition(condition)
            end
        elseif applyDamage then
            if outfit.lookType == config.transformOutfits[1] then
                earthCombat:execute(monster, Variant(spectator:getPosition()))
            elseif outfit.lookType == config.transformOutfits[2] then
                energyCombat:execute(monster, Variant(spectator:getPosition()))
            end
        end
    end
end

mType:register(monster)
