local vocation = {
	VOCATION.ID.SORCERER,
	VOCATION.ID.DRUID,
	VOCATION.ID.PALADINO,
	VOCATION.ID.GUERREIRO,
	VOCATION.ID.MAGO,
	VOCATION.ID.ALQUIMISTA,
	VOCATION.ID.TEMPLARIO,
	VOCATION.ID.BARBARO,
}

area = {
	{0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0},
	{0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0},
	{0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0},
	{0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0},
	{0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0},
	{0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0},
	{1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
	{1, 1, 1, 1, 1, 1, 1, 3, 1, 1, 1, 1, 1, 1, 1},
	{1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
	{0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0},
	{0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0},
	{0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0},
	{0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0},
	{0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0},
	{0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0}
}

local config = {
    FirstStone = {
        object = {
            position = Position(31635, 33023, 12),
            itemId = 1498,
            spawnTimer = 4
        }
    },
    SecondStone = {
        object = {
            position = Position(31643, 33023, 12),
            itemId = 1498,
            spawnTimer = 4
        }
    },
	ThirstObject = {
        object = {
            position = Position(31639, 33019, 12),
            itemId = 1498,
            spawnTimer = 4
        }
    },
	FourthObject = {
        object = {
            position = Position(31639, 33027, 12),
            itemId = 1498,
            spawnTimer = 4
        }
    },
}

local function removeAndReAddObject(position, objectId, timer)
    position:sendMagicEffect(CONST_ME_POFF)
    Game.createItem(objectId, 1, position)
    if timer > 0 then
        addEvent(
            function()
                local tile = Tile(position)
                local item = tile:getItemById(objectId)
                if item then
                    item:remove()
                end
            end,
            timer
        )
    end
end

local createArea = createCombatArea(area)

local combat = Combat()
combat:setArea(createArea)

function onTargetTile(creature, pos)
    local creatureTable = {}
    local tile = Tile(pos)
    local creatures = tile:getCreatures()
    for _, creature in ipairs(creatures) do
        if isCreature(creature) then
            table.insert(creatureTable, creature)
        end
    end

    if #creatureTable > 0 then
        for _, targetCreature in ipairs(creatureTable) do
            if targetCreature ~= creature then
                local min = 3000
                local max = 5000
                local player = Player(targetCreature)

                if isPlayer(targetCreature) and table.contains(vocation, player:getVocation():getId()) then
                    doTargetCombatHealth(creature, targetCreature, COMBAT_ENERGYDAMAGE, -min, -max, 244)
                elseif isMonster(targetCreature) then
                    doTargetCombatHealth(creature, targetCreature, COMBAT_ENERGYDAMAGE, -min, -max, 244)
                end
            end
        end
    end
    pos:sendMagicEffect(309)
    return true
end



combat:setCallback(CALLBACK_PARAM_TARGETTILE, "onTargetTile")

local function delayedCastSpell(cid, var)
	local creature = Creature(cid)
	if not creature then
		return true
	end
	if creature:getHealth() >= 1 then
		creature:setMovementBlocked(false)
		return combat:execute(creature, positionToVariant(creature:getPosition()))
	end
	return true
end

local spell = Spell("instant")

function spell.onCastSpell(creature, var)
	local specs, spec = Game.getSpectators(Position(31639, 33023, 12), false, false, 21, 21, 21, 21)
	for i = 1, #specs do
		spec = specs[i]
		if spec:isPlayer() then
			spec:teleportTo(Position(31639, 33023, 12))
			removeAndReAddObject(config.FirstStone.object.position, config.FirstStone.object.itemId, config.FirstStone.object.spawnTimer * 1000)
			removeAndReAddObject(config.SecondStone.object.position, config.SecondStone.object.itemId, config.SecondStone.object.spawnTimer * 1000)
			removeAndReAddObject(config.ThirstObject.object.position, config.ThirstObject.object.itemId, config.ThirstObject.object.spawnTimer * 1000)
			removeAndReAddObject(config.FourthObject.object.position, config.FourthObject.object.itemId, config.FourthObject.object.spawnTimer * 1000)
    doSendMagicEffect(toPosition, 303)
		elseif spec:getName():lower() == 'astro king' then
			spec:teleportTo(Position(31639, 33023, 12))
			spec:setMovementBlocked(true)
		end
	end
	creature:say("Astro King seems to be enraging, run for your life!", TALKTYPE_MONSTER_YELL)
	addEvent(delayedCastSpell, 3000, creature:getId(), var)
	return true
end

spell:name("astro wave")
spell:words("###1130")
spell:isAggressive(true)
spell:blockWalls(true)
spell:needLearn(true)
spell:register()