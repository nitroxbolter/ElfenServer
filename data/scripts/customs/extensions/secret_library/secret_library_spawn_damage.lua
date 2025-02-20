local effects = {
	{fromPosition = Position(31270, 31815, 8), toPosition = Position(31270, 31818, 8), effect = CONST_ME_HOLYDAMAGE},
	{fromPosition = Position(31277, 31815, 8), toPosition = Position(31277, 31818, 8), effect = CONST_ME_HOLYDAMAGE},
	{fromPosition = Position(31284, 31815, 8), toPosition = Position(31284, 31818, 8), effect = CONST_ME_HOLYDAMAGE},
	{fromPosition = Position(31288, 31821, 8), toPosition = Position(31290, 31821, 8), effect = CONST_ME_HOLYDAMAGE},
	{fromPosition = Position(31284, 31824, 8), toPosition = Position(31284, 31826, 8), effect = CONST_ME_HOLYDAMAGE},
	{fromPosition = Position(31277, 31824, 8), toPosition = Position(31277, 31826, 8), effect = CONST_ME_HOLYDAMAGE},
	{fromPosition = Position(31270, 31824, 8), toPosition = Position(31270, 31826, 8), effect = CONST_ME_HOLYDAMAGE},
	{fromPosition = Position(31266, 31828, 8), toPosition = Position(31268, 31828, 8), effect = CONST_ME_HOLYDAMAGE},
	{fromPosition = Position(31266, 31833, 8), toPosition = Position(31268, 31833, 8), effect = CONST_ME_HOLYDAMAGE},
	{fromPosition = Position(31266, 31838, 8), toPosition = Position(31268, 31838, 8), effect = CONST_ME_HOLYDAMAGE},
	{fromPosition = Position(31272, 31840, 8), toPosition = Position(31272, 31842, 8), effect = CONST_ME_HOLYDAMAGE},
	{fromPosition = Position(31279, 31840, 8), toPosition = Position(31279, 31842, 8), effect = CONST_ME_FIREAREA},
	{fromPosition = Position(31286, 31840, 8), toPosition = Position(31286, 31842, 8), effect = CONST_ME_FIREAREA},
	{fromPosition = Position(31291, 31889, 8), toPosition = Position(31291, 31891, 8), effect = CONST_ME_FIREAREA},
	{fromPosition = Position(31285, 31889, 8), toPosition = Position(31285, 31891, 8), effect = CONST_ME_FIREAREA},
	{fromPosition = Position(31279, 31889, 8), toPosition = Position(31279, 31891, 8), effect = CONST_ME_FIREAREA},
	{fromPosition = Position(31273, 31889, 8), toPosition = Position(31273, 31891, 8), effect = CONST_ME_FIREAREA},
	{fromPosition = Position(31267, 31889, 8), toPosition = Position(31267, 31891, 8), effect = CONST_ME_FIREAREA},
	{fromPosition = Position(31261, 31889, 8), toPosition = Position(31261, 31891, 8), effect = CONST_ME_FIREAREA},
	{fromPosition = Position(31255, 31889, 8), toPosition = Position(31255, 31891, 8), effect = CONST_ME_FIREAREA},
	{fromPosition = Position(31321, 31889, 8), toPosition = Position(31321, 31890, 8), effect = CONST_ME_FIREAREA},
	{fromPosition = Position(31327, 31889, 8), toPosition = Position(31327, 31890, 8), effect = CONST_ME_FIREAREA},



	
	{fromPosition = Position(31473, 31906, 9), toPosition = Position(31473, 31930, 9), effect = 184},
	{fromPosition = Position(31479, 31906, 9), toPosition = Position(31479, 31930, 9), effect = 186},
	{fromPosition = Position(31464, 31910, 9), toPosition = Position(31488, 31910, 9), effect = 196},
	{fromPosition = Position(31464, 31913, 9), toPosition = Position(31488, 31913, 9), effect = 198},
	{fromPosition = Position(31464, 31917, 9), toPosition = Position(31488, 31917, 9), effect = 199},
	{fromPosition = Position(31464, 31921, 9), toPosition = Position(31488, 31921, 9), effect = 200},
	{fromPosition = Position(31464, 31925, 9), toPosition = Position(31488, 31925, 9), effect = 208},


	---- Falcon Bastion ----
	{fromPosition = Position(33378, 31367, 5), toPosition = Position(33380, 31367, 5), effect = 7},
	{fromPosition = Position(33378, 31359, 5), toPosition = Position(33380, 31359, 5), effect = 7},

	{fromPosition = Position(33373, 31376, 4), toPosition = Position(33373, 31377, 4), effect = 7},
	{fromPosition = Position(33375, 31376, 4), toPosition = Position(33375, 31377, 4), effect = 7},
	{fromPosition = Position(33382, 31362, 4), toPosition = Position(33382, 31373, 4), effect = 7},
	{fromPosition = Position(33384, 31362, 4), toPosition = Position(33384, 31368, 4), effect = 7},
	{fromPosition = Position(33372, 31355, 4), toPosition = Position(33376, 31355, 4), effect = 7},
	{fromPosition = Position(33372, 31357, 4), toPosition = Position(33376, 31357, 4), effect = 7},
	{fromPosition = Position(33378, 31364, 3), toPosition = Position(33379, 31364, 3), effect = 7},
	{fromPosition = Position(33378, 31361, 3), toPosition = Position(33379, 31361, 3), effect = 7},
	{fromPosition = Position(33378, 31355, 3), toPosition = Position(33379, 31355, 3), effect = 7},
	{fromPosition = Position(33378, 31353, 3), toPosition = Position(33379, 31353, 3), effect = 7},
}

local spawnDamage = GlobalEvent("spawn damage")
function spawnDamage.onThink(interval)
	local jolf
	for i = 1, #effects do
		local settings = effects[i]
		fromPosition = settings.fromPosition
		toPosition = settings.toPosition
		local spectators = Game.getSpectators(settings.fromPosition, false, true, 7, 7, 5, 5)
		if #spectators > 0 then
			if settings.effect then
				for y = fromPosition.y, toPosition.y do
					local newPosition = Position(fromPosition.x, y, fromPosition.z)
					newPosition:sendMagicEffect(settings.effect)

					jolf = Tile(newPosition):getTopCreature()
					if jolf and jolf:isPlayer() then
						doTargetCombatHealth(0, jolf, COMBAT_PHYSICALDAMAGE, -500, -1000, settings.effect)
					end
				end
				for x = fromPosition.x, toPosition.x do
					local newPosition2 = Position(x, fromPosition.y, fromPosition.z)
					newPosition2:sendMagicEffect(settings.effect)
					jolf = Tile(newPosition2):getTopCreature()
					if jolf and jolf:isPlayer() then
						doTargetCombatHealth(0, jolf, COMBAT_PHYSICALDAMAGE, -10, -500, settings.effect)
					end
				end
			end
		end
	end
	return true
end

spawnDamage:interval(7000)
spawnDamage:register()
