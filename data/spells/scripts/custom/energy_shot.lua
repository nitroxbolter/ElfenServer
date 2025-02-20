local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_ENERGYHIT) -- Explosão elétrica no impacto
combat:setParameter(COMBAT_PARAM_DISTANCEEFFECT, 33) -- Efeito do projétil 33 (flecha energética)
combat:setParameter(COMBAT_PARAM_BLOCKARMOR, true) -- Ignora armadura parcialmente

-- Área de impacto correta
local area = createCombatArea({
    {0, 1, 0},
    {1, 3, 1},
    {0, 1, 0}
})
combat:setArea(area)

-- Fórmula baseada na habilidade de distância
function onGetFormulaValues(player, skill, attack, factor)
    local distanceSkill = player:getEffectiveSkillLevel(SKILL_DISTANCE)
    local min = (player:getLevel() / 5) + distanceSkill * 0.7
    local max = (player:getLevel() / 5) + distanceSkill + 5
    return -min, -max
end

combat:setCallback(CALLBACK_PARAM_SKILLVALUE, "onGetFormulaValues")

-- Função principal da magia
function onCastSpell(creature, variant)
    local target = Creature(variant:getNumber())
    if not target then
        creature:sendCancelMessage("Você precisa de um alvo válido para lançar esta magia.")
        return false
    end

    -- Posição do alvo
    local targetPosition = target:getPosition()

    -- Reproduz som de flecha (opcional)
    playSound(creature, "energy.ogg")

    -- Executa o dano na posição do alvo com a área definida
    return combat:execute(creature, variant)
end
