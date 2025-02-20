local stairsKindernia = MoveEvent()

function stairsKindernia.onStepIn(creature, item, position, fromPosition)
    if not creature:isPlayer() then
        return true
    end
	if creature:getStorageValue(Storage.exploreChainQuestKindernia) == 1 then
        creature:setStorageValue(Storage.exploreChainQuestKindernia, 2)
        creature:getPosition():sendMagicEffect(227)
    else
        return true
    end
end

stairsKindernia:aid(19002)
stairsKindernia:register()


