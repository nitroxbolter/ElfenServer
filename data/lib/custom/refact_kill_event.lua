function dailyMonsterIsCreature(creature, target)
	if not creature or not target then
        return true
    end
end

function checkIfTargetIsBoostedCreature(creature, target)
local targetMonster = Monster(target)
local targetName = targetMonster and targetMonster:getName():lower() or nil
	if not targetMonster or targetMonster:isPlayer() or targetMonster:getMaster() then
		return true
	end
end