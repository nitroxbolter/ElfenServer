local emberlordEntrance = MoveEvent()

local storage = {
    222441,
    222442,
    222443,
    222444,
    222445
}

function emberlordEntrance.onStepIn(creature, item, position, fromPosition)
    if not creature:isPlayer() then
        return false
    end

    if item:getActionId() == 42398 then
        local canTeleport = true
        local ashseer_dravok = creature:getStorageValue(222441)
        local tidebreaker_voryn = creature:getStorageValue(222442)
        local voidweaver_krythax = creature:getStorageValue(222443)
        local icebound_thryssan = creature:getStorageValue(222444)
        local hollowborn_zepharix = creature:getStorageValue(222445)

        for _, storageId in ipairs(storage) do
            if creature:getStorageValue(storageId) < 5 then
                canTeleport = false
                break
            end
        end

        if canTeleport then
            creature:teleportTo(Position(30939, 31253, 8))
            toPosition:sendMagicEffect(CONST_ME_TELEPORT)
        else
            creature:sendTextMessage(
                MESSAGE_INFO_DESCR,
                "You need to kill 5 times each boss from each isle.\nCurrent progress:\n" ..
                "Ashseer Dravok: " .. (ashseer_dravok > 0 and ashseer_dravok or 0) .. "/5\n" ..
                "Tidebreaker Voryn: " .. (tidebreaker_voryn > 0 and tidebreaker_voryn or 0) .. "/5\n" ..
                "Voidweaver Krythax: " .. (voidweaver_krythax > 0 and voidweaver_krythax or 0) .. "/5\n" ..
                "Icebound Thryssan: " .. (icebound_thryssan > 0 and icebound_thryssan or 0) .. "/5\n" ..
                "Hollowborn Zepharix: " .. (hollowborn_zepharix > 0 and hollowborn_zepharix or 0) .. "/5"
            )
            creature:teleportTo(fromPosition)
            position:sendMagicEffect(CONST_ME_POFF)
        end
    end
    return true
end

emberlordEntrance:aid(42398)
emberlordEntrance:register()
