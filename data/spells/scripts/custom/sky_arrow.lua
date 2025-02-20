local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
combat:setParameter(COMBAT_PARAM_EFFECT, 215)
combat:setParameter(COMBAT_PARAM_BLOCKARMOR, true)
combat:setParameter(COMBAT_PARAM_BLOCKSHIELD, true)
combat:setArea(createCombatArea(AREA_CIRCLE2X2))

function onGetFormulaValues(cid, skill, attack)
    local level = cid:getLevel()
    local baseDamage = level * 0.8  -- Exemplo de cálculo simples de dano com base no nível
    local skillDamage = skill * 1.0  -- Modificador para a habilidade de ataque

    local totalDamage = baseDamage + skillDamage  -- Dano total somando nível e habilidade
    return -totalDamage, -totalDamage
end

setCombatCallback(combat, CALLBACK_PARAM_SKILLVALUE, "onGetFormulaValues")

function onCastSpell(cid, var)
    return combat:execute(cid, var)
end
function onCastSpell(creature, variant)
	playSound(creature, "arrow_1.ogg")
	return combat:execute(creature, variant)
end