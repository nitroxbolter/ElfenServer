local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
combat:setParameter(COMBAT_PARAM_BLOCKARMOR, 1)
combat:setParameter(COMBAT_PARAM_BLOCKSHIELD, 1)
combat:setParameter(ORIGIN_MELEE)


function onCastSpell(creature, variant)
    playSound(creature, "fist_attack.ogg")
    return combat:execute(creature, variant)
end
