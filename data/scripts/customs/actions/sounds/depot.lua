local openDepot = Action()

local lockers = {
    2589,
    2590,
    2591,
    2592,
}
function openDepot.onUse(player, item)
    playSoundPlayer(player, "depot.ogg")
end


for _, lockerID in ipairs(lockers) do
    openDepot:id(lockerID)
end
openDepot:register()