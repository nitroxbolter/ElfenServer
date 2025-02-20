-- Script maded by

--            _                   _             _     _      _    _          _        _                 _______   
--           / /\                _\ \          /\ \ /_/\    /\ \ /\ \    _ / /\   _  /\ \              / ___  /\  
--          / /  \              /\__ \        /  \ \\ \ \   \ \_\\ \ \  /_/ / /  /\_\\ \ \            / /\__\ \ \ 
--         / / /\ \            / /_ \_\      / /\ \ \\ \ \__/ / / \ \ \ \___\/  / / / \ \ \          / / /   \_\/ 
--        / / /\ \ \          / / /\/_/     / / /\ \_\\ \__ \/_/  / / /  \ \ \ / / /   \ \ \        / / /         
--       / / /  \ \ \        / / /         / /_/_ \/_/ \/_/\__/\  \ \ \   \_\ \\ \ \____\ \ \       \ \ \         
--      / / /___/ /\ \      / / /         / /____/\     _/\/__\ \  \ \ \  / / / \ \________\ \       \ \ \        
--     / / /_____/ /\ \    / / / ____    / /\____\/    / _/_/\ \ \  \ \ \/ / /   \/________/\ \       \ \ \       
--    / /_________/\ \ \  / /_/_/ ___/\ / / /______   / / /   \ \ \  \ \ \/ /              \ \ \  ____/ / /       
--   / / /_       __\ \_\/_______/\__\// / /_______\ / / /    /_/ /   \ \  /                \ \_\/_____/ /        
--   \_\___\     /____/_/\_______\/    \/__________/ \/_/     \_\/     \_\/                  \/_/\_____\/         


print(">> Deck System Loaded")

--- Do not touch if you dont know what you are doing ---

local cardsAllowed = {
    [27482] = {value = DeckSystem.Cards.CommonErasmo, text = "Enhanced Exori with Earth"},
    [27483] = {value = DeckSystem.Cards.RareErasmo, text = "Enhanced Exori with Ice"},
    [27484] = {value = DeckSystem.Cards.EpicErasmo, text = "Enhanced Exori with Death"},
    [27485] = {value = DeckSystem.Cards.MythicErasmo, text = "Enhanced Exori with Energy"},
    [27486] = {value = DeckSystem.Cards.CommonDemetar, text = "Enchanced Exevo Tera Hur with Fire"},
    [27487] = {value = DeckSystem.Cards.RareDemetar, text = "Enhanced Exevo Tera Hur with Holy"}, 
    [27488] = {value = DeckSystem.Cards.EpicDemetar, text = "Enhanced Exevo Tera Hur with Death"},
    [27489] = {value = DeckSystem.Cards.MythicDemetar, text = "Enhanced Exevo Tera Hur with Energy"},
    [27490] = {value = DeckSystem.Cards.CommonKaishuter, text = "Enhanced Exevo vis hur with Holy"},
    [27491] = {value = DeckSystem.Cards.RareKaishuter, text = "Enhanced Exevo vis hur with Ice"},
    [27492] = {value = DeckSystem.Cards.EpicKaishuter, text = "Enhanced Exevo vis hur with Drown"},
    [27493] = {value = DeckSystem.Cards.MythicKaishuter, text = "Enhanced Exevo vis hur with Death"},
    [27494] = {value = DeckSystem.Cards.CommonEnragedChuo, text = "Enhanced Exevo mas san with Fire"},
    [27495] = {value = DeckSystem.Cards.RareEnragedChuo, text = "Enhanced Exevo mas san with Ice"},
    [27496] = {value = DeckSystem.Cards.EpicEnragedChuo, text = "Enhanced Exevo mas san with Earth"},
    [27497] = {value = DeckSystem.Cards.MythicEnragedChuo, text = "Enhanced Exevo mas san with Death"},
    [27498] = {value = DeckSystem.Cards.CommonZaika, text = "Enhanced Avalanche Rune with Fire"},
    [27499] = {value = DeckSystem.Cards.RareZaika, text = "Enhanced Avalanche Rune with Earth"},
    [27500] = {value = DeckSystem.Cards.EpicZaika, text = "Enhanced Avalanche Rune with Energy"},
    [27501] = {value = DeckSystem.Cards.MythicZaika, text = "Enhanced Avalanche Rune with Death"},
    [27502] = {value = DeckSystem.Cards.CommonRictus, text = "Enhanced Exevo Gran Mas Frigo with Fire"},
    [27503] = {value = DeckSystem.Cards.RareRictus, text = "Enhanced Exevo Gran Mas Frigo with Holy"},
    [27504] = {value = DeckSystem.Cards.EpicRictus, text = "Enhanced Exevo Gran Mas Frigo with Death"},
    [27505] = {value = DeckSystem.Cards.MythicRictus, text = "Enhanced Exevo Gran Mas Frigo with Energy"},
    [27506] = {value = DeckSystem.Cards.CommonGlobus, text = "Enhanced Exevo Gran Mas Vis with Holy"},
    [27507] = {value = DeckSystem.Cards.RareGlobus, text = "Enhanced Exevo Gran Mas Vis with Earth"},
    [27508] = {value = DeckSystem.Cards.EpicGlobus, text = "Enhanced Exevo Gran Mas Vis with Death"},
    [27509] = {value = DeckSystem.Cards.MythicGlobus, text = "Enhanced Exevo Gran Mas Vis with Ice"},
    [27510] = {value = DeckSystem.Cards.CommonHidaka, text = "Enhanced Exori Mas with Fire"},
    [27511] = {value = DeckSystem.Cards.RareHidaka, text = "Enhanced Exori Mas with Earth"},
    [27512] = {value = DeckSystem.Cards.EpicHidaka, text = "Enhanced Exori Mas with Ice"},
    [27513] = {value = DeckSystem.Cards.MythicHidaka, text = "Enhanced Exori Mas with Death"},
    [27514] = {value = DeckSystem.Cards.CommonBrelshaza, text = "Enhanced, Minor Utito Tempo bonus"},
    [27515] = {value = DeckSystem.Cards.RareBrelshaza, text = "Enhanced, Major Utito Tempo bonus"},
    [27516] = {value = DeckSystem.Cards.EpicBrelshaza, text = "Enhanced, Intense Utito Tempo bonus"},
    [27517] = {value = DeckSystem.Cards.MythicBrelshaza, text = "Enhanced, Powerful Utito Tempo bonus"},
    [27518] = {value = DeckSystem.Cards.CommonVairgrys, text = "Enhanced Exevo Gran Flam hur with Ice"},
    [27519] = {value = DeckSystem.Cards.RareVairgrys, text = "Enhanced Exevo Gran Flam hur with Holy"},
    [27520] = {value = DeckSystem.Cards.EpicVairgrys, text = "Enhanced Exevo Gran Flam hur with Death"},
    [27521] = {value = DeckSystem.Cards.MythicVairgrys, text = "Enhanced Exevo Gran Flam hur with Energy"},
    [27522] = {value = DeckSystem.Cards.CommonEnviska, text = "Enhanced Exevo Gran Frigo Hur with Fire"},
    [27523] = {value = DeckSystem.Cards.RareEnviska, text = "Enhanced Exevo Gran Frigo Hur with Holy"},
    [27524] = {value = DeckSystem.Cards.EpicEnviska, text = "Enhanced Exevo Gran Frigo Hur with Death"},
    [27525] = {value = DeckSystem.Cards.MythicEnviska, text = "Enhanced Exevo Gran Frigo Hur with Energy"},
    [27526] = {value = DeckSystem.Cards.CommonHarzal, text = "Enhanced Exura Gran with minor bonus hp"},
    [27527] = {value = DeckSystem.Cards.RareHarzal, text = "Enhanced Exura Gran with major bonus hp"},
    [27528] = {value = DeckSystem.Cards.EpicHarzal, text = "Enhanced Exura Gran with intense bonus hp"},
    [27529] = {value = DeckSystem.Cards.MythicHarzal, text = "Enhanced Exura Gran with powerful bonus hp"},
    [27530] = {value = DeckSystem.Cards.CommonAgaton, text = "Enhanced Exori san with Fire"},
    [27531] = {value = DeckSystem.Cards.RareAgaton, text = "Enhanced Exori san with Earth"},
    [27532] = {value = DeckSystem.Cards.EpicAgaton, text = "Enhanced Exori san with Death"},
    [27533] = {value = DeckSystem.Cards.MythicAgaton, text = "Enhanced Exori san with Energy"},
    [27534] = {value = DeckSystem.Cards.CommonLumerus, text = "Enhanced Exeta Res Minor Distance"},
    [27535] = {value = DeckSystem.Cards.RareLumerus, text = "Enhanced Exeta Res Major Distance"},
    [27536] = {value = DeckSystem.Cards.EpicLumerus, text = "Enhanced Exeta Res Instense Distance"},
    [27537] = {value = DeckSystem.Cards.MythicLumerus, text = "Enhanced Exeta Res Powerful Distance"},
    [27538] = {value = DeckSystem.Cards.CommonVelganos, text = "Enhanced, Minor Utito Tempo san bonus"},
    [27539] = {value = DeckSystem.Cards.RareVelganos, text = "Enhanced, Major Utito Tempo san bonus"},
    [27540] = {value = DeckSystem.Cards.EpicVelganos, text = "Enhanced, Intense Utito Tempo san bonus"},
    [27541] = {value = DeckSystem.Cards.MythicVelganos, text = "Enhanced, Powerful Utito Tempo san bonus"},
    [27547] = {value = DeckSystem.Legendary.LegendaryExoticAscalonLv6, text = "Sorcerer Legendary: 2% Chance to Summon a monster and increase your Magic Level by 3 for 25 seconds."},
    [27553] = {value = DeckSystem.Legendary.LegendaryChaosAscalonLv6, text = "Sorcerer Legendary: 3% Chance to Summon a monster and increase your Magic Level by 6 for 45 seconds."},
    [27559] = {value = DeckSystem.Legendary.LegendaryAbyssalAscalonLv6, text = "Sorcerer Legendary: 4% Chance to Summon a monster and increase your Magic Level by 9 for 65 seconds."},
    [27565] = {value = DeckSystem.Legendary.LegendaryAncestralAscalonLv6, text = "Sorcerer Legendary: 5% Chance to Summon a monster and increase your Magic Level by 15 for 90 seconds."},
    [27571] = {value = DeckSystem.Legendary.LegendaryExoticSaydonLv6, text = "Druid Legendary: 2% Chance to Summon a monster and increase your Magic Level by 3 for 25 seconds."},
    [27577] = {value = DeckSystem.Legendary.LegendaryChaosSaydonLv6, text = "Druid Legendary: 3% Chance to Summon a monster and increase your Magic Level by 6 for 45 seconds."},
    [27583] = {value = DeckSystem.Legendary.LegendaryAbyssalSaydonLv6, text = "Druid Legendary: 4% Chance to Summon a monster and increase your Magic Level by 9 for 65 seconds."},
    [27589] = {value = DeckSystem.Legendary.LegendaryAncestralSaydonLv6, text = "Druid Legendary: 5% Chance to Summon a monster and increase your Magic Level by 15 for 90 seconds."},
    [27595] = {value = DeckSystem.Legendary.LegendaryExoticVercruzeLv6, text = "Paladin Legendary: 2% Chance to Summon a monster and increase your Distance Skill by 3 for 25 seconds."},
    [27601] = {value = DeckSystem.Legendary.LegendaryChaosVercruzeLv6, text = "Paladin Legendary: 3% Chance to Summon a monster and increase your Distance Skill by 6 for 45 seconds."},
    [27607] = {value = DeckSystem.Legendary.LegendaryAbyssalVercruzeLv6, text = "Paladin Legendary: 4% Chance to Summon a monster and increase your Distance Skill by 9 for 65 seconds."},
    [27640] = {value = DeckSystem.Legendary.LegendaryAncestralVercruzeLv6, text = "Paladin Legendary: 5% Chance to Summon a monster and increase your Distance Skill by 15 for 90 seconds."},
    [27613] = {value = DeckSystem.Legendary.LegendaryExoticKaiserLv6, text = "Knight Legendary: 2% Chance to Summon a monster and increase your Skills by 3 for 25 seconds."},
    [27619] = {value = DeckSystem.Legendary.LegendaryChaosKaiserLv6, text = "Knight Legendary: 3% Chance to Summon a monster and increase your Skills by 6 for 45 seconds."},
    [27625] = {value = DeckSystem.Legendary.LegendaryAbyssalKaiserLv6, text = "Knight Legendary: 4% Chance to Summon a monster and increase your Skills by 9 for 65 seconds."},
    [27631] = {value = DeckSystem.Legendary.LegendaryAncestralKaiserLv6, text = "Knight Legendary: 5% Chance to Summon a monster and increase your Skills by 15 for 90 seconds."},

}

local maxActivatedCards = 5

local deckSystem = Action()

local function getActivatedCardCount(player)
    local count = 0
    for _, card in pairs(cardsAllowed) do
        local storageValue = player:getStorageValue(card.value)
        if storageValue == 1 then
            count = count + 1
        end
    end
    return count
end

function deckSystem.onUse(player, item, fromPosition, target, toPosition, isHotkey)
    local deckSystemCard = player:getSlotItem(CONST_SLOT_DECK)

    if deckSystemCard and deckSystemCard:isContainer() then

        local container = Container(deckSystemCard:getUniqueId())
        local containerItemId = container:getId()
        if containerItemId == 27632 or containerItemId == 27633 or containerItemId == 27634 then
            local itemID = item:getId()
            local items = container:getItemsById(itemID)
        if items and #items > 0 then
            for _, containerItem in ipairs(items) do
                if containerItem:getId() == itemID then
                    local card = cardsAllowed[itemID]
                    if not card then
                        return false
                    end
                    local currentValue = player:getStorageValue(card.value)

                    if currentValue == 1 then
                        player:setStorageValue(card.value, 0)
                        containerItem:setActionId(0)
                        player:sendTextMessage(MESSAGE_INFO_DESCR, "You have Deactivated the card: " .. card.text .. "")
                        playSound(player, "deck_card.ogg")
                    else
                        if getActivatedCardCount(player) >= maxActivatedCards then
                            player:sendTextMessage(MESSAGE_INFO_DESCR, "You have reached the maximum number of activated cards.")
                            playSound(player, "fail.ogg")
                            return true
                        end

                        player:setStorageValue(card.value, 1)
                        containerItem:setActionId(37866)
                        local additionalStorage = 110017 + (itemID - 27547)
                        if player:getStorageValue(additionalStorage) == 0 or player:getStorageValue(additionalStorage) == -1 then
                            player:setStorageValue(additionalStorage, 1)
                        end
                        player:sendTextMessage(MESSAGE_INFO_DESCR, "You have Activated the card: " .. card.text .. "")
                        playSound(player, "deck_card.ogg")
                    end
                    return true
                end
            end
        end
    else
        player:sendTextMessage(MESSAGE_INFO_DESCR, "This card cannot be used on this deck slot, use it on the correct deck slot or upgrade your deck slot in order to activate it.")
    end
end

return true
end

for itemId, _ in pairs(cardsAllowed) do
deckSystem:id(itemId)
end

deckSystem:register()


local deckCards = {
    [27482] = {value = DeckSystem.Cards.CommonErasmo, text = "Common Erasmo"},
    [27483] = {value = DeckSystem.Cards.RareErasmo, text = "Rare Erasmo"},
    [27484] = {value = DeckSystem.Cards.EpicErasmo, text = "Epic Erasmo"},
    [27485] = {value = DeckSystem.Cards.MythicErasmo, text = "Mythic Erasmo"},
    [27486] = {value = DeckSystem.Cards.CommonDemetar, text = "Common Demetar"},
    [27487] = {value = DeckSystem.Cards.RareDemetar, text = "Rare Demetar"},
    [27488] = {value = DeckSystem.Cards.EpicDemetar, text = "Epic Demetar"},
    [27489] = {value = DeckSystem.Cards.MythicDemetar, text = "Mythic Demetar"},
    [27490] = {value = DeckSystem.Cards.CommonKaishuter, text = "Common Kaishuter"},
    [27491] = {value = DeckSystem.Cards.RareKaishuter, text = "Rare Kaishuter"},
    [27492] = {value = DeckSystem.Cards.EpicKaishuter, text = "Epic Kaishuter"},
    [27493] = {value = DeckSystem.Cards.MythicKaishuter, text = "Mythic Kaishuter"},
    [27494] = {value = DeckSystem.Cards.CommonEnragedChuo, text = "Common Enraged Chuo"},
    [27495] = {value = DeckSystem.Cards.RareEnragedChuo, text = "Rare Enraged Chuo"},
    [27496] = {value = DeckSystem.Cards.EpicEnragedChuo, text = "Epic Enraged Chuo"},
    [27497] = {value = DeckSystem.Cards.MythicEnragedChuo, text = "Mythic Enraged Chuo"},
    [27498] = {value = DeckSystem.Cards.CommonZaika, text = "Common Zaika"},
    [27499] = {value = DeckSystem.Cards.RareZaika, text = "Rare Zaika"},
    [27500] = {value = DeckSystem.Cards.EpicZaika, text = "Epic Zaika"},
    [27501] = {value = DeckSystem.Cards.MythicZaika, text = "Mythic Zaika"},
    [27502] = {value = DeckSystem.Cards.CommonRictus, text = "Common Rictus"},
    [27503] = {value = DeckSystem.Cards.RareRictus, text = "Rare Rictus"},
    [27504] = {value = DeckSystem.Cards.EpicRictus, text = "Epic Rictus"},
    [27505] = {value = DeckSystem.Cards.MythicRictus, text = "Mythic Rictus"},
    [27506] = {value = DeckSystem.Cards.CommonGlobus, text = "Common Globus"},
    [27507] = {value = DeckSystem.Cards.RareGlobus, text = "Rare Globus"},
    [27508] = {value = DeckSystem.Cards.EpicGlobus, text = "Epic Globus"},
    [27509] = {value = DeckSystem.Cards.MythicGlobus, text = "Mythic Globus"},
    [27510] = {value = DeckSystem.Cards.CommonHidaka, text = "Common Hidaka"},
    [27511] = {value = DeckSystem.Cards.RareHidaka, text = "Rare Hidaka"},
    [27512] = {value = DeckSystem.Cards.EpicHidaka, text = "Epic Hidaka"},
    [27513] = {value = DeckSystem.Cards.MythicHidaka, text = "Mythic Hidaka"},
    [27514] = {value = DeckSystem.Cards.CommonBrelshaza, text = "Common Brelshaza"},
    [27515] = {value = DeckSystem.Cards.RareBrelshaza, text = "Rare Brelshaza"},
    [27516] = {value = DeckSystem.Cards.EpicBrelshaza, text = "Epic Brelshaza"},
    [27517] = {value = DeckSystem.Cards.MythicBrelshaza, text = "Mythic Brelshaza"},
    [27518] = {value = DeckSystem.Cards.CommonVairgrys, text = "Common Vairgrys"},
    [27519] = {value = DeckSystem.Cards.RareVairgrys, text = "Rare Vairgrys"},
    [27520] = {value = DeckSystem.Cards.EpicVairgrys, text = "Epic Vairgrys"},
    [27521] = {value = DeckSystem.Cards.MythicVairgrys, text = "Mythic Vairgrys"},
    [27522] = {value = DeckSystem.Cards.CommonEnviska, text = "Common Enviska"},
    [27523] = {value = DeckSystem.Cards.RareEnviska, text = "Rare Enviska"},
    [27524] = {value = DeckSystem.Cards.EpicEnviska, text = "Epic Enviska"},
    [27525] = {value = DeckSystem.Cards.MythicEnviska, text = "Mythic Enviska"},
    [27526] = {value = DeckSystem.Cards.CommonHarzal, text = "Common Harzal"},
    [27527] = {value = DeckSystem.Cards.RareHarzal, text = "Rare Harzal"},
    [27528] = {value = DeckSystem.Cards.EpicHarzal, text = "Epic Harzal"},
    [27529] = {value = DeckSystem.Cards.MythicHarzal, text = "Mythic Harzal"},
    [27530] = {value = DeckSystem.Cards.CommonAgaton, text = "Common Agaton"},
    [27531] = {value = DeckSystem.Cards.RareAgaton, text = "Rare Agaton"},
    [27532] = {value = DeckSystem.Cards.EpicAgaton, text = "Epic Agaton"},
    [27533] = {value = DeckSystem.Cards.MythicAgaton, text = "Mythic Agaton"},
    [27534] = {value = DeckSystem.Cards.CommonLumerus, text = "Common Lumerus"},
    [27535] = {value = DeckSystem.Cards.RareLumerus, text = "Rare Lumerus"},
    [27536] = {value = DeckSystem.Cards.EpicLumerus, text = "Epic Lumerus"},
    [27537] = {value = DeckSystem.Cards.MythicLumerus, text = "Mythic Lumerus"},
    [27538] = {value = DeckSystem.Cards.CommonVelganos, text = "Common Velganos"},
    [27539] = {value = DeckSystem.Cards.RareVelganos, text = "Rare Velganos"},
    [27540] = {value = DeckSystem.Cards.EpicVelganos, text = "Epic Velganos"},
    [27541] = {value = DeckSystem.Cards.MythicVelganos, text = "Mythic Velganos"},
    [27547] = {value = DeckSystem.Legendary.LegendaryExoticAscalonLv6, text = "Exotic Ascalon Lv6"},
    [27553] = {value = DeckSystem.Legendary.LegendaryChaosAscalonLv6, text = "Chaos Ascalon Lv6"},
    [27559] = {value = DeckSystem.Legendary.LegendaryAbyssalAscalonLv6, text = "Abyssal Ascalon Lv6"},
    [27565] = {value = DeckSystem.Legendary.LegendaryAncestralAscalonLv6, text = "Ancestral Ascalon Lv6"},
    [27571] = {value = DeckSystem.Legendary.LegendaryExoticSaydonLv6, text = "Exotic Saydon Lv6"},
    [27577] = {value = DeckSystem.Legendary.LegendaryChaosSaydonLv6, text = "Chaos Saydon Lv6"},
    [27583] = {value = DeckSystem.Legendary.LegendaryAbyssalSaydonLv6, text = "Abyssal Saydon Lv6"},
    [27589] = {value = DeckSystem.Legendary.LegendaryAncestralSaydonLv6, text = "Ancestral Saydon Lv6"},
    [27595] = {value = DeckSystem.Legendary.LegendaryExoticVercruzeLv6, text = "Exotic Vercruze Lv6"},
    [27601] = {value = DeckSystem.Legendary.LegendaryChaosVercruzeLv6, text = "Chaos Vercruze Lv6"},
    [27607] = {value = DeckSystem.Legendary.LegendaryAbyssalVercruzeLv6, text = "Abyssal Vercruze Lv6"},
    [27640] = {value = DeckSystem.Legendary.LegendaryAncestralVercruzeLv6, text = "Ancestral Vercruze Lv6"},
    [27613] = {value = DeckSystem.Legendary.LegendaryExoticKaiserLv6, text = "Exotic Kaiser Lv6"},
    [27619] = {value = DeckSystem.Legendary.LegendaryChaosKaiserLv6, text = "Chaos Kaiser Lv6"},
    [27625] = {value = DeckSystem.Legendary.LegendaryAbyssalKaiserLv6, text = "Abyssal Kaiser Lv6"},
    [27631] = {value = DeckSystem.Legendary.LegendaryAncestralKaiserLv6, text = "Ancestral Kaiser Lv6"},

}

local deckStatus = TalkAction("!deck")

function deckStatus.onSay(player, words)
    local statusMessage = "Deck Card Status:\n"
    for _, card in pairs(deckCards) do
        local status = player:getStorageValue(card.value) == 1 and "[*Activated*]" or "Deactivated"
        statusMessage = statusMessage .. card.text .. ": " .. status .. "\n"
    end
    player:showTextDialog(27634, statusMessage)
    return false
end

deckStatus:register()
