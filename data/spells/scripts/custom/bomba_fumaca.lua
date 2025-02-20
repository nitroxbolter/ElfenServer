local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_POISONDAMAGE) -- Tipo de dano Veneno
combat:setParameter(COMBAT_PARAM_EFFECT, 188) -- Efeito de veneno no impacto
combat:setParameter(COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_POISON) -- Efeito do projétil (veneno)
combat:setParameter(COMBAT_PARAM_BLOCKARMOR, true) -- Ignora armadura parcialmente

-- Fórmula baseada no magic level
function onGetFormulaValues(player, skill, attack, factor)
    local magicLevel = player:getMagicLevel()
    local min = (player:getLevel() / 5) + (magicLevel * 1.5)
    local max = (player:getLevel() / 5) + (magicLevel * 2.0)
    return -min, -max
end

combat:setCallback(CALLBACK_PARAM_SKILLVALUE, "onGetFormulaValues")

-- Função para aplicar o envenenamento contínuo baseado no magic level
local function applyPoisonCondition(target, magicLevel)
    local poisonCondition = Condition(CONDITION_POISON)
    poisonCondition:setParameter(CONDITION_PARAM_DELAYED, true)
    for i = 1, 5 do
        local damage = (magicLevel * 2.0) / 5  -- Dano distribuído ao longo de 5 segundos
        poisonCondition:addDamage(1, 1000, -damage)
    end

    target:addCondition(poisonCondition)
end

-- Função para aplicar a paralisia no alvo
local function applyParalyzeCondition(target)
    local paralyzeCondition = Condition(CONDITION_PARALYZE)
    paralyzeCondition:setParameter(CONDITION_PARAM_TICKS, 2000) -- Duração de 2 segundos
    paralyzeCondition:setFormula(-0.9, 0, -0.9, 0) -- Reduz a velocidade

    target:addCondition(paralyzeCondition)
end

-- Função principal da magia
function onCastSpell(creature, variant)
    local target = Creature(variant:getNumber())
    if not target then
        creature:sendCancelMessage("Você precisa de um alvo válido para lançar esta magia.")
        return false
    end

    -- Posição do alvo
    local targetPosition = target:getPosition()

    -- Reproduz som de veneno (opcional)
    playSound(creature, "poison.ogg")

    -- Calcula o dano baseado no magic level
    local min = (creature:getLevel() / 5) + (creature:getMagicLevel() * 1.5)
    local max = (creature:getLevel() / 5) + (creature:getMagicLevel() * 2.0)
    local damage = math.random(math.floor(min) * 1000, math.floor(max) * 1000) / 1000

    -- Executa o dano com o projétil
    combat:execute(creature, variant)

    -- Aplica o efeito visual de veneno no alvo
    targetPosition:sendMagicEffect(188)

    -- Aplica o envenenamento contínuo e a paralisia no alvo
    applyPoisonCondition(target, creature:getMagicLevel())
    applyParalyzeCondition(target)

    return true
end
