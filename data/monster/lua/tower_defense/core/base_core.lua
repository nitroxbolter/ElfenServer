local mType = Game.createMonsterType("Base Core")
local monster = {}
monster.description = "Base Core"
monster.experience = 0
monster.outfit = {
	lookType = 1271,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 5000
monster.maxHealth = monster.health
monster.race = "energy"
monster.corpse = 0
monster.speed = 0
monster.maxSummons = 0

monster.changeTarget = {
	interval = 1*1000,
	chance = 0
}


monster.events = {
	"baseCoreOnHealth"
}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = false,
	convinceable = false,
	illusionable = false,
	canPushItems = true,
	canPushCreatures = true,
	targetDistance = 1,
	staticAttackChance = 100,
}

monster.summons = {
}

monster.voices = {
}

monster.loot = {
}

monster.attacks = {
}

monster.defenses = {
	defense = 50,
	armor = 50,
}

monster.elements = {
}

monster.immunities = {
}


local combatHandler = CreatureEvent("baseCoreOnHealth")

function combatHandler.onHealthChange(creature, attacker, primaryDamage, primaryType, secondaryDamage, secondaryType, origin)
	if attacker:isPlayer() and creature:getName() == "Base Core" then
        return true  
    end
	return primaryDamage, primaryType, secondaryDamage, secondaryType
end

combatHandler:register()


mType:register(monster)
