local inlayStarsTable = {
    [26708] = {transformId = 27113, message = "Skeletal Helmet"},
    [26709] = {transformId = 27114, message = "Skeletal Armor"},
    [26710] = {transformId = 27115, message = "Skeletal Legs"},
    [26711] = {transformId = 27116, message = "Skeletal Boots"},
    [26761] = {transformId = 27117, message = "Netherwave Helmet"},
    [26762] = {transformId = 27118, message = "Netherwave Armor"},
    [26763] = {transformId = 27119, message = "Netherwave Legs"},
    [26764] = {transformId = 27120, message = "Netherwave Boots"},
    [26766] = {transformId = 27121, message = "Varruth Helmet"},
    [26767] = {transformId = 27122, message = "Varruth Armor"},
    [26768] = {transformId = 27123, message = "Varruth Legs"},
    [26769] = {transformId = 27124, message = "Varruth Boots"},
    [26770] = {transformId = 27125, message = "Seetheras Helmet"},
    [26771] = {transformId = 27126, message = "Seetheras Armor"},
    [26772] = {transformId = 27127, message = "Seetheras Legs"},
    [26773] = {transformId = 27128, message = "Seetheras Boots"},
    [26774] = {transformId = 27129, message = "Felsinger Helmet"},
    [26775] = {transformId = 27130, message = "Felsinger Armor"},
    [26776] = {transformId = 27131, message = "Felsinger Legs"},
    [26777] = {transformId = 27132, message = "Felsinger Boots"},
}

local inlayStars = Action()

function inlayStars.onUse(player, item, fromPosition, target, toPosition, isHotkey)
    if not target:isItem() then
        player:sendCancelMessage('You must select an item.')
        player:getPosition():sendMagicEffect(CONST_ME_POFF)
        return true
    end

    local targetId = target.itemid
    local transformationData = inlayStarsTable[targetId]

    if transformationData then
        target:transform(transformationData.transformId)
        player:sendTextMessage(MESSAGE_INFO_DESCR, "Successfully inlaid three empty stars to " .. transformationData.message)
        player:getPosition():sendMagicEffect(211)
        item:remove(1)
        playSound(player, "inlay_star.ogg")
    else
        player:sendCancelMessage('Inlay not defined for this item.')
    end

    return true
end

inlayStars:id(27133)
inlayStars:register()
