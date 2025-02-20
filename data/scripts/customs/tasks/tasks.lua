local RewardType = {
    Points = 1,
    Ranking = 2,
    Experience = 3,
    Gold = 4,
    Item = 5,
    Storage = 6,
    Teleport = 7,
  }
  
  local Config = {
    TasksOpCode = 92,
    StoragePoints = 187613,
    StorageSlot = 187614, -- 87615 - 87625 reserved (10)
    StorageKillsSelected = 187626, -- 87627 - 87637 reserved (10)
    StorageKillsCurrent = 187638, -- 87639 - 87649 reserved (10)
    ActiveTasksLimit = 3, -- max 10 or you will have to adjust storage keys
    RecommendedLevelRange = 10, -- when player is within this range (at level 20, 10-20 and 20-30 levels), "Recommended" text will be displayed in tasks list
    RequiredKills = {Min = 300, Max = 1000}, -- Minimum and Maximum amount of kills that player can select
    KillsForBonus = 100, -- every how many kills should bonus be applied (not counting minimum amount of kills)
    --[[
      % increased rank points gained per KillsForBonus kills
      If player selects to kill 100 Trolls, only base value is granted
      Selecting 200 kills grants base value + PointsIncrease%
      Default: 100
      Type: Percent
    ]]
    PointsIncrease = 10,
    --[[
      % increased experience points gained per KillsForBonus kills
      Default: 10
      Type: Percent
    ]]
    ExperienceIncrease = 20,
    --[[
      % increased gold coins gained per KillsForBonus kills
      Default: 10
      Type: Percent
    ]]
    GoldIncrease = 15,
    Party = {
      Enabled = true, -- should party members share kills
      Range = 8 -- party members in this range (tiles) will have task kill added, 0 to make it infinite range
    },
    Ranks = {
      [40] = "Rookie",
      [100] = "Bronze",
      [250] = "Silver",
      [470] = "Gold",
      [770] = "Platinum",
      [1220] = "Diamond",
      [1820] = "Ancestral",
      [2820] = "Mystic",
      [4320] = "Abyssal",
      [6320] = "Ascending",
      [9999] = "Chaos",
      [10000] = "Awakening"
  
  
    },
    Tasks = {
      --[[
        {
          RaceName = "Trolls", -- Name of the task
          Level = 8, -- Recommended level for this task (see RecommendedLevelRange)
          Monsters = {"Troll", "Troll Champion"}, -- List of monsters that count for the task, case-sensitive
          Rewards = {
            {Type = RewardType.Points, BaseValue = 1}, -- Adds rank points
            {Type = RewardType.Experience, BaseValue = 1000}, -- Gives experience
            {Type = RewardType.Gold, BaseValue = 500} -- Gives gold coins to bank
            {Type = RewardType.Item, Id = 2353, Amount = 1}, -- Rewards with 1 Burning Heart item
            {Type = RewardType.Storage, Key = 1234, Value = 1, Description = "Access to new hunting area"}, -- Sets storage 1234 with value 1
            {Type = RewardType.Teleport, Position = Position(1000, 1000, 7), Description = "Troll Boss fight"} -- Teleports to Position when task is completed
          }
        },
      ]]
      {
        RaceName = "Crocodiles",
        Level = 6,
        Monsters = {"Crocodile"},
        Rewards = {
          {Type = RewardType.Points, BaseValue = 1},
          {Type = RewardType.Ranking, BaseValue = 2},
          {Type = RewardType.Experience, BaseValue = 80000},
          {Type = RewardType.Gold, BaseValue = 500},
          {Type = RewardType.Storage, Key = 35000, Value = 1, Description = "Unlock boss fight, teleported after complete the task."},
          {Type = RewardType.Teleport, Position = Position(32610, 32714, 8), Description = "Fight Boss The Snapper"},
        }
      },
      {
        RaceName = "Tarantulas",
        Level = 6,
        Monsters = {"Tarantula"},
        Rewards = {
          {Type = RewardType.Points, BaseValue = 1},
          {Type = RewardType.Ranking, BaseValue = 2},
          {Type = RewardType.Experience, BaseValue = 240000},
          {Type = RewardType.Gold, BaseValue = 600},
          {Type = RewardType.Storage, Key = 35001, Value = 1, Description = "Unlock boss fight, teleported after complete the task."},
          {Type = RewardType.Teleport, Position = Position(32825, 32693, 8), Description = "Fight Boss Hide"},
        }
      },
      {
        RaceName = "Carniphilas",
        Level = 6,
        Monsters = {"Carniphila"},
        Rewards = {
          {Type = RewardType.Points, BaseValue = 1},
          {Type = RewardType.Ranking, BaseValue = 2},
          {Type = RewardType.Experience, BaseValue = 300000},
          {Type = RewardType.Gold, BaseValue = 850},
          {Type = RewardType.Storage, Key = 35002, Value = 1, Description = "Unlock boss fight, teleported after complete the task."},
          {Type = RewardType.Teleport, Position = Position(32725, 32764, 8), Description = "Fight Boss Deathbine"},
        }
      },
      {
        RaceName = "Mammoths",
        Level = 6,
        Monsters = {"Mammoth"},
        Rewards = {
          {Type = RewardType.Points, BaseValue = 1},
          {Type = RewardType.Ranking, BaseValue = 2},
          {Type = RewardType.Experience, BaseValue = 320000},
          {Type = RewardType.Gold, BaseValue = 1000},
          {Type = RewardType.Storage, Key = 35003, Value = 1, Description = "Unlock boss fight, teleported after complete the task."},
          {Type = RewardType.Teleport, Position = Position(32104, 31113, 2), Description = "Fight Boss The Bloodtusk"},
        }
      },
      {
        RaceName = "Ice Golems",
        Level = 50,
        Monsters = {"Ice Golem"},
        Rewards = {
          {Type = RewardType.Points, BaseValue = 2},
          {Type = RewardType.Ranking, BaseValue = 3},
          {Type = RewardType.Experience, BaseValue = 590000},
          {Type = RewardType.Gold, BaseValue = 3000},
          {Type = RewardType.Storage, Key = 35004, Value = 1, Description = "Unlock boss fight, teleported after complete the task."},
          {Type = RewardType.Teleport, Position = Position(32141, 31146, 3), Description = "Fight Boss Shardhead"},
        }
      },
      {
        RaceName = "Mutated rat",
        Level = 50,
        Monsters = {"Mutated Rat"},
        Rewards = {
          {Type = RewardType.Points, BaseValue = 2},
          {Type = RewardType.Ranking, BaseValue = 3},
          {Type = RewardType.Experience, BaseValue = 1230000},
          {Type = RewardType.Gold, BaseValue = 4800},
          {Type = RewardType.Storage, Key = 35005, Value = 1, Description = "Unlock boss fight, teleported after complete the task."},
          {Type = RewardType.Teleport, Position = Position(32758, 31242, 9), Description = "Fight Boss Esmeralda"},
        }
      },
      {
        RaceName = "Ancient Scarabs",
        Level = 50,
        Monsters = {"Ancient Scarab"},
        Rewards = {
          {Type = RewardType.Points, BaseValue = 2},
          {Type = RewardType.Ranking, BaseValue = 3},
          {Type = RewardType.Experience, BaseValue = 1440000},
          {Type = RewardType.Gold, BaseValue = 8000},
          {Type = RewardType.Storage, Key = 35006, Value = 1, Description = "Unlock boss fight, teleported after complete the task."},
          {Type = RewardType.Teleport, Position = Position(33050, 32776, 10), Description = "Fight Boss Fleshcrawler"},
        }
      },
      {
        RaceName = "Bonebeasts",
        Level = 50,
        Monsters = {"Bonebeast"},
        Rewards = {
          {Type = RewardType.Points, BaseValue = 2},
          {Type = RewardType.Ranking, BaseValue = 3},
          {Type = RewardType.Experience, BaseValue = 1160000},
          {Type = RewardType.Gold, BaseValue = 4500},
          {Type = RewardType.Storage, Key = 35007, Value = 1, Description = "Unlock boss fight, teleported after complete the task."},
          {Type = RewardType.Teleport, Position = Position(33109, 32805, 13), Description = "Fight Boss Ribstride"},
        }
      },
      {
        RaceName = "Crystal Spiders",
        Level = 50,
        Monsters = {"Crystal Spider"},
        Rewards = {
          {Type = RewardType.Points, BaseValue = 2},
          {Type = RewardType.Ranking, BaseValue = 3},
          {Type = RewardType.Experience, BaseValue = 1800000},
          {Type = RewardType.Gold, BaseValue = 9000},
          {Type = RewardType.Storage, Key = 35008, Value = 1, Description = "Unlock boss fight, teleported after complete the task."},
          {Type = RewardType.Teleport, Position = Position(32122, 31183, 4), Description = "Fight Boss The Bloodweb"},
        }
      },
      {
        RaceName = "Underwater Quara",
        Level = 50,
        Monsters = {"Quara Hydromancer", "Quara Predator", "Quara Constrictor", "Quara Mantassin", "Quara Pincher"},
        Rewards = {
          {Type = RewardType.Points, BaseValue = 2},
          {Type = RewardType.Ranking, BaseValue = 4},
          {Type = RewardType.Experience, BaseValue = 1600000},
          {Type = RewardType.Gold, BaseValue = 8000},
          {Type = RewardType.Storage, Key = 35009, Value = 1, Description = "Unlock boss fight, teleported after complete the task."},
          {Type = RewardType.Teleport, Position = Position(31911, 32715, 12), Description = "Fight Boss Thul"},
        }
      },
      {
        RaceName = "Giant Spiders",
        Level = 80,
        Monsters = {"Giant Spider"},
        Rewards = {
          {Type = RewardType.Points, BaseValue = 3},
          {Type = RewardType.Ranking, BaseValue = 4},
          {Type = RewardType.Experience, BaseValue = 1800000},
          {Type = RewardType.Gold, BaseValue = 12500},
          {Type = RewardType.Storage, Key = 35010, Value = 1, Description = "Unlock boss fight, teleported after complete the task."},
          {Type = RewardType.Teleport, Position = Position(32813, 32278, 7), Description = "Fight Boss The old widow"},
        }
      },
      {
        RaceName = "Werewolves",
        Level = 80,
        Monsters = {"Werewolf"},
        Rewards = {
          {Type = RewardType.Points, BaseValue = 3},
          {Type = RewardType.Ranking, BaseValue = 4},
          {Type = RewardType.Experience, BaseValue = 3800000},
          {Type = RewardType.Gold, BaseValue = 15000},
          {Type = RewardType.Storage, Key = 35011, Value = 1, Description = "Unlock boss fight, teleported after complete the task."},
          {Type = RewardType.Teleport, Position = Position(32993, 31445, 7), Description = "Fight Boss Hemming"},
        }
      },
      {
        RaceName = "Nightmares",
        Level = 80,
        Monsters = {"Nightmare", "Nightmare Scion"},
        Rewards = {
          {Type = RewardType.Points, BaseValue = 3},
          {Type = RewardType.Ranking, BaseValue = 4},
          {Type = RewardType.Experience, BaseValue = 3800000},
          {Type = RewardType.Gold, BaseValue = 15000},
          {Type = RewardType.Storage, Key = 35012, Value = 1, Description = "Unlock boss fight, teleported after complete the task."},
          {Type = RewardType.Teleport, Position = Position(32072, 31281, 10), Description = "Fight Boss Tormentor"},
        }
      },
      {
        RaceName = "Dragon Lords",
        Level = 80,
        Monsters = {"Dragon Lord"},
        Rewards = {
          {Type = RewardType.Points, BaseValue = 3},
          {Type = RewardType.Ranking, BaseValue = 4},
          {Type = RewardType.Experience, BaseValue = 4200000},
          {Type = RewardType.Gold, BaseValue = 25000},
          {Type = RewardType.Storage, Key = 22556, Value = 1, Description = "Unlock boss fight, teleported after complete the task."},
          {Type = RewardType.Teleport, Position = Position(32771, 32290, 10), Description = "Fight Boss Demodras"},
        }
      },
      {
        RaceName = "Hellspawns",
        Level = 80,
        Monsters = {"Hellspawn"},
        Rewards = {
          {Type = RewardType.Points, BaseValue = 3},
          {Type = RewardType.Ranking, BaseValue = 4},
          {Type = RewardType.Experience, BaseValue = 5100000},
          {Type = RewardType.Gold, BaseValue = 25000},
          {Type = RewardType.Storage, Key = 35013, Value = 1, Description = "Unlock boss fight, teleported after complete the task."},
          {Type = RewardType.Teleport, Position = Position(32816, 31028, 7), Description = "Fight Boss Flameborn"},
        }
      },
      {
        RaceName = "High Class Lizards",
        Level = 100,
        Monsters = {"Lizard Chosen", "Lizard Dragon Priest", "Lizard High Guard", "Lizard Legionnaire"},
        Rewards = {
          {Type = RewardType.Points, BaseValue = 3},
          {Type = RewardType.Ranking, BaseValue = 5},
          {Type = RewardType.Experience, BaseValue = 4400000},
          {Type = RewardType.Gold, BaseValue = 30000},
          {Type = RewardType.Storage, Key = 35014, Value = 1, Description = "Unlock boss fight, teleported after complete the task."},
          {Type = RewardType.Teleport, Position = Position(32998, 31175, 6), Description = "Fight Boss Fazzrah"},
        }
      },
      {
        RaceName = "Wyrms",
        Level = 100,
        Monsters = {"Wyrm", "Elder Wyrm"},
        Rewards = {
          {Type = RewardType.Points, BaseValue = 3},
          {Type = RewardType.Ranking, BaseValue = 4},
          {Type = RewardType.Experience, BaseValue = 4000000},
          {Type = RewardType.Gold, BaseValue = 30000},
          {Type = RewardType.Item, Id = 8855, Amount = 1}, 
          {Type = RewardType.Item, Id = 7451, Amount = 1},
        }
      },
      {
        RaceName = "Minotaurs",
        Level = 100,
        Monsters = {"Worm Priestess", "Minotaur Amazon", "Minotaur Hunter", "Mooh'tah Warrior"},
        Rewards = {
          {Type = RewardType.Points, BaseValue = 3},
          {Type = RewardType.Ranking, BaseValue = 4},
          {Type = RewardType.Experience, BaseValue = 3500000},
          {Type = RewardType.Gold, BaseValue = 25000},
          {Type = RewardType.Item, Id = 2476, Amount = 1}, 
          {Type = RewardType.Item, Id = 2477, Amount = 1},
          {Type = RewardType.Item, Id = 2475, Amount = 1},
        }
      },
      {
        RaceName = "Stampors",
        Level = 100,
        Monsters = {"Stampor"},
        Rewards = {
          {Type = RewardType.Points, BaseValue = 3},
          {Type = RewardType.Ranking, BaseValue = 3},
          {Type = RewardType.Experience, BaseValue = 1560000},
          {Type = RewardType.Gold, BaseValue = 18000},
          {Type = RewardType.Storage, Key = 35015, Value = 1, Description = "Unlock boss fight, teleported after complete the task."},
          {Type = RewardType.Teleport, Position = Position(33165, 31212, 7), Description = "Fight Boss Tromphonyte"},
        }
      },
      {
        RaceName = "Brimstone Bugs",
        Level = 100,
        Monsters = {"Brimstone Bug"},
        Rewards = {
          {Type = RewardType.Points, BaseValue = 3},
          {Type = RewardType.Ranking, BaseValue = 3},
          {Type = RewardType.Experience, BaseValue = 1800000},
          {Type = RewardType.Gold, BaseValue = 15000},
          {Type = RewardType.Storage, Key = 35016, Value = 1, Description = "Unlock boss fight, teleported after complete the task."},
          {Type = RewardType.Teleport, Position = Position(33284, 31114, 8), Description = "Fight Boss Sulphur scuttler"},
        }
      },
      {
        RaceName = "Mutated Bats",
        Level = 100,
        Monsters = {"Mutated Bat"},
        Rewards = {
          {Type = RewardType.Points, BaseValue = 3},
          {Type = RewardType.Ranking, BaseValue = 3},
          {Type = RewardType.Experience, BaseValue = 1230000},
          {Type = RewardType.Gold, BaseValue = 18000},
          {Type = RewardType.Storage, Key = 35017, Value = 1, Description = "Unlock boss fight, teleported after complete the task."},
          {Type = RewardType.Teleport, Position = Position(32678, 31117, 3), Description = "Fight Boss Bruise payne"},
        }
      },
      {
        RaceName = "Hydras",
        Level = 130,
        Monsters = {"Hydra"},
        Rewards = {
          {Type = RewardType.Points, BaseValue = 3},
          {Type = RewardType.Ranking, BaseValue = 4},
          {Type = RewardType.Experience, BaseValue = 4200000},
          {Type = RewardType.Gold, BaseValue = 30000},
          {Type = RewardType.Storage, Key = 35018, Value = 1, Description = "Unlock boss fight, teleported after complete the task."},
          {Type = RewardType.Teleport, Position = Position(32920, 32880, 8), Description = "Fight Boss The many"},
        }
      },
      {
        RaceName = "Serpent Spawns",
        Level = 130,
        Monsters = {"Serpent Spawn"},
        Rewards = {
          {Type = RewardType.Points, BaseValue = 3},
          {Type = RewardType.Ranking, BaseValue = 4},
          {Type = RewardType.Experience, BaseValue = 6100000},
          {Type = RewardType.Gold, BaseValue = 30000},
          {Type = RewardType.Storage, Key = 35019, Value = 1, Description = "Unlock boss fight, teleported after complete the task."},
          {Type = RewardType.Teleport, Position = Position(32891, 32634, 11), Description = "Fight Boss The noxious spawn"},
        }
      },
      {
        RaceName = "Medusas",
        Level = 130,
        Monsters = {"Medusa"},
        Rewards = {
          {Type = RewardType.Points, BaseValue = 3},
          {Type = RewardType.Ranking, BaseValue = 5},
          {Type = RewardType.Experience, BaseValue = 8100000},
          {Type = RewardType.Gold, BaseValue = 40000},
          {Type = RewardType.Storage, Key = 35020, Value = 1, Description = "Unlock boss fight, teleported after complete the task."},
          {Type = RewardType.Teleport, Position = Position(32891, 32635, 11), Description = "Fight Boss Gorgo"},
        }
      },
      {
        RaceName = "Behemoths",
        Level = 130,
        Monsters = {"Behemoth"},
        Rewards = {
          {Type = RewardType.Points, BaseValue = 3},
          {Type = RewardType.Ranking, BaseValue = 5},
          {Type = RewardType.Experience, BaseValue = 5000000},
          {Type = RewardType.Gold, BaseValue = 40000},
          {Type = RewardType.Storage, Key = 35021, Value = 1, Description = "Unlock boss fight, teleported after complete the task."},
          {Type = RewardType.Teleport, Position = Position(33268, 31723, 15), Description = "Fight Boss Stonecracker"},
        }
      },
      {
        RaceName = "Sea Serpents and Young Sea Serpents",
        Level = 130,
        Monsters = {"Sea Serpent", "Young Sea Serpent"},
        Rewards = {
          {Type = RewardType.Points, BaseValue = 3},
          {Type = RewardType.Ranking, BaseValue = 5},
          {Type = RewardType.Experience, BaseValue = 4600000},
          {Type = RewardType.Gold, BaseValue = 40000},
          {Type = RewardType.Storage, Key = 35022, Value = 1, Description = "Unlock boss fight, teleported after complete the task."},
          {Type = RewardType.Teleport, Position = Position(31925, 31076, 10), Description = "Fight Boss Leviathan"},
        }
      },
      {
        RaceName = "Hellhounds",
        Level = 130,
        Monsters = {"Hellhound"},
        Rewards = {
          {Type = RewardType.Points, BaseValue = 4},
          {Type = RewardType.Ranking, BaseValue = 5},
          {Type = RewardType.Experience, BaseValue = 13600000},
          {Type = RewardType.Gold, BaseValue = 60000},
          {Type = RewardType.Storage, Key = 35023, Value = 1, Description = "Unlock boss fight, teleported after complete the task."},
          {Type = RewardType.Teleport, Position = Position(32042, 32549, 14), Description = "Fight Boss Kerberos"},
        }
      },
      {
        RaceName = "Ghastly Dragons",
        Level = 130,
        Monsters = {"Ghastly Dragon"},
        Rewards = {
          {Type = RewardType.Points, BaseValue = 4},
          {Type = RewardType.Ranking, BaseValue = 6},
          {Type = RewardType.Experience, BaseValue = 9200000},
          {Type = RewardType.Gold, BaseValue = 60000},
          {Type = RewardType.Storage, Key = 35024, Value = 1, Description = "Unlock boss fight, teleported after complete the task."},
          {Type = RewardType.Teleport, Position = Position(33175, 31013, 7), Description = "Fight Boss Ethershreck"},
        }
      },
      {
        RaceName = "Drakens",
        Level = 130,
        Monsters = {"Draken Spellweaver", "Draken Warmaster", "Draken Abomination", "Draken Elite"},
        Rewards = {
          {Type = RewardType.Points, BaseValue = 3},
          {Type = RewardType.Ranking, BaseValue = 6},
          {Type = RewardType.Experience, BaseValue = 6200000},
          {Type = RewardType.Gold, BaseValue = 50000},
          {Type = RewardType.Storage, Key = 35025, Value = 1, Description = "Unlock boss fight, teleported after complete the task."},
          {Type = RewardType.Teleport, Position = Position(33065, 31106, 2), Description = "Fight Boss Paiz the pauperizer"},
        }
      },
      {
        RaceName = "Destroyers",
        Level = 130,
        Monsters = {"Destroyer"},
        Rewards = {
          {Type = RewardType.Points, BaseValue = 3},
          {Type = RewardType.Ranking, BaseValue = 4},
          {Type = RewardType.Experience, BaseValue = 5000000},
          {Type = RewardType.Gold, BaseValue = 25000},
          {Type = RewardType.Storage, Key = 35026, Value = 1, Description = "Unlock boss fight, teleported after complete the task."},
          {Type = RewardType.Teleport, Position = Position(31999, 31191, 10), Description = "Fight Boss Bretzecutioner"},
        }
      },
      {
        RaceName = "Undead Dragons",
        Level = 130,
        Monsters = {"Undead Dragon"},
        Rewards = {
          {Type = RewardType.Points, BaseValue = 4},
          {Type = RewardType.Ranking, BaseValue = 6},
          {Type = RewardType.Experience, BaseValue = 14400000},
          {Type = RewardType.Gold, BaseValue = 60000},
          {Type = RewardType.Storage, Key = 35027, Value = 1, Description = "Unlock boss fight, teleported after complete the task."},
          {Type = RewardType.Teleport, Position = Position(33092, 31077, 12), Description = "Fight Boss Zanakeph"},
        }
      },
      {
        RaceName = "Fear Valley",
        Level = 180,
        Monsters = {"Retching Horror", "Choking Fear"},
        Rewards = {
          {Type = RewardType.Points, BaseValue = 4},
          {Type = RewardType.Ranking, BaseValue = 6},
          {Type = RewardType.Experience, BaseValue = 10200000},
          {Type = RewardType.Gold, BaseValue = 65000},
          {Type = RewardType.Item, Id = 22396, Amount = 3}, 
          {Type = RewardType.Item, Id = 22397, Amount = 1},
        }
      },
      {
        RaceName = "Silence Mountain",
        Level = 200,
        Monsters = {"Silencer", "Frazzlemaw", "Guzzlemaw"},
        Rewards = {
          {Type = RewardType.Points, BaseValue = 4},
          {Type = RewardType.Ranking, BaseValue = 6},
          {Type = RewardType.Experience, BaseValue = 10000000},
          {Type = RewardType.Gold, BaseValue = 65000},
        }
      },
      {
        RaceName = "Catacombs",
        Level = 200,
        Monsters = {"Juggernaut", "Demon", "Dark Torturer"},
        Rewards = {
          {Type = RewardType.Points, BaseValue = 5},
          {Type = RewardType.Ranking, BaseValue = 6},
          {Type = RewardType.Experience, BaseValue = 14000000},
          {Type = RewardType.Gold, BaseValue = 85000},
        }
      },
      {
        RaceName = "Azure Catacombs",
        Level = 250,
        Monsters = {"Aberration of the Depths", "Alpha Demon", "Azure Guard", "Black Dragon", "Brontosaurus", "Butcher Ogre", "Colossal Ice Monkey", "Giant Hornet", "Netheria Dragon", "Reflect Spider", "Ruthless Spider", "Venom Spider", "Demon of the Depths", "Rhino of the Depths", "Skullcrusher Demon"},
        Rewards = {
          {Type = RewardType.Points, BaseValue = 7},
          {Type = RewardType.Ranking, BaseValue = 8},
          {Type = RewardType.Experience, BaseValue = 21600000},
          {Type = RewardType.Item, Id = 26780, Amount = 8},
          {Type = RewardType.Item, Id = 26779, Amount = 3},
        }
      },
      {
        RaceName = "Grave Danger",
        Level = 300,
        Monsters = {"Count Vlarkorth", "Duke Krule", "Earl Osam", "Lord Azaram", "Sir Baeloc", "Sir Nictros", "King Zelos"},
        Rewards = {
          {Type = RewardType.Points, BaseValue = 15},
          {Type = RewardType.Ranking, BaseValue = 20},
          {Type = RewardType.Experience, BaseValue = 66000000},
          {Type = RewardType.Gold, BaseValue = 300000},
          {Type = RewardType.Item, Id = 27234, Amount = 1}, 
          {Type = RewardType.Item, Id = 27235, Amount = 2}, 
        }
      },
      {
        RaceName = "Master of Elements",
        Level = 300,
        Monsters = {"Bulltauren Alchemist", "Bulltauren Brute", "Bulltauren Forgepriest", "Mega Dragon", "Mitmah Vanguard", "Tauren Herk", "Wardragon", "Master of the Elements"},
        Rewards = {
          {Type = RewardType.Points, BaseValue = 10},
          {Type = RewardType.Ranking, BaseValue = 15},
          {Type = RewardType.Experience, BaseValue = 26000000},
          {Type = RewardType.Gold, BaseValue = 140000},
          {Type = RewardType.Item, Id = 27149, Amount = 3}, 
          {Type = RewardType.Item, Id = 27133, Amount = 5}, 
          {Type = RewardType.Item, Id = 27137, Amount = 2}, 
          {Type = RewardType.Item, Id = 27140, Amount = 1}, 
        }
      },
      {
        RaceName = "Flimsys",
        Level = 300,
        Monsters = {"Cursed Prospector", "Evil Prospector", "Flimsy Lost Soul", "Freakish Lost Soul", "Irgix The Flimsy", "Mean Lost Soul", "Unaz The Mean", "Vok The Freakish"},
        Rewards = {
          {Type = RewardType.Points, BaseValue = 5},
          {Type = RewardType.Ranking, BaseValue = 7},
          {Type = RewardType.Experience, BaseValue = 23500000},
          {Type = RewardType.Gold, BaseValue = 110000},
          {Type = RewardType.Item, Id = 26779, Amount = 3}, 
        }
      },
      {
        RaceName = "Fear Feaster",
        Level = 350,
        Monsters = {"The Dread Maiden", "The Pale Worm", "The Unwelcome", "The Fear Feaster"},
        Rewards = {
          {Type = RewardType.Points, BaseValue = 15},
          {Type = RewardType.Ranking, BaseValue = 20},
          {Type = RewardType.Experience, BaseValue = 130000000},
          {Type = RewardType.Gold, BaseValue = 110000},
          {Type = RewardType.Item, Id = 26779, Amount = 20}, 
          {Type = RewardType.Item, Id = 27297, Amount = 2}, 
          {Type = RewardType.Item, Id = 27298, Amount = 2},
        }
      },
      {
        RaceName = "Secret Library",
        Level = 400,
        Monsters = {"Animated Feather", "Biting Book", "Brain Squid", "Burning Book", "Cursed Book", "Energetic Book", "Energuardian of Tales", "Floating Savant", "Flying Book", "Guardian of Tales", "Icecold Book", "Ink Blob", "Knowledge Elemental", "Rage Squid", "Squid Warden"},
        Rewards = {
          {Type = RewardType.Points, BaseValue = 6},
          {Type = RewardType.Ranking, BaseValue = 8},
          {Type = RewardType.Experience, BaseValue = 22000000},
          {Type = RewardType.Gold, BaseValue = 100000},
          {Type = RewardType.Item, Id = 27990, Amount = 1}, 
          {Type = RewardType.Item, Id = 26780, Amount = 2},
          {Type = RewardType.Item, Id = 26778, Amount = 2},
          {Type = RewardType.Item, Id = 26779, Amount = 5}, 
        }
      },
      {
        RaceName = "Secret Bosses",
        Level = 450,
        Monsters = {"Ghulosh", "Gorzindel", "Lokathmor", "Mazzinor", "The Scourge Of Oblivion"},
        Rewards = {
          {Type = RewardType.Points, BaseValue = 20},
          {Type = RewardType.Ranking, BaseValue = 25},
          {Type = RewardType.Experience, BaseValue = 225000000},
          {Type = RewardType.Gold, BaseValue = 110000},
          {Type = RewardType.Item, Id = 26779, Amount = 20}, 
          {Type = RewardType.Item, Id = 8932, Amount = 1}, 
          {Type = RewardType.Item, Id = 8903, Amount = 1},
        }
      },
      {
        RaceName = "Soulwar",
        Level = 500,
        Monsters = {"Bony Sea Devil", "Brachiodemon", "Branchy Crawler", "Capricious Phantom", "Cloak Of Terror", "Courage Leech", "Distorted Phantom", "Druid's Apparition", "Knight's Apparition", "Rotten Golem", "Infernal Demon", "Turbulent Elemental", "Many Faces", "Sorcerer's Apparition", "Paladin's Apparition"},
        Rewards = {
          {Type = RewardType.Points, BaseValue = 8},
          {Type = RewardType.Ranking, BaseValue = 10},
          {Type = RewardType.Experience, BaseValue = 49800000},
          {Type = RewardType.Gold, BaseValue = 125000},
          {Type = RewardType.Item, Id = 27990, Amount = 1}, 
          {Type = RewardType.Item, Id = 26780, Amount = 3},
          {Type = RewardType.Item, Id = 26778, Amount = 2},
          {Type = RewardType.Item, Id = 26779, Amount = 5}, 
        }
      },
      {
        RaceName = "Darklights",
        Level = 500,
        Monsters = {"Bloated Man-Maggot", "Converter", "Darklight Construct", "Darklight Emitter", "Darklight Matter", "Darklight Source", "Darklight Striker", "Meandering Mushroom", "Mycobiontic Beetle", "Oozing Carcass", "Oozing Corpus", "Rotten Man-Maggot", "Sopping Carcass", "Walking Pillar", "Wandering Pillar"},
        Rewards = {
          {Type = RewardType.Points, BaseValue = 9},
          {Type = RewardType.Ranking, BaseValue = 11},
          {Type = RewardType.Experience, BaseValue = 41480000},
          {Type = RewardType.Gold, BaseValue = 115000},
          {Type = RewardType.Item, Id = 27990, Amount = 1}, 
          {Type = RewardType.Item, Id = 26780, Amount = 3},
          {Type = RewardType.Item, Id = 26778, Amount = 2},
          {Type = RewardType.Item, Id = 26779, Amount = 5}, 
        }
      },
      {
        RaceName = "Soulwar Bosses",
        Level = 500,
        Monsters = {"Goshnar's Cruelty", "Goshnar's Greed", "Goshnar's Hatred", "Goshnar's Malice", "Goshnar's Spite", "Goshnar's Megalomania"},
        Rewards = {
          {Type = RewardType.Points, BaseValue = 30},
          {Type = RewardType.Ranking, BaseValue = 50},
          {Type = RewardType.Experience, BaseValue = 300000000},
          {Type = RewardType.Gold, BaseValue = 500000},
          {Type = RewardType.Item, Id = 27353, Amount = 2}, 
          {Type = RewardType.Item, Id = 27344, Amount = 4}, 
          {Type = RewardType.Item, Id = 27346, Amount = 1}, 
          {Type = RewardType.Item, Id = 27345, Amount = 1}, 
          {Type = RewardType.Item, Id = 26779, Amount = 15}, 
        }
      },
      {
        RaceName = "Rotten Bosses",
        Level = 500,
        Monsters = {"Chagorz", "Ichgahal", "Murcion", "Vemiath", "Bakragore"},
        Rewards = {
          {Type = RewardType.Points, BaseValue = 40},
          {Type = RewardType.Ranking, BaseValue = 70},
          {Type = RewardType.Experience, BaseValue = 350000000},
          {Type = RewardType.Gold, BaseValue = 600000},
          {Type = RewardType.Item, Id = 27446, Amount = 2}, 
          {Type = RewardType.Item, Id = 26779, Amount = 30}, 
        }
      },
      {
        RaceName = "Angels",
        Level = 500,
        Monsters = {"Aeliana", "Archon", "Baalzebul", "Lyrael", "Nyxion", "Oroniel", "Sagittarius", "Seraphiel"},
        Rewards = {
          {Type = RewardType.Points, BaseValue = 10},
          {Type = RewardType.Ranking, BaseValue = 15},
          {Type = RewardType.Experience, BaseValue = 34000000},
          {Type = RewardType.Gold, BaseValue = 180000},
          {Type = RewardType.Item, Id = 27703, Amount = 3}, 
          {Type = RewardType.Item, Id = 27704, Amount = 2}, 
          {Type = RewardType.Item, Id = 27705, Amount = 1},
        }
      },
      {
        RaceName = "Claw Crocodiles",
        Level = 500,
        Monsters = {"Fangclaw", "Lurkskin", "Scalebreaker", "Slinkhide", "Sludgejaw"},
        Rewards = {
          {Type = RewardType.Points, BaseValue = 10},
          {Type = RewardType.Ranking, BaseValue = 15},
          {Type = RewardType.Experience, BaseValue = 34000000},
          {Type = RewardType.Gold, BaseValue = 180000},
          {Type = RewardType.Item, Id = 27633, Amount = 1}, 
        }
      },
      {
        RaceName = "Evicted Dragons",
        Level = 500,
        Monsters = {"Cinderclaw", "Emerald Mage", "Ruby Archer", "Scaledrake", "Sapphire Warrior"},
        Rewards = {
          {Type = RewardType.Points, BaseValue = 10},
          {Type = RewardType.Ranking, BaseValue = 15},
          {Type = RewardType.Experience, BaseValue = 34000000},
          {Type = RewardType.Gold, BaseValue = 180000},
          {Type = RewardType.Item, Id = 27699, Amount = 2}, 
        }
      },
      {
        RaceName = "Giants",
        Level = 500,
        Monsters = {"Bonecleaver", "Fleshcarver", "Fleshrend", "Mauler", "Grothar", "Grugnor", "Krag'lok", "Krulmash", "Mok'gosh", "Thokkar"},
        Rewards = {
          {Type = RewardType.Points, BaseValue = 10},
          {Type = RewardType.Ranking, BaseValue = 15},
          {Type = RewardType.Experience, BaseValue = 34000000},
          {Type = RewardType.Gold, BaseValue = 180000},
          {Type = RewardType.Item, Id = 27803, Amount = 1}, 
          {Type = RewardType.Item, Id = 27843, Amount = 1}, 
        }
      },
      {
        RaceName = "Orcs",
        Level = 500,
        Monsters = {"Blackblade", "Blightbearer", "Gorthak", "Malevolent", "Shadowreaper", "Urzog"},
        Rewards = {
          {Type = RewardType.Points, BaseValue = 10},
          {Type = RewardType.Ranking, BaseValue = 15},
          {Type = RewardType.Experience, BaseValue = 34000000},
          {Type = RewardType.Gold, BaseValue = 180000},
          {Type = RewardType.Item, Id = 27807, Amount = 1}, 
          {Type = RewardType.Item, Id = 27846, Amount = 1}, 
        }
      },
      {
        RaceName = "Skeletons",
        Level = 500,
        Monsters = {"Bonelich", "Deathrattle", "Doombone", "Grimbone", "Shadow Reaper", "Skullshade", "Tombwraith"},
        Rewards = {
          {Type = RewardType.Points, BaseValue = 10},
          {Type = RewardType.Ranking, BaseValue = 15},
          {Type = RewardType.Experience, BaseValue = 34000000},
          {Type = RewardType.Gold, BaseValue = 180000},
          {Type = RewardType.Item, Id = 27834, Amount = 1}, 
          {Type = RewardType.Item, Id = 27867, Amount = 1}, 
        }
      },
    }
  }
  
  local Cache = {}
  
  local StartupEvent = GlobalEvent("TasksStartUp")
  
  function StartupEvent.onStartup()
    Cache.Ranks = {}
    local ordered = {}
    for key, _ in pairs(Config.Ranks) do
      table.insert(ordered, key)
    end
    table.sort(ordered)
    
    local to = ordered[1] - 1
    for k = 0, to do
      Cache.Ranks[k] = Config.Ranks[ordered[1]]
    end
  
    for i = 1, #ordered do
      local from = ordered[i]
      local to = i == #ordered and ordered[i] or ordered[i + 1] - 1
      for k = from, to do
        Cache.Ranks[k] = Config.Ranks[from]
      end
      Cache.LastRank = from
    end
  
    Cache.Tasks = {}
    for id, task in ipairs(Config.Tasks) do
      for _, name in ipairs(task.Monsters) do
        Cache.Tasks[name] = id
      end
    end
    
    for _, task in ipairs(Config.Tasks) do
      if not task.Outfits then
        task.Outfits = {}
        for _, monster in ipairs(task.Monsters) do
          local monsterType = MonsterType(monster)
          if not monsterType then
            print("[Error] Tasks: Monster " .. monster .. " not found!")
          else
            table.insert(task.Outfits, monsterType:getOutfitOTC())
          end
        end
      end
    end
  end
  
  local LoginEvent = CreatureEvent("TasksLogin")
  
  function LoginEvent.onLogin(player)
    player:registerEvent("TasksExtended")
    player:registerEvent("TasksKill")
    player:sendTasksData()
    return true
  end
  
  local ExtendedEvent = CreatureEvent("TasksExtended")
  
  function ExtendedEvent.onExtendedOpcode(player, opcode, buffer)
    if opcode == Config.TasksOpCode then
      local status, json_data =
        pcall(
        function()
          return json.decode(buffer)
        end
      )
      if not status then
        return false
      end
  
      local action = json_data.action
      local data = json_data.data
  
      if action == "start" then
        player:startNewTask(data.taskId, data.kills)
      elseif action == "cancel" then
        player:cancelTask(data)
      end
    end
    return true
  end
  
  function Player:openTasksList()
    self:sendExtendedOpcode(Config.TasksOpCode, json.encode({action = "open"}))
  end
  
  function Player:closeTasksList()
    self:sendExtendedOpcode(Config.TasksOpCode, json.encode({action = "close"}))
  end
  
  function Player:sendTasksData()
    -- #region Send config
    local config = {
      kills = Config.RequiredKills,
      bonus = Config.KillsForBonus,
      range = Config.RecommendedLevelRange,
      points = Config.PointsIncrease,
      exp = Config.ExperienceIncrease,
      gold = Config.GoldIncrease
    }
    self:sendExtendedOpcode(Config.TasksOpCode, json.encode({action = "config", data = config}))
    -- #endregion
  
    -- #region Send tasks list
    local tasks = {}
    for _, task in ipairs(Config.Tasks) do
      local taskData = {
        name = task.RaceName,
        lvl = task.Level,
        mobs = task.Monsters,
        outfits = task.Outfits,
        rewards = {}
      }
  
      for _, reward in ipairs(task.Rewards) do
        if reward.Type == RewardType.Points or reward.Type == RewardType.Experience or reward.Type == RewardType.Gold or reward.Type == RewardType.Ranking  then
          table.insert(taskData.rewards, {type = reward.Type, value = reward.BaseValue})
        elseif reward.Type == RewardType.Item then
          table.insert(taskData.rewards, {type = reward.Type, name = ItemType(reward.Id):getName(), amount = reward.Amount})
        elseif reward.Type == RewardType.Storage or reward.Type == RewardType.Teleport then
          table.insert(taskData.rewards, {type = reward.Type, desc = reward.Description})
        end
      end
  
      table.insert(tasks, taskData)
    end
  
    local buffer = json.encode({action = "tasks", data = tasks})
    local s = {}
    for i = 1, #buffer, 8191 do
      s[#s + 1] = buffer:sub(i, i + 8191 - 1)
    end
    if #s == 1 then
      self:sendExtendedOpcode(Config.TasksOpCode, buffer)
    else
      self:sendExtendedOpcode(Config.TasksOpCode, "S" .. s[1])
      for i = 2, #s - 1 do
        self:sendExtendedOpcode(Config.TasksOpCode, "P" .. s[i])
      end
      self:sendExtendedOpcode(Config.TasksOpCode, "E" .. s[#s])
    end
    -- #endregion
  
    -- #region Send active tasks
    local active = {}
    for slot = 1, Config.ActiveTasksLimit do
      local taskId = self:getTaskIdBySlot(slot)
      if taskId ~= 0 then
        local requiredKills = self:getTaskRequiredKills(slot)
        local kills = self:getTaskKills(slot)
        table.insert(
          active,
          {
            kills = kills,
            required = requiredKills,
            slot = slot,
            taskId = taskId
          }
        )
      end
    end
    self:sendExtendedOpcode(Config.TasksOpCode, json.encode({action = "active", data = active}))
    -- #endregion
  
    self:sendTasksPointsUpdate()
    self:sendTasksRankingUpdate()
  end
  
  function Player:sendTaskUpdate(taskId)
    local update = {}
  
    local slot = self:getSlotByTaskId(taskId)
    if not slot then
      update.status = 2 -- abandoned
      update.taskId = taskId
    else
      local requiredKills = self:getTaskRequiredKills(slot)
      local kills = self:getTaskKills(slot)
  
      if kills < requiredKills then
        update.status = 1 -- in progress
        update.kills = kills
        update.required = requiredKills
        update.taskId = taskId
      else
        update.status = 2 -- finished
        update.taskId = taskId
      end
    end
  
    self:sendExtendedOpcode(Config.TasksOpCode, json.encode({action = "update", data = update}))
  end
  
  function Player:sendTasksPointsUpdate()
    self:sendExtendedOpcode(Config.TasksOpCode, json.encode({action = "points", data = self:getTasksPoints()}))
  end

  function Player:sendTasksRankingUpdate()
    local rank = self:getRankTask()
    local data = { rank = rank }
    self:sendExtendedOpcode(Config.TasksOpCode, json.encode({ action = "ranking", data = data }))
end

  
  
  function Player:startNewTask(taskId, kills)
    local task = Config.Tasks[taskId]
    if task then
      local slot = self:getFreeTaskSlot()
      if not slot then
        self:popupFYI("You can't accept more tasks.")
        return
      end
  
      if self:getSlotByTaskId(taskId) then
        self:popupFYI("You already have this task active.")
        return
      end
  
      kills = math.max(kills, Config.RequiredKills.Min)
      kills = math.min(kills, Config.RequiredKills.Max)
  
      self:setStorageValue(Config.StorageSlot + slot, taskId)
      self:setStorageValue(Config.StorageKillsCurrent + slot, 0)
      self:setStorageValue(Config.StorageKillsSelected + slot, kills)
  
      self:sendTaskUpdate(taskId)
    end
  end
  
  function Player:cancelTask(taskId)
    local task = Config.Tasks[taskId]
    if task then
      local slot = self:getSlotByTaskId(taskId)
      if slot then
        self:setStorageValue(Config.StorageSlot + slot, -1)
        self:setStorageValue(Config.StorageKillsCurrent + slot, -1)
        self:setStorageValue(Config.StorageKillsSelected + slot, -1)
        self:sendTaskUpdate(taskId)
      end
    end
  end
  
  local KillEvent = CreatureEvent("TasksKill")
  
  function KillEvent.onKill(player, target)
    if not target or target:isPlayer() or target:getMaster() then
      return true
    end
  
    local taskId = Cache.Tasks[target:getName()]
    if taskId then
      local task = Config.Tasks[taskId]
      if task then
        local party = player:getParty()
        if party and Config.Party.Enabled then
          local members = party:getMembers()
          table.insert(members, party:getLeader())
  
          local killerPos = player:getPosition()
          for _, member in ipairs(members) do
            if Config.Party.Range > 0 then
              if member:getPosition():getDistance(killerPos) <= Config.Party.Range then
                member:taskProcessKill(taskId)
              end
            else
              member:taskProcessKill(taskId)
            end
          end
        else
          player:taskProcessKill(taskId)
        end
      end
    end
  
    return true
  end
  
  function Player:taskProcessKill(taskId)
    local slot = self:getSlotByTaskId(taskId)
    if slot then
      self:addTaskKill(slot)
  
      local requiredKills = self:getTaskRequiredKills(slot)
      local kills = self:getTaskKills(slot)
      if kills >= requiredKills then
        self:setStorageValue(Config.StorageSlot + slot, -1)
        self:setStorageValue(Config.StorageKillsCurrent + slot, -1)
        self:setStorageValue(Config.StorageKillsSelected + slot, -1)
  
        local task = Config.Tasks[taskId]
        for _, reward in ipairs(task.Rewards) do
          self:addTaskReward(reward, requiredKills)
        end
        self:sendTextMessage(MESSAGE_STATUS_CONSOLE_ORANGE, "[Task Status] You have finished " .. task.RaceName .. " task!")
      end
      self:sendTaskUpdate(taskId)
    end
  end
  
  function Player:addTaskReward(reward, requiredKills)
    local bonus = math.floor((math.max(0, requiredKills - Config.KillsForBonus) / Config.KillsForBonus) + 0.5)
    if reward.Type == RewardType.Points then
      bonus = bonus * Config.PointsIncrease
      local value = reward.BaseValue + math.floor((reward.BaseValue * bonus / 100) + 0.5)
      self:addTasksPoints(value)
      self:sendTextMessage(
        MESSAGE_STATUS_CONSOLE_ORANGE,
        "[Ancestral Task Reward] Tasks Points +" .. value .. ", you have now " .. self:getTasksPoints() .. " ancestral tasks points."
      )
    elseif reward.Type == RewardType.Experience then
      bonus = bonus * Config.ExperienceIncrease
      local value = reward.BaseValue + math.floor((reward.BaseValue * bonus / 100) + 0.5)
      self:addExperience(value, true)
      self:sendTextMessage(MESSAGE_STATUS_CONSOLE_ORANGE, "[Ancestral Task Reward] Experience +" .. value .. ".")
    elseif reward.Type == RewardType.Gold then
      bonus = bonus * Config.GoldIncrease
      local value = reward.BaseValue + math.floor((reward.BaseValue * bonus / 100) + 0.5)
      self:setBankBalance(self:getBankBalance() + value)
      self:sendTextMessage(MESSAGE_STATUS_CONSOLE_ORANGE, "[Ancestral Task Reward] " .. value .. " gold added to your bank.")
    elseif reward.Type == RewardType.Item then
      local itemType = ItemType(reward.Id)
      local itemWeight = itemType:getWeight(reward.Amount)
      local playerCap = self:getFreeCapacity()
      if playerCap >= itemWeight then
        self:addItem(reward.Id, reward.Amount)
        self:sendTextMessage(MESSAGE_STATUS_CONSOLE_ORANGE, "[Ancestral Task Reward] " .. reward.Amount .. "x " .. itemType:getName() .. ".")
      else
        self:getStoreInbox():addItem(reward.Id, reward.Amount)
        self:sendTextMessage(
          MESSAGE_STATUS_CONSOLE_ORANGE,
          "[Ancestral Task Reward] Low on capacity, sending " .. reward.Amount .. "x " .. itemType:getName() .. " to your Purse."
        )
      end
    elseif reward.Type == RewardType.Storage then
      if self:getStorageValue(reward.Key) ~= reward.Value then
        self:setStorageValue(reward.Key, reward.Value)
        self:sendTextMessage(MESSAGE_STATUS_CONSOLE_ORANGE, '[Ancestral Task Reward] You have been granted "' .. reward.Description .. '".')
      end
    elseif reward.Type == RewardType.Teleport then
      self:teleportTo(reward.Position)
      self:sendTextMessage(MESSAGE_STATUS_CONSOLE_ORANGE, '[Ancestral Task Reward] You have been teleported to "' .. reward.Description .. '".')
    elseif reward.Type == RewardType.Ranking then
        local points = reward.BaseValue
        self:addTaskRankAncestral(points)
        self:sendTextMessage(
          MESSAGE_STATUS_CONSOLE_ORANGE,
          "[Ancestral Task Reward] Ranking Points +" .. points .. ", you have now " .. self:getTaskRankAncestral() .. " ranking points."
        )
    end
  end
  
  function Player:getTaskIdBySlot(slot)
    return math.max(0, self:getStorageValue(Config.StorageSlot + slot))
  end
  
  function Player:getSlotByTaskId(taskId)
    for i = 1, Config.ActiveTasksLimit do
      local slotTask = self:getTaskIdBySlot(i)
      if taskId == slotTask then
        return i
      end
    end
  
    return nil
  end
  
  function Player:getTaskKills(slot)
    return math.max(0, self:getStorageValue(Config.StorageKillsCurrent + slot))
  end
  
  function Player:getTaskRequiredKills(slot)
    return math.max(0, self:getStorageValue(Config.StorageKillsSelected + slot))
  end
  
  function Player:addTaskKill(slot)
    self:setStorageValue(Config.StorageKillsCurrent + slot, self:getTaskKills(slot) + 1)
  end
  
  function Player:addTasksPoints(points)
    local accountId = self:getGuid() 
    db.query(string.format("UPDATE players SET ancestral_points = ancestral_points + %d WHERE id = %d", points, accountId))
    self:sendTasksPointsUpdate()
  end

  local ranks_task = {
    [{1, 40}] = "Rookie", 
    [{41, 100}] = "Bronze",
    [{101, 250}] = "Silver",
    [{251, 470}] = "Gold",
    [{471, 770}] = "Platinum",
    [{771, 1220}] = "Diamond",
    [{1221, 1820}] = "Ancestral",
    [{1821, 2820}] = "Mystic",
    [{2821, 4320}] = "Abyssal",
    [{4321, 6320}] = "Ascending",
    [{6321, 9999}] = "Chaos",
    [{10000, math.huge}] = "Awakening"
    }

  function Player:addTaskRankAncestral(count)
    local accountId = self:getGuid() 

    db.query(string.format("UPDATE players SET ancestral_rank_points = ancestral_rank_points + %d WHERE id = %d", count, accountId))
    self:sendTasksRankingUpdate()
end

function Player:getTaskRankAncestral()
    local accountId = self:getGuid() 
    local ancestralPoints = 0
    local resultId = db.storeQuery("SELECT `ancestral_rank_points` FROM `players` WHERE `id` = " .. accountId)
    if resultId ~= false then
        ancestralPoints = result.getDataInt(resultId, "ancestral_rank_points")
        result.free(resultId)
    end
    return ancestralPoints
 end


 function Player:getRankTask()
    local ancestralPointsRank = self:getTaskRankAncestral()
    local ret
    for _, z in pairs(ranks_task) do
        if ancestralPointsRank >= _[1] and ancestralPointsRank <= _[2] then
            ret = z
        end
    end
    return ret
end
  
  function Player:getTasksPoints()
    local points = 0
      local accountId = self:getGuid() 
      local resultId = db.storeQuery("SELECT `ancestral_points` FROM `players` WHERE `id` = " .. accountId)
      if resultId ~= false then
          points = result.getDataInt(resultId, "ancestral_points")
          result.free(resultId)
      end
      return points
  end
  
  function Player:getTasksRank()
    local rank = self:getTasksPoints()
    if rank >= Cache.LastRank then
      return Cache.Ranks[Cache.LastRank]
    end
    self:sendTasksRankingUpdate()
    return Cache.Ranks[rank]
  end
  
  function Player:getFreeTaskSlot()
    for i = 1, Config.ActiveTasksLimit do
      if self:getTaskIdBySlot(i) == 0 then
        return i
      end
    end
  
    return nil
  end
  
  function MonsterType:getOutfitOTC()
    local outfit = self:getOutfit()
    return {
      type = outfit.lookType,
      head = outfit.lookHead,
      body = outfit.lookBody,
      legs = outfit.lookLegs,
      feet = outfit.lookFeet
    }
  end
  
  LoginEvent:type("login")
  LoginEvent:register()
  ExtendedEvent:type("extendedopcode")
  ExtendedEvent:register()
  KillEvent:type("kill")
  KillEvent:register()
  StartupEvent:type("startup")
  StartupEvent:register()
  