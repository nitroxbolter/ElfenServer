local mType = Game.createMonsterType("Thorin Ironspell")
local monster = {}

monster.description = "a Thorin Ironspell"
monster.experience = 0
monster.outfit = {
	lookType = 1278,
	lookHead = 76,
	lookBody = 57,
	lookLegs = 76,
	lookFeet = 95,
	lookAddons = 2,
	lookMount = 0
}


monster.health = 9999
monster.maxHealth = 9999
monster.race = "blood"
monster.corpse = 0
monster.speed = 0

monster.changeTarget = {
	interval = 4000,
	chance = 10
}

monster.strategiesTarget = {
	nearest = 100,
}


monster.flags = {
	summonable = false,
	attackable = false,
	hostile = false,
	convinceable = false,
	pushable = false,
	rewardBoss = false,
	illusionable = false,
	canPushItems = true,
	canPushCreatures = true,
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

monster.events = {
	"onDeathUnitSpawn"
}
monster.loot = {
	
}

monster.attacks = {
	
}

monster.defenses = {
	defense = 50,
	armor = 82
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 33},
	{type = COMBAT_ENERGYDAMAGE, percent = 33},
	{type = COMBAT_EARTHDAMAGE, percent = 33},
	{type = COMBAT_FIREDAMAGE, percent = 33},
	{type = COMBAT_LIFEDRAIN, percent = 33},
	{type = COMBAT_MANADRAIN, percent = 33},
	{type = COMBAT_DROWNDAMAGE, percent = 33},
	{type = COMBAT_ICEDAMAGE, percent = 33},
	{type = COMBAT_HOLYDAMAGE , percent = 33},
	{type = COMBAT_DEATHDAMAGE , percent = 33}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

local monsterTable = {"Zephyrius", "Nycthariel", "Infernalax", "Tenebrosus", "Empyrion"}

local combat = Combat()
combat:setParameter(COMBAT_PARAM_EFFECT, 288)
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_ENERGYDAMAGE)
combat:setParameter(COMBAT_PARAM_DISTANCEEFFECT, 86)
combat:setArea(createCombatArea(AREA_CIRCLE1X1))

local cooldowns = {}

local function getCooldown(monsterId)
    if not cooldowns[monsterId] then
        cooldowns[monsterId] = 0
    end
    return cooldowns[monsterId]
end

local function setCooldown(monsterId, cooldown)
    cooldowns[monsterId] = cooldown
end

local function canAttack(monsterId)
    local currentTime = os.time() * 1000 
    local lastAttackTime = getCooldown(monsterId)
    local attackCooldown = 1000 
    return currentTime - lastAttackTime >= attackCooldown
end

local function performAttack(monster, targetCreature)
    local damage = math.random(290, 675)
    combat:setFormula(COMBAT_FORMULA_DAMAGE, -damage, 0, -damage, 0)
    local var = Variant(targetCreature:getPosition())
    combat:execute(monster, var)
end

local function isWithinRadius(centerPos, targetPos, radius)
    local dx = centerPos.x - targetPos.x
    local dy = centerPos.y - targetPos.y
    return (dx * dx + dy * dy) <= (radius * radius)
end

local function findTargetAndAttack(monster)
    local monsterPos = monster:getPosition()
    local radius = 3

    for x = -radius, radius do
        for y = -radius, radius do
            local pos = {x = monsterPos.x + x, y = monsterPos.y + y, z = monsterPos.z}
            if isWithinRadius(monsterPos, pos, radius) then
                local tile = Tile(pos)
                if tile then
                    local creature = tile:getTopCreature()
                    if creature and creature:isMonster() and table.contains(monsterTable, creature:getName()) then
                        local creatureId = creature:getId()
                        if canAttack(monster:getId()) then
                            performAttack(monster, creature)
                            setCooldown(monster:getId(), os.time() * 1000)
                            return true 
                        end
                    end
                end
            end
        end
    end
    return false
end


mType.onThink = function(monster, interval)
    findTargetAndAttack(monster)
    return true
end

mType:register(monster)
