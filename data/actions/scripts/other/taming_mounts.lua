local config = {
    [5907] = {name = "bear", id = 3},
    [13247] = {name = "boar", id = 10},
    [13291] = {name = "undead cavebear", id = 12},
    [13292] = {name = "inoperative tin lizzard", id = 8},
    [13293] = {name = "midnight panther", id = 5},
    [13294] = {name = "draptor", id = 6},
    [13295] = {name = "black sheep", id = 4},
    [13298] = {name = "terror bird", id = 2},
    [13305] = {name = "crustacea gigantica", id = 7},
    [13307] = {name = "wailing widow", id = 1},
    [13498] = {name = "sandstone scorpion", id = 21},
    [13508] = {name = "slug", id = 14},
    [13535] = {name = "dromedary", id = 20},
    [13536] = {name = "crystal wolf", id = 16},
    [13537] = {name = "donkey", id = 13},
    [13538] = {name = "panda", id = 19},
    [13539] = {name = "white deer", id = 18},
    [13939] = {name = "wild horse", id = 17},
    [15545] = {name = "manta ray", id = 28},
    [15546] = {name = "ladybug", id = 27},
    [18447] = {name = "ironblight", id = 29},
    [18448] = {name = "magma crawler", id = 30},
    [18449] = {name = "dragonling", id = 31},
    [18516] = {name = "modified gnarlhound", id = 32},
    [20138] = {name = "water buffalo", id = 35},
    [22608] = {name = "shock head", id = 42},
    [23557] = {name = "walker", id = 43},
    [23810] = {name = "noble lion", id = 40},
    [27188] = {name = "flying book", id = 108},
    [27268] = {name = "gryphon", id = 109},
    [27376] = {name = "white lion", id = 111},
    [27449] = {name = "foxmouse", id = 113},


}

function onUse(player, item, fromPosition, target, toPosition, isHotkey)
    if not player then
        return false
    end

    if type(target) == "userdata" and not target:isMonster() then
        player:sendTextMessage(MESSAGE_INFO_DESCR, "Invalid target.")
        player:getPosition():sendMagicEffect(CONST_ME_POFF)
        return true
    end

    local mount = config[item.itemid]
    if not mount then
        return false
    end

    if target:getName():lower() ~= mount.name:lower() then
        return true
    end

    if player:hasMount(mount.id) then
        player:sendTextMessage(MESSAGE_INFO_DESCR, "You already have this mount.")
        player:getPosition():sendMagicEffect(CONST_ME_POFF)
        return true
    end

    local chance = math.random(1, 100)
    if chance <= 20 then
        player:addMount(mount.id)
        player:sendTextMessage(MESSAGE_INFO_DESCR, "You have received the ".. target:getName() .." mount.")
        target:remove()
        playSoundPlayer(player, "rope.ogg")
        toPosition:sendMagicEffect(CONST_ME_MAGIC_BLUE)
        item:remove(1)
    else
        player:sendTextMessage(MESSAGE_INFO_DESCR, "Oh no, the chance to tame this mount has failed!")
        item:remove(1)
        target:remove()
    end
    return true
end
