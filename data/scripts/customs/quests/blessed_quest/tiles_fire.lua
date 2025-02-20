local config = {
    [34140] = {damage = 800},
    [34141] = {damage = 1500},
    [34142] = {damage = 3000},
    [34143] = {damage = 6000},
}

local fires = MoveEvent()
function fires.onStepIn(creature, item, position, fromPosition)
    local player = creature:getPlayer()
    if not player then
        return true
    end

    local fire = config[item.actionid]
    if not fire then
        return true
    end
	if item:getActionId() == 34140 then
		doTargetCombatHealth(0, player, COMBAT_FIREDAMAGE, -300, -300, CONST_ME_HITBYFIRE)
	else
        local combatType = COMBAT_FIREDAMAGE
        if fire.damage > 300 then
            combatType = COMBAT_PHYSICALDAMAGE
        end
        doTargetCombatHealth(0, player, combatType, -fire.damage, -fire.damage, CONST_ME_FIREATTACK)
	end
    return true
end

fires:type("stepin")
for actionid, _ in pairs(config) do
    fires:aid(actionid)
end
fires:register()