local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_FIREDAMAGE) -- Tipo de dano Fogo
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_FIREAREA) -- Efeito de explosão de fogo no impacto
combat:setParameter(COMBAT_PARAM_DISTANCEEFFECT, 34) -- Efeito do projétil 34 (fogo)
combat:setParameter(COMBAT_PARAM_BLOCKARMOR, true) -- Ignora armadura parcialmente

-- Criação da área fora da função onCastSpell
local area = createCombatArea(AREA_CIRCLE2X2)
combat:setArea(area)

-- Fórmula baseada na habilidade de distância
function onGetFormulaValues(player, skill, attack, factor)
    local distanceSkill = player:getEffectiveSkillLevel(SKILL_DISTANCE)
    local min = (player:getLevel() / 5) + distanceSkill * 1.5
    local max = (player:getLevel() / 5) + distanceSkill + 8
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
    playSound(creature, "fire.ogg")

    -- Executa o dano com o projétil
    combat:execute(creature, variant)

    -- Executa o efeito de área no alvo
    doAreaCombat(creature, COMBAT_FIREDAMAGE, targetPosition, area, 0, 0, CONST_ME_FIREAREA)

    return true
end