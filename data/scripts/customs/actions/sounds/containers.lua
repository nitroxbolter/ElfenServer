local containers = Action()

local containerIDs = {
    1987,
    1988,
    1991,
    1992,
    1993,
    1994,
    1995,
    1996,
    1997,
    1998,
    1999,
    2000,
    2001,
    2002,
    2003,
    2004,
    3939,
    3940,
    2365,
    5801,
    5926,
    5927,
    5949,
    5950,
    7342,
    7343,
    9774,
    9775,
    10518,
    10519,
    10520,
    10521,
    10522,
    11119,
    11241,
    11242,
    11243,
    11244,
    11263,
    15645,
    15646,
    16007,
    18393,
    18394,
    20620,
    21475,
    22696,
    23663,
    23666,
    23782,
    24740,
    26181,
    27273,
    27289,
    28028,
    28034,
    28044,
}
function containers.onUse(player, item)
    playSoundPlayer(player, "open_backpack.ogg")
end


for _, containerID in ipairs(containerIDs) do
    containers:id(containerID)
end
containers:register()