local config = {
    [7777] = {shaderId = 1, effect = CONST_ME_FIREWORK_RED, storage = 30309}, 
}

local addShaderSystem = Action()

function addShaderSystem.onUse(player, item, fromPosition, target, toPosition, isHotkey)
    local shader = config[item.itemid]
    if not shader then
        return true
    end
    if player:getStorageValue(shader.storage) == 1 then
        player:sendTextMessage(MESSAGE_INFO_DESCR, 'You alredy received this shader!')
        return true
    end
    player:addShader(shader.shaderId)
    player:setStorageValue(shader.storage, 1)
    player:getPosition():sendMagicEffect(shader.effect)
    player:sendTextMessage(MESSAGE_INFO_DESCR, 'You received new shader!')
    item:remove(1)
    return true
end

for v, _ in pairs(config) do
    addShaderSystem:id(v)
end
addShaderSystem:register()