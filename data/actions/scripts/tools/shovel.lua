local config = {
    swampId = {20230, 18589, 18584, 18141},
    itemGain = {{itemId = 2818, quantGain = 1}, 
                {itemId = 2145, quantGain = 3},
                {itemId = 20138, quantGain = 1}
                }
}

local exhausth = 3600 




local holes = {468, 481, 483, 7932, 23712}
local pools = {2016, 2017, 2018, 2019, 2020, 2021, 2025, 2026, 2027, 2028, 2029, 2030}
function onUse(cid, item, fromPosition, itemEx, toPosition)
    if(isInArray(config.swampId, itemEx.itemid)) then
        if (getPlayerStorageValue(cid, 32901) <= os.time()) then
        if math.random(0,500) > 255 then
            local posGain = math.random(1, #config.itemGain)
            local quantGain = math.random(1,config.itemGain[posGain].quantGain)
            doPlayerAddItem(cid, config.itemGain[posGain].itemId, quantGain)
            SendMagicEffect(toPosition, 8)
            doCreatureSay(cid,  "You dug up ".. quantGain .." ".. getItemName(config.itemGain[posGain].itemId) ..".", TALKTYPE_ORANGE_1)  
            PlayerSetStorageValue(cid, 32901, os.time()+exhausth)  
        end
    else
            PlayerSendCancel(cid, "You are exhausted, use again in 1 hour.")
        end
    else
        return shovelNormal(cid, item, fromPosition, itemEx, toPosition)
    end
   local targetId, targetActionId = target.itemid, target.actionid
	if isInArray(holes, targetId) then
		target:transform(targetId + 1)
		target:decay()

	elseif isInArray({231, 9059}, targetId) then
		local rand = math.random(100)
		if target.actionid == 100 and rand <= 20 then
			target:transform(489)
			target:decay()
		elseif rand == 1 then
			Game.createItem(2159, 1, toPosition)
		elseif rand > 95 then
			Game.createMonster("Rat", toPosition)
		end
		toPosition:sendMagicEffect(CONST_ME_POFF)

	-- Wrath of the emperor quest

	elseif targetId == 351 and targetActionId == 8024 then
		player:addItem(12297, 1)
		player:say("You dig out a handful of earth from this sacred place.", TALKTYPE_MONSTER_SAY)

	-- RookgaardTutorialIsland
	elseif targetId == 8579 and player:getStorageValue(Storage.RookgaardTutorialIsland.tutorialHintsStorage) < 20 then
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'You dug a hole! Walk onto it as long as it is open to jump down into the forest cave.')
		player:setStorageValue(Storage.RookgaardTutorialIsland.tutorialHintsStorage, 19)
		Position(32070, 32266, 7):sendMagicEffect(CONST_ME_TUTORIALARROW)
		Position(32070, 32266, 7):sendMagicEffect(CONST_ME_TUTORIALSQUARE)
		target:transform(469)
		addEvent(revertItem, 30 * 1000, toPosition, 469, 8579)

	-- Gravedigger Quest
	elseif targetActionId == 4654 and player:getStorageValue(Storage.GravediggerOfDrefia.Mission49) == 1 and player:getStorageValue(Storage.GravediggerOfDrefia.Mission50) < 1 then
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'You found a piece of the scroll. You pocket it quickly.')
		player:getPosition():sendMagicEffect(CONST_ME_POFF)
		player:addItem(21250, 1)
		player:setStorageValue(Storage.GravediggerOfDrefia.Mission50, 1)

	elseif targetActionId == 4668 and player:getStorageValue(Storage.GravediggerOfDrefia.Mission69) == 1 and player:getStorageValue(Storage.GravediggerOfDrefia.Mission70) < 1 then
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'A torn scroll piece emerges. Probably gnawed off by rats.')
		player:getPosition():sendMagicEffect(CONST_ME_POFF)
		player:addItem(21250, 1)
		player:setStorageValue(Storage.GravediggerOfDrefia.Mission70, 1)

	-- ???
	elseif targetActionId == 50118 then
		local wagonItem = Tile(Position(32717, 31492, 11)):getItemById(7131)
		if wagonItem then
			Game.createItem(8749, 1, wagonItem:getPosition())
			toPosition:sendMagicEffect(CONST_ME_POFF)
		end

	elseif targetId == 8749 then
		local coalItem = Tile(Position(32699, 31492, 11)):getItemById(8749)
		if coalItem then
			coalItem:remove()
			toPosition:sendMagicEffect(CONST_ME_POFF)

			local crucibleItem = Tile(Position(32699, 31494, 11)):getItemById(8642)
			if crucibleItem then
				crucibleItem:setActionId(50119)
			end
		end

	elseif isInArray({9632, 20230, 17672, 18586, 18580}, targetId) then
		if player:getStorageValue(Storage.SwampDiggingTimeout) >= os.time() then
			toPosition:sendMagicEffect(CONST_ME_POFF)
			return false
		end

		local config = { {from = 1, to = 39, itemId = 2817}, {from = 40, to = 79, itemId = 2145}, {from = 80, to = 100, itemId = 20138} }
		local chance = math.random(100)

		for i = 1, #config do
			local randItem = config[i]
			if chance >= randItem.from and chance <= randItem.to then
				player:addItem(randItem.itemId, 1)
				player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'You dug up a ' .. ItemType(randItem.itemId):getName() .. '.')
				player:setStorageValue(Storage.SwampDiggingTimeout, os.time() + 604800)
				toPosition:sendMagicEffect(CONST_ME_GREEN_RINGS)
				break
			end
		end

	elseif targetId == 103 and targetActionId == 4205 then
		if player:getStorageValue(Storage.TibiaTales.IntoTheBonePit) ~= 1 then
			return false
		end

		local remains = Game.createItem(2248, 1, toPosition)
		if remains then
			remains:setActionId(4206)
		end
		toPosition:sendMagicEffect(CONST_ME_HITAREA)
		addEvent(removeRemains, 60000, toPosition)

	elseif targetId == 22674 then
		if not player:removeItem(5091, 1) then
			return false
		end

		target:transform(5731)
		target:decay()
		toPosition:sendMagicEffect(CONST_ME_POFF)
	else
		return false
	end

	return true
end



function shovelNormal(cid, item, fromPosition, itemEx, toPosition)
local target = itemEx
    local player = Player(cid)
    local iEx = Item(itemEx.uid)
    if isInArray(holes, itemEx.itemid) then
        iEx:transform(itemEx.itemid + 1)
        iEx:decay()
 elseif isInArray(pools, target.itemid) then
        local hole = 0
        for i = 1, #holes do
            local tile = Tile(target:getPosition()):getItemById(holes[i])
            if tile then
                hole = tile
            end
        end
        if hole ~= 0 then
            hole:transform(hole:getId() + 1)
            hole:decay()
        else
            return false
        end   
    elseif itemEx.itemid == 231 or itemEx.itemid == 9059 then
        local rand = math.random(1, 100)
        if(itemEx.actionid  == 100 and rand <= 20) then
        iEx:transform(489)
        iEx:decay()
        elseif rand == 1 then
            Game.createItem(2159, 1, toPosition)
        elseif rand > 95 then
            Game.createMonster("Rat", toPosition)
        end
        toPosition:sendMagicEffect(CONST_ME_POFF)
    elseif itemEx.actionid == 4654 and player:getStorageValue(9925) == 1 and player:getStorageValue(9926) < 1 then
        player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'You found a piece of the scroll. You pocket it quickly.')
        player:getPosition():sendMagicEffect(CONST_ME_POFF)
        player:addItem(21250, 1)
        player:setStorageValue(9926, 1)
    elseif itemEx.actionid == 4668 and player:getStorageValue(12902) == 1 and player:getStorageValue(12903) < 1 then
        player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'A torn scroll piece emerges. Probably gnawed off by rats.')
        player:getPosition():sendMagicEffect(CONST_ME_POFF)
        player:addItem(21250, 1)
        player:setStorageValue(12903, 1)
    else
        return onUseShovel(player, item, fromPosition, target, toPosition, isHotkey)
    end
    return true
end