local stairsKindernia = MoveEvent()

function stairsKindernia.onStepIn(creature, item, position, fromPosition)
    if not creature:isPlayer() then
        return true
    end
	if creature:getStorageValue(Storage.exploreKinderniaVillage) == 1 then
        creature:setStorageValue(Storage.exploreKinderniaVillage, 2)
        creature:setStorageValue(Storage.exploreChainQuestKindernia, 1)
        creature:getPosition():sendMagicEffect(227)
    else
        return true
    end
end

stairsKindernia:aid(19001)
stairsKindernia:register()


