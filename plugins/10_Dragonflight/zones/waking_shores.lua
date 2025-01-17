-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local Class = ns.Class
local L = ns.locale
local Map = ns.Map

local Collectible = ns.node.Collectible
local Disturbeddirt = ns.node.Disturbeddirt
local Dragonglyph = ns.node.Dragonglyph
local Flag = ns.node.Flag
local Fragment = ns.node.Fragment
local PetBattle = ns.node.PetBattle
local PM = ns.node.ProfessionMasters
local PT = ns.node.ProfessionTreasures
local Rare = ns.node.Rare
local Scoutpack = ns.node.Scoutpack
local Treasure = ns.node.Treasure

local Achievement = ns.reward.Achievement
local Item = ns.reward.Item
local Pet = ns.reward.Pet
local Toy = ns.reward.Toy
local Transmog = ns.reward.Transmog

local Path = ns.poi.Path
local POI = ns.poi.POI

local DC = ns.DRAGON_CUSTOMIZATIONS

-------------------------------------------------------------------------------

local map = Map({id = 2022, settings = true})

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

map.nodes[63695509] = Rare({ -- required 67030
    id = 193132,
    quest = 69838,
    note = L['in_cave'],
    rewards = {Achievement({id = 16676, criteria = 56045})}
}) -- Amethyzar the Glittering

map.nodes[58634021] = Rare({
    id = 187945,
    quest = 73865,
    rewards = {
        Achievement({id = 16676, criteria = 56035}),
        Transmog({item = 200245, slot = L['2h_mace']}), -- Leviathan Lure
        Item({item = 197098, quest = 69299}), -- Highland Drake: Finned Back
        Item({item = 197001, quest = 69201}) -- Cliffside Wylderdrake: Finned Cheek
    }
}) -- Anhydros the Tidetaker

map.nodes[54517174] = Rare({ -- review -- required 67030
    id = 193135,
    quest = 69839,
    rewards = {Achievement({id = 16676, criteria = 56041})}
}) -- Azra's Prized Peony

map.nodes[28635882] = Rare({ -- review
    id = 190986,
    quest = 74040,
    rewards = {Achievement({id = 16676, criteria = 56059})}
}) -- Battlehorn Pyrhus

map.nodes[52916529] = Rare({
    id = 192738,
    quest = 73890,
    note = L['brundin_the_dragonbane_note'],
    rewards = {
        Achievement({id = 16676, criteria = 56038}),
        Transmog({item = 200133, slot = L['fist']}) -- Volcanic Chakram
    },
    pois = {
        Path({
            52916529, 53126596, 52996668, 51666681, 49796541, 48726550,
            48326651, 47886773, 47946932, 47937123, 46887338, 46507372,
            45637384, 43397311, 42667232, 42037065, 41256910, 40906872,
            39516811, 35897202, 33547067, 33146983
        })
    }
}) -- Brundin the Dragonbane (Qalashi War Party)

map.nodes[26847642] = Rare({
    id = 193198,
    quest = 72127, -- 73075
    rewards = {
        Achievement({id = 16676, criteria = 56050}),
        Transmog({item = 200757, slot = L['plate']}), -- Qalashi War-Helm
        Transmog({item = 200286, slot = L['polearm']}), -- Dragonbane Lance
        Transmog({item = 200169, slot = L['1h_mace']}), -- Protector's Molten Cudgel
        Item({item = 197019, quest = 69219}) -- Cliffside Wylderdrake: Blunt Spiked Tail
    }
}) -- Captain Lancer

map.nodes[30575625] = Rare({
    id = 186783,
    quest = 74042,
    rewards = {
        Achievement({id = 16676, criteria = 56056}),
        Transmog({item = 200757, slot = L['plate']})
    }
    -- pois = {
    --     Path({
    --         26285788, 26545827, 25985955, 26315995, 26585932, 27316007,
    --         27396026, 29306229
    --     })
    -- }
}) -- Cauldronbearer Blakor

map.nodes[29935074] = Rare({
    id = 190991,
    quest = 74043,
    note = L['in_cave'],
    rewards = {
        Achievement({id = 16676, criteria = 56060}),
        Item({item = 196991, quest = 69191}) -- Cliffside Wylderdrake: Black Horns
    }
}) -- Char

map.nodes[31785474] = Rare({ -- review -- required 67030
    id = 190985,
    quest = 73074,
    note = format(L['obsidian_citadel_rare_note'], 20, '{npc:187447}'),
    rewards = {
        Achievement({id = 16676, criteria = 56053}),
        Achievement({id = 16496, criteria = 56053}) -- Obsidian Champion
    },
    pois = {POI({27735660})} -- Sabellian
}) -- Death's Shadow

map.nodes[60204535] = Rare({
    id = 193217,
    quest = 73874,
    rewards = {
        Achievement({id = 16676, criteria = 56039}),
        Achievement({id = 16446, criteria = 5}),
        Transmog({item = 200219, slot = L['cloak']}) -- Dangerous Drapery
    },
    pois = {
        Path({
            47267713, 48927495, 50076925, 50996592, 51946323, 52556211,
            53726071, 54705959, 55135843, 55195735, 54725544, 53785350,
            52485131, 51054858, 49934614, 49384420, 49114158, 49643971,
            50543803, 52013559, 53703482, 55473549, 58333718, 59883845,
            60373937, 60524059, 60414206, 60204535, 59984844, 60105101,
            60435274, 61375479, 63175769, 64575919, 66316022, 67826035,
            68615989, 69305901, 69425829, 68855485, 68285247, 67565009,
            67344710, 67924499, 68794338, 69324289, 70294270, 71674307,
            72304359, 73174490, 73394565, 73214666, 72874714, 71474819,
            70444873, 69284969, 68655076, 68265244
        })
    }
}) -- Drakewing

map.nodes[21626478] = Rare({ -- review
    id = 193134,
    quest = 72128,
    rewards = {Achievement({id = 16676, criteria = 56049})}
}) -- Enkine the Voracious

map.nodes[33127632] = Rare({
    id = 193154,
    quest = 72130, -- 73073
    rewards = {
        Achievement({id = 16676, criteria = 56048}),
        Achievement({id = 16446, criteria = 8}),
        Item({item = 200858, note = L['trinket']}), -- Plume of the Forgotten
        Item({item = 200563, note = L['trinket']}), -- Primal Ritual Shell
        Transmog({item = 200174, slot = L['leather']}) -- Bonesigil Shoulderguards
    }
}) -- Forgotten Gryphon

map.nodes[52345829] = Rare({ -- review
    id = 196056,
    quest = 70718,
    rewards = {
        Achievement({id = 16676, criteria = 56033}),
        Transmog({item = 200245, slot = L['2h_mace']}), -- Leviathan Lure
        Item({item = 197098, quest = 69299}), -- Highland Drake: Finned Back
        Item({item = 197001, quest = 69201}) -- Cliffside Wylderdrake: Finned Cheek
    }
}) -- Gushgut the Beaksinker

map.nodes[43007465] = Rare({ -- review
    id = 193263,
    quest = 73880,
    rewards = {Achievement({id = 16676, criteria = 56037})}
}) -- Helmet Missingway

map.nodes[34618275] = Rare({
    id = 193266,
    quest = 74065,
    note = L['lepidoralia_note'],
    rewards = {
        Achievement({id = 16676, criteria = 56055}),
        Transmog({item = 200232, slot = L['warglaive']}) -- Raptor Talonglaive
    }
}) -- Lepidoralia the Resplendent

map.nodes[39596353] = Rare({ -- review -- required 67030
    id = 186827,
    quest = 70979,
    rewards = {Achievement({id = 16676, criteria = 56046})}
}) -- Magmaton

map.nodes[22207649] = Rare({ -- review -- required 67030
    id = 193152,
    quest = 69848,
    rewards = {Achievement({id = 16676, criteria = 56047})}
}) -- Massive Magmashell

map.nodes[32805248] = Rare({
    id = 187306,
    quest = 74067,
    note = format(L['obsidian_citadel_rare_note'], 10, '{npc:187275}'),
    rewards = {
        Achievement({id = 16676, criteria = 56988}),
        Achievement({id = 16496, criteria = 56988}), -- Obsidian Champion
        Item({item = 200207, note = L['neck']}) -- Petrified Fungal Spores
    },
    pois = {POI({32245246})} -- Igys the Believer
}) -- Morchok

map.nodes[56004592] = Rare({
    id = 193256,
    quest = nil,
    rewards = {
        Achievement({id = 16676, criteria = 56034}),
        Item({item = 200236, note = L['trinket']}), -- Memory of Nulltheria
        Transmog({item = 200310, note = L['cloak']}), -- Stole of the Iron Phantom
        DC.RenewedProtoDrake.ClubTail, --
        DC.RenewedProtoDrake.WhiteHorns, --
        Item({item = 196992, quest = 69192}), -- Cliffside Wylderdrake: Heavy Horns
        Item({item = 196985, quest = 69185}) -- Cliffside Wylderdrake: Horned Jaw
    }
}) -- Nulltheria the Void Gazer

map.nodes[81485082] = Rare({ -- required 67030
    id = 193118,
    quest = 70983,
    rewards = {
        Achievement({id = 16676, criteria = 56043}),
        Item({item = 197022, quest = 69222}) -- Cliffside Wylderdrake: Finned Neck
    },
    pois = {
        Path({
            79185296, 80015374, 80215387, 80445368, 80445260, 80555229,
            81385104, 81485082, 81465042, 81314977, 81254941, 81634857,
            81934819, 82554797, 82644782, 82614742
        }) -- 80415250
    }
}) -- O'nank Shorescour

map.nodes[64676939] = Rare({
    id = 192362,
    quest = 67048, -- 70864 (rare runs away)
    note = L['hidden_hornswog_hoard_note'],
    rewards = {
        Achievement({id = 16676, criteria = 57852}),
        Pet({item = 199916, id = 3365}) -- Roseate Hopper
    },
    pois = {POI({66165529, 39638468, 47728360})}
}) -- Possessive Hornswog

map.nodes[24005896] = Rare({
    id = 193232,
    quest = 74051,
    note = L['obsidian_throne_rare_note'],
    rewards = {
        Achievement({id = 16676, criteria = 56061}),
        Item({item = 197005, quest = 69205}) -- Cliffside Wylderdrake: Horned Nose
    }
}) -- Rasnar the War Ender

map.nodes[30736110] = Rare({
    id = 187598,
    quest = 74052,
    rewards = {Achievement({id = 16676, criteria = 56057})}
}) -- Rohzor Forgesmash

map.nodes[46997332] = Rare({
    id = 193271,
    quest = 70719,
    note = L['in_small_cave'] .. ' ' .. L['shadeslash_note'],
    rewards = {
        Achievement({id = 16676, criteria = 56989}),
        Item({item = 200689, note = L['ring']}) -- Rimetalon Band
    }
}) -- Shadeslash Trakken

map.nodes[23755734] = Rare({ -- review -- required 67030
    id = 189822,
    quest = 74077,
    note = L['obsidian_throne_rare_note'] .. ' ' ..
        format(L['obsidian_citadel_rare_note'], 20, '{npc:187284}'),
    rewards = {
        Achievement({id = 16676, criteria = 56054}),
        Achievement({id = 16496, criteria = 56054}), -- Obsidian Champion
        Transmog({item = 200174, slot = L['leather']}) -- Bonesigil Shoulderguards
    },
    pois = {
        POI({
            27226096, -- Entrance
            26836257 -- Wrathion
        })
    }
}) -- Shas'ith

map.nodes[42892832] = Rare({
    id = 193181,
    quest = 73895,
    rewards = {
        Achievement({id = 16676, criteria = 56036}),
        Transmog({item = 200132, slot = L['dagger']}), -- Skewer's Snout
        Item({item = 197022, quest = 69222}), -- Cliffside Wylderdrake: Finned Neck
        Item({item = 197589, quest = 69793}) -- Windborne Velocidrake: Large Head Fin
    },
    pois = {
        Path({
            47741892, 48481794, 48731762, 48851677, 48681620, 48321588,
            48011600, 47831641, 47761746, 47741892, 47222080, 47242098,
            47102230, 46842285, 46482317, 45862342, 43072780, 42892832,
            42743062, 42533165, 42243219, 40893341, 40363406, 40043547,
            40263915, 40193965, 39734056, 39264098, 38614106, 38324066,
            38143991, 38243859, 38563789, 39213679, 40043547
        })
    }
}) -- Skewersnout

map.nodes[34578950] = Rare({
    id = 193175,
    quest = 72126, -- 74079
    note = L['slurpo_snail_note'],
    rewards = {
        Achievement({id = 16676, criteria = 57003}),
        Transmog({item = 200189, slot = L['plate']}) -- Hydroforged Shell Helm
    },
    pois = {POI({36028984})} -- Entrance
}) -- Slurpo, the Incredible Snail

map.nodes[69486653] = Rare({ -- review -- required 67030
    id = 193120,
    quest = 69668,
    rewards = {
        Achievement({id = 16676, criteria = 56044}),
        Transmog({item = 200209, slot = L['mail']}) -- Firebreather's Cowl
    }
}) -- Smogswog the Firebreather

map.nodes[78514999] = Rare({ -- required 67030
    id = 193228,
    quest = 69874,
    rewards = {Achievement({id = 16676, criteria = 56042})},
    pois = {Path({78825133, 78575081, 78475028, 78514999, 78684964, 78674926})}
}) -- Snappy (Gorjo the Crab Shackler)

map.nodes[45453540] = Rare({
    id = 193148,
    quest = 69841,
    rewards = {
        Achievement({id = 16676, criteria = 56040}),
        Item({item = 197111, quest = 69312}) -- Highland Drake: Maned Head
    }
}) -- Thunderous Matriarch

map.nodes[33525576] = Rare({
    id = 187886,
    quest = 74054,
    note = L['in_small_cave'],
    rewards = {
        Achievement({id = 16676, criteria = 56058}),
        Transmog({item = 200683, slot = L['plate']}), -- Legguards of the Deep Strata
        Item({item = 200563, note = L['trinket']}), -- Primal Ritual Shell
        Item({item = 197624, quest = 69828}) -- Windborne Velocidrake: Club Tail
    }
}) -- Turboris

map.nodes[30025534] = Rare({
    id = 186859,
    quest = 70763, -- 74090
    note = L['worldcarver_atir_note'],
    rewards = {
        Achievement({id = 16676, criteria = 56052}),
        Transmog({item = 200213, slot = L['plate']}), -- Lava-Splattered Breastplate
        Item({item = 200563, note = L['trinket']}) -- Primal Ritual Shell
    }
}) -- Worldcarver A'tir

-------------------------------------------------------------------------------

-- These rares/elites are not part of the adventurer achievement for the zone

map.nodes[77302198] = Rare({
    id = 187111,
    quest = 72835, -- 66076
    note = L['in_small_cave'],
    rewards = {
        Item({item = 197111, quest = 69312}) -- Highland Drake: Maned Head
    },
    pois = {
        POI({77902281}) -- Entrance
    }
}) -- Ancient Hornswog

map.nodes[64173289] = Rare({
    id = 191611,
    quest = 72838, -- 66956
    rewards = {
        Transmog({item = 200169, slot = L['1h_mace']}) -- Protector's Molten Cudgel
    }
}) -- Dragonhunter Igordan

map.nodes[54582137] = Rare({
    id = 195915,
    quest = nil,
    rewards = {
        DC.RenewedProtoDrake.ImpalerHorns, --
        Item({item = 197135, quest = nil}) -- Highland Drake: Toothy Mouth
    }
}) -- Firava the Rekindler

map.nodes[54728225] = Rare({
    id = 187209,
    quest = 72841, -- 66960
    rewards = {
        Transmog({item = 200246, slot = L['staff']}), -- Lost Delving Lamp
        Item({item = 196991, quest = 69191}), -- Cliffside Wylderdrake: Black Horns
        Item({item = 197023, quest = 69223}), -- Cliffside Wylderdrake: Maned Neck
        Toy({item = 200198}) -- Primalist Prison
    }
}) -- Klozicc the Ascended

map.nodes[81133794] = Rare({
    id = 184853,
    quest = 72843, -- 66074
    note = L['in_small_cave'],
    rewards = {
        Item({item = 200445, note = L['neck']}), -- Lucky Hunting Charm
        Transmog({item = 200195, slot = L['plate']}), -- Thunderscale Legguards
        Item({item = 196976, quest = 69176}), -- Cliffside Wylderdrake: Head Mane
        Toy({item = 200249}) -- Mage's Chewed Wand
    },
    pois = {
        POI({81713719}) -- Entrance
    }
}) -- Primal Scythid Queen

map.nodes[60598285] = Rare({
    id = 193171,
    quest = 72850,
    rewards = {
        Transmog({item = 200208, slot = L['cloth']}) -- Cloud Coalescing Handwraps
    }
}) -- Terillod the Devout

-------------------------------------------------------------------------------
---------------------------------- TREASURES ----------------------------------
-------------------------------------------------------------------------------

map.nodes[40454136] = Treasure({ -- required 65537, 70599, 70527
    quest = 70599,
    requires = {
        ns.requirement.Quest(72709), -- Funding a Treasure Hunt
        ns.requirement.Item(199061) -- A Guide to Rare Fish
    },
    note = L['bubble_drifter_note'],
    rewards = {
        Achievement({id = 16297, criteria = 54699}),
        Pet({item = 193852, id = 3269}) -- Azure Frillfish
    }
}) -- Bubble Drifter

map.nodes[69314658] = Treasure({
    quest = 70346,
    note = L['dead_mans_chestplate_note'],
    rewards = {
        Achievement({id = 16297, criteria = 54702}),
        Transmog({item = 202193, slot = L['cosmetic']}) -- Dead Man's Tunic
    }
}) -- Dead Man's Chestplate

map.nodes[58525302] = Treasure({
    quest = 65646,
    note = L['in_waterfall_cave'] .. ' ' .. L['misty_treasure_chest_note'],
    rewards = {
        Achievement({id = 16297, criteria = 55403}),
        Item({item = 202194, note = L['bag']}) -- Misty Satchel
    }
}) -- Misty Treasure Chest

map.nodes[29454699] = Treasure({
    quest = 72020,
    note = L['onyx_gem_cluster_note'],
    requires = {
        ns.requirement.Reputation(2507, 21, true), -- Dragonscale Expedition
        ns.requirement.Quest(70833), -- Rumors of the Jeweled Whelplings
        ns.requirement.Item(200738) -- Onyx Gem Cluster Map
    },
    rewards = {
        Achievement({id = 16297, criteria = 55448}), --
        Item({item = 200867}) -- Glimmering Neltharite Cluster
    },
    pois = {POI({46948289})}
}) -- Onyx Gem Cluster

map.nodes[65804182] = Treasure({
    quest = 70600, -- 70409
    note = L['golden_dragon_goblet_note'],
    requires = {
        ns.requirement.Quest(72709), -- Funding a Treasure Hunt
        ns.requirement.Item(198854) -- Archeologist Artifact Notes
    },
    rewards = {
        Achievement({id = 16297, criteria = 54698}), --
        Toy({item = 202019}) -- Golden Dragon Goblet
    },
    pois = {POI({77992943})}
}) -- Golden Dragon Goblet

map.nodes[61347079] = Treasure({
    quest = 70598,
    note = L['gem_cluster_note'],
    requires = {
        ns.requirement.Reputation(2507, 21, true), -- Dragonscale Expedition
        ns.requirement.Quest(70833), -- Rumors of the Jeweled Whelplings
        ns.requirement.Item(199062) -- Ruby Gem Cluster Map
    },
    rewards = {
        Achievement({id = 16297, criteria = 54713}), --
        Item({item = 200864}) -- Glimmering Alexstraszite Cluster
    }
}) -- Ruby Gem Cluster

map.nodes[48488518] = Treasure({
    quest = 70378,
    note = L['torn_riding_pack_note'],
    rewards = {Achievement({id = 16297, criteria = 54703})}
}) -- Torn Riding Pack

map.nodes[46713121] = Treasure({
    quest = 70345,
    note = L['yennus_kite_note'],
    rewards = {
        Achievement({id = 16297, criteria = 54701}), --
        Toy({item = 202022}) -- Yennu's Kite
    }
}) -- Yennu's Kite

-------------------------------------------------------------------------------

map.nodes[43156737] = Treasure({
    quest = 65965,
    requires = ns.requirement.Item(191122), -- Fullsails Supply Chest Key
    label = L['fullsails_supply_chest'],
    note = L['fullsails_supply_chest_note']
}) -- Fullsails Supply Chest

-------------------------------------------------------------------------------
--------------------------------- BATTLE PETS ---------------------------------
-------------------------------------------------------------------------------

map.nodes[39028289] = PetBattle({
    id = 196264,
    rewards = {
        Achievement({id = 16464, criteria = 55485}), -- Battle on the Dragon Isles
        ns.reward.Spacer(),
        Achievement({id = 16501, criteria = 4, oneline = true}), -- Aquatic
        Achievement({id = 16503, criteria = 4, oneline = true}), -- Beast
        Achievement({id = 16504, criteria = 4, oneline = true}), -- Critter
        Achievement({id = 16505, criteria = 4, oneline = true}), -- Dragon
        Achievement({id = 16506, criteria = 4, oneline = true}), -- Elemental
        Achievement({id = 16507, criteria = 4, oneline = true}), -- Flying
        Achievement({id = 16508, criteria = 4, oneline = true}), -- Humanoid
        Achievement({id = 16509, criteria = 4, oneline = true}), -- Magic
        Achievement({id = 16510, criteria = 4, oneline = true}), -- Mechanical
        Achievement({id = 16511, criteria = 4, oneline = true}) -- Undead
    }
}) -- Haniko

map.nodes[26239233] = PetBattle({
    id = 189376,
    rewards = {
        Achievement({id = 16464, criteria = 55488}), -- Battle on the Dragon Isles
        ns.reward.Spacer(),
        Achievement({id = 16501, criteria = 8, oneline = true}), -- Aquatic
        Achievement({id = 16503, criteria = 8, oneline = true}), -- Beast
        Achievement({id = 16504, criteria = 8, oneline = true}), -- Critter
        Achievement({id = 16505, criteria = 8, oneline = true}), -- Dragon
        Achievement({id = 16506, criteria = 8, oneline = true}), -- Elemental
        Achievement({id = 16507, criteria = 8, oneline = true}), -- Flying
        Achievement({id = 16508, criteria = 8, oneline = true}), -- Humanoid
        Achievement({id = 16509, criteria = 8, oneline = true}), -- Magic
        Achievement({id = 16510, criteria = 8, oneline = true}), -- Mechanical
        Achievement({id = 16511, criteria = 8, oneline = true}) -- Undead
    }
}) -- Swog

-------------------------------------------------------------------------------
----------------------------- PROFESSION TREASURES ----------------------------
-------------------------------------------------------------------------------

map.nodes[22258763] = PT.Blacksmithing({
    id = 201007,
    quest = 70246,
    note = L['pt_smith_ancient_monument_note']
}) -- Ancient Monument

map.nodes[24906970] = PT.Tailoring({
    id = 198702,
    quest = 70304,
    note = L['pt_tailor_itinerant_singed_fabric_note']
}) -- Itinerant Singed Fabric

map.nodes[25107411] = PT.Alchemy({
    id = 198685,
    quest = 70289,
    note = L['pt_alch_well_insulated_mug_note']
}) -- Well-Insulated Mug

map.nodes[33906370] = PT.Jewelcrafting({
    id = 201017,
    quest = 70273,
    note = L['pt_jewel_igneous_gem_note']
}) -- Igneous Gem

map.nodes[34506710] = PT.Blacksmithing({
    id = 201010,
    quest = 70310,
    note = L['pt_smith_qalashi_weapon_diagram_note']
}) -- Qalashi Weapon Diagram

map.nodes[35506430] = PT.Blacksmithing({
    id = 201008,
    quest = 70296,
    note = L['pt_smith_molten_ingot_note']
}) -- Molten Ingot

map.nodes[39008600] = PT.Leatherworking({
    id = 198711,
    quest = nil,
    note = L['pt_leath_poachers_pack_note']
}) -- Poacher's Pack

map.nodes[49097754] = PT.Engineering({
    id = 198789,
    quest = 70275,
    note = L['pt_engi_intact_coil_capacitor_note']
}) -- Intact Coil Capacitor

map.nodes[50404510] = PT.Jewelcrafting({
    id = 198687,
    quest = 70292,
    note = L['pt_jewel_closely_guarded_shiny_note']
}) -- Closely Guarded Shiny

map.nodes[55008100] = PT.Alchemy({
    id = 198663,
    quest = 70274,
    note = L['pt_alch_frostforged_potion_note']
}) -- Frostforged Potion

map.nodes[56004490] = PT.Engineering({
    id = 201014,
    quest = 70270,
    note = L['pt_engi_boomthyr_rocket_note'],
    pois = {POI({55904529, 58134453, 57994435, 57834457})}
}) -- Boomthyr Rocket

map.nodes[56401950] = PT.Blacksmithing({
    id = 198791,
    quest = 70230,
    note = L['pt_smith_glimmer_of_blacksmithing_wisdom_note']
}) -- Glimmer of Blacksmithing Wisdom

map.nodes[57505850] = PT.Enchanting({
    id = 201012,
    quest = 70272,
    note = L['pt_ench_enchanted_debris_note']
}) -- Enchanted Debris

map.nodes[57508360] = PT.Enchanting({
    id = 198798,
    quest = 70320,
    note = L['pt_ench_flashfrozen_scroll_note']
}) -- Flashfrozen Scroll

map.nodes[64302540] = PT.Leatherworking({
    id = 198667,
    quest = nil,
    note = L['pt_leath_spare_djaradin_tools_note']
}) -- Spare Djaradin Tools

map.nodes[65502570] = PT.Blacksmithing({
    id = 201005,
    quest = nil, -- bugged
    note = L['pt_smith_curious_ingots_note']
}) -- Curious Ingots

map.nodes[67875796] = PT.Inscription({
    id = 198704,
    quest = 70306,
    note = L['pt_script_pulsing_earth_rune_note']
}) -- Pulsing Earth Rune

map.nodes[68002680] = PT.Enchanting({
    id = 198675,
    quest = 70283,
    note = L['pt_ench_lava_infused_seed_note']
}) -- Lava-Infused Seed

map.nodes[74703790] = PT.Tailoring({
    id = 198699,
    quest = 70302,
    note = L['pt_tailor_mysterious_banner_note']
}) -- Mysterious Banner

map.nodes[43276663] = PM.Blacksmithing({
    id = 194836,
    quest = nil,
    note = L['pt_smith_grekka_anvilsmash']
}) -- Grekka Anvilsmash -- currently bugged

-------------------------------------------------------------------------------
-------------------------------- DRAGON GLYPHS --------------------------------
-------------------------------------------------------------------------------

map.nodes[57655483] = Dragonglyph({rewards = {Achievement({id = 15991})}}) -- Dragon Glyphs: Crumbling Life Archway
map.nodes[69184623] = Dragonglyph({rewards = {Achievement({id = 16051})}}) -- Dragon Glyphs: Dragonheart Outpost
map.nodes[58097858] = Dragonglyph({rewards = {Achievement({id = 16669})}}) -- Dragon Glyphs: Flashfrost Enclave
map.nodes[74375751] = Dragonglyph({rewards = {Achievement({id = 16668})}}) -- Dragon Glyphs: Life-Binder Observatory Rostrum
map.nodes[52601712] = Dragonglyph({rewards = {Achievement({id = 15990})}}) -- Dragon Glyphs: Life-Binder Observatory Tower
map.nodes[40987191] = Dragonglyph({rewards = {Achievement({id = 15987})}}) -- Dragon Glyphs: Obsidian Bulwark
map.nodes[21915141] = Dragonglyph({rewards = {Achievement({id = 16053})}}) -- Dragon Glyphs: Obsidian Throne
map.nodes[54437422] = Dragonglyph({rewards = {Achievement({id = 15988})}}) -- Dragon Glyphs: Ruby Life Pools
map.nodes[48828664] = Dragonglyph({rewards = {Achievement({id = 16670})}}) -- Dragon Glyphs: Rubyscale Outpost (Ohn'ahran Plains)
map.nodes[73212051] = Dragonglyph({rewards = {Achievement({id = 16052})}}) -- Dragon Glyphs: Scalecracker Peak
map.nodes[75265707] = Dragonglyph({rewards = {Achievement({id = 15985})}}) -- Dragon Glyphs: Skytop Observatory
map.nodes[46395207] = Dragonglyph({rewards = {Achievement({id = 15989})}}) -- Dragon Glyphs: The Overflowing Spring
map.nodes[74943750] = Dragonglyph({rewards = {Achievement({id = 15986})}}) -- Dragon Glyphs: Wingrest Embassy

-------------------------------------------------------------------------------
------------------ DRAGONSCALE EXPEDITION: THE HIGHEST PEAKS ------------------
-------------------------------------------------------------------------------

map.nodes[28714771] = Flag({quest = 70826})
map.nodes[43976294] = Flag({quest = 70825})
map.nodes[54797412] = Flag({quest = 71204})
map.nodes[56024541] = Flag({quest = 70823})
map.nodes[73353884] = Flag({quest = 70824})

-------------------------------------------------------------------------------
---------------------------- FRAGMENTS OF HISTORY -----------------------------
-------------------------------------------------------------------------------

map.nodes[81143040] = Fragment({
    sublabel = L['broken_banding_note'],
    rewards = {
        Achievement({id = 16323, criteria = 55027}),
        Item({item = 198475, quest = 70175})
    }
}) -- Broken Banding

map.nodes[60575787] = Fragment({
    sublabel = L['dislodged_dragoneye_note'],
    rewards = {
        Achievement({id = 16323, criteria = 55025}),
        Item({item = 198626, quest = 70236})
    }
}) -- Dislodged Dragoneye

map.nodes[47238848] = Fragment({
    sublabel = L['finely_carved_wing_note'],
    rewards = {
        Achievement({id = 16323, criteria = 55030}),
        Item({item = 199841, quest = 70789})
    }
}) -- Finely Carved Wing

map.nodes[58246841] = Fragment({
    sublabel = L['tail_fragment_note'],
    rewards = {
        Achievement({id = 16323, criteria = 55026}),
        Item({item = 198543, quest = 70207})
    }
}) -- Tail Fragment

-------------------------------------------------------------------------------
------------------------------- SYMBOLS OF HOPE -------------------------------
-------------------------------------------------------------------------------

local Kite = Class('Kite', Collectible, {
    icon = 133837,
    label = '{npc:198118}',
    group = ns.groups.KITE
})

map.nodes[73193776] = Kite({
    quest = 72096,
    rewards = {Achievement({id = 16584, criteria = 55841})}
})
map.nodes[73035292] = Kite({
    quest = 72097,
    rewards = {Achievement({id = 16584, criteria = 55842})}
})
map.nodes[56735799] = Kite({
    quest = 72098,
    rewards = {Achievement({id = 16584, criteria = 55843})}
})
map.nodes[61698083] = Kite({
    quest = 72099,
    rewards = {Achievement({id = 16584, criteria = 55844})}
})
map.nodes[43556382] = Kite({
    quest = 72100,
    rewards = {Achievement({id = 16584, criteria = 55845})}
})
map.nodes[24048994] = Kite({
    quest = 72101,
    rewards = {Achievement({id = 16584, criteria = 55846})}
})
map.nodes[50275562] = Kite({
    quest = 72102,
    rewards = {Achievement({id = 16584, criteria = 55847})}
})
map.nodes[48863994] = Kite({
    quest = 72104,
    rewards = {Achievement({id = 16584, criteria = 55849})}
})
map.nodes[57124639] = Kite({
    quest = 72103,
    rewards = {Achievement({id = 16584, criteria = 55848})}
})
map.nodes[57011998] = Kite({
    quest = 72105,
    rewards = {Achievement({id = 16584, criteria = 55850})}
})

-------------------------------------------------------------------------------
------------------------------- DISTURBED DIRT --------------------------------
-------------------------------------------------------------------------------

map.nodes[40674138] = Disturbeddirt()
map.nodes[44743555] = Disturbeddirt()
map.nodes[45468064] = Disturbeddirt()
map.nodes[46837960] = Disturbeddirt()
map.nodes[47278699] = Disturbeddirt()
map.nodes[50073813] = Disturbeddirt()
map.nodes[50834912] = Disturbeddirt()
map.nodes[52354997] = Disturbeddirt()
map.nodes[54398542] = Disturbeddirt()
map.nodes[54895103] = Disturbeddirt()
map.nodes[57548174] = Disturbeddirt()
map.nodes[57858225] = Disturbeddirt()
map.nodes[58124968] = Disturbeddirt()
map.nodes[61815501] = Disturbeddirt()
map.nodes[70746975] = Disturbeddirt()
map.nodes[71863677] = Disturbeddirt()
map.nodes[75580798] = Disturbeddirt()
map.nodes[78502992] = Disturbeddirt()

-------------------------------------------------------------------------------
-------------------------- EXPEDITION SCOUT'S PACKS ---------------------------
-------------------------------------------------------------------------------

map.nodes[26628764] = Scoutpack()
map.nodes[37859241] = Scoutpack()
map.nodes[38139017] = Scoutpack()
map.nodes[41256689] = Scoutpack()
map.nodes[43345237] = Scoutpack()
map.nodes[43506130] = Scoutpack({note = L['in_small_cave']})
map.nodes[44495926] = Scoutpack()
map.nodes[45663986] = Scoutpack()
map.nodes[46244006] = Scoutpack()
map.nodes[47164139] = Scoutpack()
map.nodes[47383898] = Scoutpack()
map.nodes[48134457] = Scoutpack()
map.nodes[51668253] = Scoutpack()
map.nodes[51824744] = Scoutpack()
map.nodes[52745025] = Scoutpack()
map.nodes[55887676] = Scoutpack()
map.nodes[56857953] = Scoutpack()
map.nodes[58395561] = Scoutpack()
map.nodes[59145368] = Scoutpack()
map.nodes[61886605] = Scoutpack()
map.nodes[66505198] = Scoutpack()
map.nodes[68225004] = Scoutpack()
map.nodes[82055012] = Scoutpack()

-------------------------------------------------------------------------------
--------------------------------- DRAGONRACES ---------------------------------
-------------------------------------------------------------------------------

map.nodes[63317090] = ns.node.Dragonrace({
    label = '{quest:66679}',
    normal = {2042, 66, 64},
    advanced = {2044, 57, 52},
    rewards = {
        Achievement({id = 15915, criteria = 1, oneline = true}), -- normal bronze
        Achievement({id = 15916, criteria = 1, oneline = true}), -- normal silver
        Achievement({id = 15917, criteria = 1, oneline = true}), -- normal gold
        Achievement({id = 15927, criteria = 1, oneline = true}), -- advanced bronze
        Achievement({id = 15928, criteria = 1, oneline = true}), -- advanced silver
        Achievement({id = 15929, criteria = 1, oneline = true}) -- advanced gold
    }
}) -- Ruby Lifeshrine Loop

map.nodes[47018558] = ns.node.Dragonrace({
    label = '{quest:66721}',
    normal = {2048, 45, 43},
    advanced = {2049, 45, 40},
    rewards = {
        Achievement({id = 15915, criteria = 2, oneline = true}), -- normal bronze
        Achievement({id = 15916, criteria = 2, oneline = true}), -- normal silver
        Achievement({id = 15917, criteria = 2, oneline = true}), -- normal gold
        Achievement({id = 15927, criteria = 2, oneline = true}), -- advanced bronze
        Achievement({id = 15928, criteria = 2, oneline = true}), -- advanced silver
        Achievement({id = 15929, criteria = 2, oneline = true}) -- advanced gold
    }
}) -- Wild Preserve Slalom

map.nodes[41986729] = ns.node.Dragonrace({
    label = '{quest:66727}',
    normal = {2052, 53, 47},
    advanced = {2053, 49, 44},
    rewards = {
        Achievement({id = 15915, criteria = 3, oneline = true}), -- normal bronze
        Achievement({id = 15916, criteria = 3, oneline = true}), -- normal silver
        Achievement({id = 15917, criteria = 3, oneline = true}), -- normal gold
        Achievement({id = 15927, criteria = 3, oneline = true}), -- advanced bronze
        Achievement({id = 15928, criteria = 3, oneline = true}), -- advanced silver
        Achievement({id = 15929, criteria = 3, oneline = true}) -- advanced gold
    }
}) -- Emberflow Flight

map.nodes[23268430] = ns.node.Dragonrace({
    label = '{quest:66732}',
    normal = {2054, 56, 48},
    advanced = {2055, 50, 45},
    rewards = {
        Achievement({id = 15915, criteria = 4, oneline = true}), -- normal bronze
        Achievement({id = 15916, criteria = 4, oneline = true}), -- normal silver
        Achievement({id = 15917, criteria = 4, oneline = true}), -- normal gold
        Achievement({id = 15927, criteria = 4, oneline = true}), -- advanced bronze
        Achievement({id = 15928, criteria = 4, oneline = true}), -- advanced silver
        Achievement({id = 15929, criteria = 4, oneline = true}) -- advanced gold
    }
}) -- Apex Canopy River Run

map.nodes[55464113] = ns.node.Dragonrace({
    label = '{quest:66777}',
    normal = {2056, 48, 43},
    advanced = {2057, 45, 40},
    rewards = {
        Achievement({id = 15915, criteria = 5, oneline = true}), -- normal bronze
        Achievement({id = 15916, criteria = 5, oneline = true}), -- normal silver
        Achievement({id = 15917, criteria = 5, oneline = true}), -- normal gold
        Achievement({id = 15927, criteria = 5, oneline = true}), -- advanced bronze
        Achievement({id = 15928, criteria = 5, oneline = true}), -- advanced silver
        Achievement({id = 15929, criteria = 5, oneline = true}) -- advanced gold
    }
}) -- Uktulut Coaster

map.nodes[73203393] = ns.node.Dragonrace({
    label = '{quest:66786}',
    normal = {2058, 56, 53},
    advanced = {2059, 58, 53},
    rewards = {
        Achievement({id = 15915, criteria = 6, oneline = true}), -- normal bronze
        Achievement({id = 15916, criteria = 6, oneline = true}), -- normal silver
        Achievement({id = 15917, criteria = 6, oneline = true}), -- normal gold
        Achievement({id = 15927, criteria = 6, oneline = true}), -- advanced bronze
        Achievement({id = 15928, criteria = 6, oneline = true}), -- advanced silver
        Achievement({id = 15929, criteria = 6, oneline = true}) -- advanced gold
    }
}) -- Wingrest Roundabout

map.nodes[62777400] = ns.node.Dragonrace({
    label = '{quest:66710}',
    normal = {2046, 66, 63},
    advanced = {2047, 66, 61},
    rewards = {
        Achievement({id = 15915, criteria = 7, oneline = true}), -- normal bronze
        Achievement({id = 15916, criteria = 7, oneline = true}), -- normal silver
        Achievement({id = 15917, criteria = 7, oneline = true}), -- normal gold
        Achievement({id = 15927, criteria = 7, oneline = true}), -- advanced bronze
        Achievement({id = 15928, criteria = 7, oneline = true}), -- advanced silver
        Achievement({id = 15929, criteria = 7, oneline = true}) -- advanced gold
    }
}) -- Flashfrost Flyover

map.nodes[42599445] = ns.node.Dragonrace({
    label = '{quest:66725}',
    normal = {2050, 43, 41},
    advanced = {2051, 43, 38},
    rewards = {
        Achievement({id = 15915, criteria = 8, oneline = true}), -- normal bronze
        Achievement({id = 15916, criteria = 8, oneline = true}), -- normal silver
        Achievement({id = 15917, criteria = 8, oneline = true}), -- normal gold
        Achievement({id = 15927, criteria = 8, oneline = true}), -- advanced bronze
        Achievement({id = 15928, criteria = 8, oneline = true}), -- advanced silver
        Achievement({id = 15929, criteria = 8, oneline = true}) -- advanced gold
    }
}) -- Wild Preserve Circuit

-------------------------------------------------------------------------------
--------------------- TO ALL THE SQUIRRELS HIDDEN TIL NOW ---------------------
-------------------------------------------------------------------------------

map.nodes[76554827] = ns.node.Squirrel({
    id = 189737,
    rewards = {Achievement({id = 16729, criteria = 1})}
}) -- Kelp Nibbler

map.nodes[65142863] = ns.node.Squirrel({
    id = 192135,
    rewards = {Achievement({id = 16729, criteria = 2})}
}) -- Phoenix Hatchling

map.nodes[58387252] = ns.node.Squirrel({
    id = 193756,
    rewards = {Achievement({id = 16729, criteria = 3})}
}) -- Docile Kit

-------------------------------------------------------------------------------
------------------------------ LET'S GET QUACKING -----------------------------
-------------------------------------------------------------------------------

local Quack = Class('Quack', Collectible, {
    label = '{npc:196744}',
    note = L['lets_get_quacking'],
    icon = 4048818,
    group = ns.groups.DUCKLINGS,
    rewards = {Achievement({id = 16409, criteria = {id = 1, qty = true}})}
})

map.nodes[80114287] = Quack({quest = 66196, rlabel = L['quack_week_1']}) -- A Quack For Help (Week 1)

map.nodes[80083989] = Quack({
    quest = 70877,
    rlabel = L['quack_week_2'],
    requires = {ns.requirement.Quest(66196)}
}) -- A Quack in Time (Week 2)

map.nodes[81594546] = Quack({
    quest = 70917,
    rlabel = L['quack_week_3'],
    requires = {ns.requirement.Quest(70877)}
}) -- A Shoulder to Quack On (Week 3)

map.nodes[79274279] = Quack({
    quest = 70918,
    rlabel = L['quack_week_4'],
    requires = {ns.requirement.Quest(70917)}
}) -- Quack for Your Life (Week 4)

map.nodes[82884258] = Quack({
    quest = 70919,
    rlabel = L['quack_week_5'],
    requires = {ns.requirement.Quest(70918)}
}) -- Quacking Out for a Hero (Week 5)

-------------------------------------------------------------------------------
------------------ SIEGE ON DRAGONBANE KEEP: CHISELED RECORD ------------------
-------------------------------------------------------------------------------

map.nodes[27836835] = Collectible({
    note = L['complaint_to_scalepiercer_note'],
    icon = 134455,
    group = ns.groups.CHISELED_RECORD,
    rewards = {Achievement({id = 16412, criteria = 55264})}
}) -- Complaint to Scalepiercer

map.nodes[28827244] = Collectible({
    note = L['wyrmeaters_recipe_note'],
    icon = 134455,
    group = ns.groups.CHISELED_RECORD,
    rewards = {Achievement({id = 16412, criteria = 55266})}
}) -- Wyrmeater's Recipe

map.nodes[24056927] = Collectible({
    note = L['grand_flames_journal_note'],
    icon = 134455,
    group = ns.groups.CHISELED_RECORD,
    rewards = {Achievement({id = 16412, criteria = 55265})}
}) -- The Grand Flame's Journal

-------------------------------------------------------------------------------
--------------------------- THE DISGRUNTLED HUNTER ----------------------------
-------------------------------------------------------------------------------

local HemetNesingwaryJr = Class('HemetNesingwaryJr', Collectible, {
    id = 194590,
    icon = 236444,
    sublabel = L['hnj_sublabel'],
    group = ns.groups.HEMET_NESINGWARY_JR
}) -- Hemet Nesingwary Jr.

map.nodes[42008064] = HemetNesingwaryJr({
    rewards = {Achievement({id = 16542, criteria = 55697})}
}) -- Northern Waking Shores Hunt

map.nodes[70746646] = HemetNesingwaryJr({
    rewards = {Achievement({id = 16542, criteria = 55696})}
}) -- Eastern Waking Shores Hunt

map.nodes[24538913] = HemetNesingwaryJr({
    rewards = {Achievement({id = 16542, criteria = 55695})}
}) -- Southern Waking SHores Hunt

-------------------------------------------------------------------------------
----------------------------- GRAND THEFT MAMMOTH -----------------------------
-------------------------------------------------------------------------------

local GrandTheftMammoth = Class('GrandTheftMammoth', Collectible, {
    id = 198155,
    icon = 4034836,
    note = L['grand_theft_mammoth_note'],
    group = ns.groups.GRAND_THEFT_MAMMOTH
}) -- Grand Theft Mammoth

map.nodes[37114454] = GrandTheftMammoth({
    rewards = {Achievement({id = 16493, criteria = 1})},
    pois = {
        Path({
            37114454, 37304428, 37724379, 38324387, 38634443, 38724542,
            38604659, 38314739, 37984807, 38304899, 38715033, 38725121,
            39195245, 39695409, 39645503
        }), POI({39645503})
    }
}) -- Smoldering Perch Mammoth

map.nodes[33427207] = GrandTheftMammoth({
    rewards = {Achievement({id = 16493, criteria = 2})},
    pois = {
        Path({
            33427207, 32927243, 32237211, 31907141, 31576948, 31306784,
            31326686, 31666629, 32166524, 32066331, 32416226, 34666166,
            36216104, 37975894, 38795789, 39625640, 39805555, 39645503
        }), POI({39645503})
    }
}) -- Burning Ascent Mammoth

map.nodes[66342446] = GrandTheftMammoth({
    rewards = {Achievement({id = 16493, criteria = 3})},
    pois = {
        Path({
            66342446, 65652515, 65842653, 65292807, 65312966, 64683174,
            64413342, 62793431, 61293562, 60223642, 59163719, 57923722,
            56553689, 55273794, 53693837, 52363881, 51753947, 50803987,
            49783913, 48793830, 47933921, 47784202, 47414443, 46364585,
            46194805, 45314963, 44225076, 43305288, 43015435, 42435565,
            40995587, 39925518, 39645503
        }), POI({39645503})
    }
}) -- Scalecracker Keep Mammoth

map.nodes[23677143] = GrandTheftMammoth({
    rewards = {Achievement({id = 16493, criteria = 4})},
    pois = {
        Path({
            23677143, 24037183, 24417134, 24897059, 26077058, 27077077,
            27897123, 29037110, 29997004, 30246902, 30706754, 31666629,
            32166524, 32066331, 32416226, 34666166, 36216104, 37975894,
            38795789, 39625640, 39805555, 39645503
        }), POI({39645503})
    }
}) -- Dragonbane Keep Mammoth

-------------------------------------------------------------------------------
----------------------------- THAT'S PRETTY NEAT! -----------------------------
-------------------------------------------------------------------------------

map.nodes[42276935] = ns.node.Selfie({
    id = 192186,
    rewards = {Achievement({id = 16446, criteria = 19})}
}) -- Territorial Axebeak
