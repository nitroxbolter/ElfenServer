local playerAttack = CreatureEvent("playerAttackSound")


function playerAttack.onHealthChange(creature, attacker, primaryDamage, primaryType, secondaryDamage, secondaryType, origin)
    if attacker and attacker:isPlayer() then
        local player = attacker

        if origin == ORIGIN_MELEE or origin == ORIGIN_RANGED or origin == 5 then
            local weapon = player:getSlotItem(CONST_SLOT_LEFT)
            if weapon then
                local weaponType = weapon:getType():getWeaponType()

                if weaponType == WEAPON_AXE or weaponType == WEAPON_SWORD or weaponType == WEAPON_CLUB then
                    playSound(player, "weapon_attack.ogg")
            
                elseif weaponType == WEAPON_DISTANCE then
                    playSound(player, "distance_attack.ogg")
                elseif weaponType == WEAPON_NONE or weaponType == WEAPON_SHIELD then
                    playSound(player, "fist_attack.ogg")
                else
                    playSound(player, "wand_attack.ogg")
                end
            else
                playSound(player, "fist_attack.ogg")
            end
        end
    end

    return primaryDamage, primaryType, secondaryDamage, secondaryType
end

playerAttack:register()