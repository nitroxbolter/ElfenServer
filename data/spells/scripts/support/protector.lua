local combat = Combat()
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_NONE) -- Nenhum efeito imediato

-- Aumenta o skill de escudo
local skill = Condition(CONDITION_ATTRIBUTES)
skill:setParameter(CONDITION_PARAM_TICKS, 10000) -- Duração de 10 segundos
skill:setParameter(CONDITION_PARAM_SKILL_SHIELDPERCENT, 220)
skill:setParameter(CONDITION_PARAM_BUFF_SPELL, true)
combat:addCondition(skill)

-- Condição de cooldown
local cooldownAttackGroup = Condition(CONDITION_SPELLGROUPCOOLDOWN)
cooldownAttackGroup:setParameter(CONDITION_PARAM_SUBID, 1)
cooldownAttackGroup:setParameter(CONDITION_PARAM_TICKS, 2000)
combat:addCondition(cooldownAttackGroup)

-- Condição de pacificação
local pacified = Condition(CONDITION_PACIFIED)
pacified:setParameter(CONDITION_PARAM_TICKS, 10000)
combat:addCondition(pacified)

-- Função para aplicar o efeito visual repetidamente
local function applyEffect(creatureId, ticksLeft)
    local creature = Creature(creatureId)
    if creature and ticksLeft > 0 then
        local position = creature:getPosition() -- Atualiza a posição do personagem a cada ciclo
        position:sendMagicEffect(296) -- Aplica o efeito visual na posição exata do personagem
        addEvent(applyEffect, 1000, creatureId, ticksLeft - 1000) -- Reaplica o efeito após 1 segundo
    end
end

function onCastSpell(creature, variant)
    playSound(creature, "utito.ogg")

    -- Inicia o efeito visual por 10 segundos
    applyEffect(creature:getId(), 10000) -- 10 segundos de efeito visual

    return combat:execute(creature, variant)
end
