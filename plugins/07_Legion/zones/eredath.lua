-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local L = ns.locale
local Map = ns.Map

local Treasure = ns.node.Treasure
local Rare = ns.node.Rare

local Achievement = ns.reward.Achievement
local Mount = ns.reward.Mount
local Pet = ns.reward.Pet
local Section = ns.reward.Section
local Toy = ns.reward.Toy

local Path = ns.poi.Path
local POI = ns.poi.POI

-------------------------------------------------------------------------------

local map = Map({id = 882, settings = true})

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

map.nodes[27203000] = Rare({
    id = 126869,
    rewards = {Achievement({id = 12078, criteria = 37631})}
}) -- Captain Faruq

map.nodes[30104020] = Rare({
    id = 126887,
    rewards = {
        Achievement({id = 12078, criteria = 37629}),
        Pet({item = 153056, id = 2120}) -- Grasping Manifestation
    }
}) -- Ataxon

map.nodes[33704780] = Rare({
    id = 126867,
    rewards = {
        Achievement({id = 12078, criteria = 37633}),
        Mount({item = 152844, id = 973}) -- Lambent Mana Ray
    }
}) -- Venomtail Skyfin

map.nodes[35003710] = Rare({
    id = 126885,
    rewards = {Achievement({id = 12078, criteria = 37630})}
}) -- Umbraliss

map.nodes[36005900] = Rare({
    id = 126896,
    rewards = {Achievement({id = 12078, criteria = 37627})}
}) -- Herald of Chaos

map.nodes[36702390] = Rare({
    id = 126865,
    rewards = {
        Achievement({id = 12078, criteria = 37635}), Toy({item = 153183}) -- Barrier Generator
    }
}) -- Vigilant Thanos

map.nodes[38705570] = Rare({
    id = 126860,
    note = L['kaara_the_pale_note'],
    rewards = {Achievement({id = 12078, criteria = 37638})},
    pois = {POI({38615559})}
}) -- Kaara the Pale

map.nodes[39106660] = Rare({
    id = 126868,
    note = L['turek_the_lucid_note'],
    rewards = {Achievement({id = 12078, criteria = 37632})},
    pois = {POI({39106665})}
}) -- Turek the Lucid

map.nodes[41101150] = Rare({
    id = 126864,
    rewards = {Achievement({id = 12078, criteria = 37636})}
}) -- Feasel the Muffin Thief

map.nodes[43004810] = Rare({
    id = 126898,
    note = L['drops_fel_spotted_egg'],
    rewards = {
        Achievement({id = 12078, criteria = 37626}),
        Section(L['fel_spotted_egg_contains']),
        Mount({item = 152840, id = 976}), -- Scintillating Mana Ray
        Mount({item = 152841, id = 975}), -- Felglow Mana Ray
        Mount({item = 152842, id = 974}), -- Vibrant Mana Ray
        Mount({item = 152843, id = 906}), -- Darkspore Mana Ray
        Pet({item = 153054, id = 2118}), -- Docile Skyfin
        Pet({item = 153055, id = 2119}) -- Fel-Afflicted Skyfin
    }
}) -- Sabuul

map.nodes[43806040] = Rare({
    id = 126862,
    rewards = {
        Achievement({id = 12078, criteria = 37637}), Toy({item = 153193}) -- Baarut the Brisk
    }
}) -- Baruut the Bloodthirsty

map.nodes[44507170] = Rare({
    id = 122838,
    rewards = {Achievement({id = 12078, criteria = 37654})}
}) -- Shadowcaster Voruun

map.nodes[48104060] = Rare({
    id = 126899,
    rewards = {Achievement({id = 12078, criteria = 37625})}
}) -- Jed'hin Champion Vorusk

map.nodes[48805200] = Rare({
    id = 126913,
    rewards = {
        Achievement({id = 12078, criteria = 37617}), Toy({item = 153203}) -- Ancient Fishing Line
    }
}) -- Slithon the Last

map.nodes[49800930] = Rare({
    id = 126912,
    rewards = {
        Achievement({id = 12078, criteria = 37618}),
        Mount({item = 152904, id = 980})
    }
}) -- Skreeg the Devourer (Acid Belcher)

map.nodes[52906760] = Rare({
    id = 126815,
    rewards = {Achievement({id = 12078, criteria = 37640})}
}) -- Soultwisted Monstrosity

map.nodes[53906440] = Rare({
    id = 126866,
    rewards = {
        Achievement({id = 12078, criteria = 37634}), Toy({item = 153183}) -- Barrier Generator
    }
}) -- Vigilant Kuro

map.nodes[55506010] = Rare({
    id = 126852,
    rewards = {
        Achievement({id = 12078, criteria = 37639}),
        Mount({item = 152814, id = 970}) -- Maddened Chaosrunner
    }
}) -- Wrangler Kravos

map.nodes[56901460] = Rare({
    id = 126910,
    rewards = {Achievement({id = 12078, criteria = 37619})}
}) -- Commander Xethgar

map.nodes[57002780] = Rare({
    id = 125497,
    rewards = {Achievement({id = 12078, criteria = 37623})}
}) -- Overseer Y'Sorna

map.nodes[58903760] = Rare({
    id = 124440,
    rewards = {Achievement({id = 12078, criteria = 37624})}
}) -- Overseer Y'Beda

map.nodes[61002980] = Rare({
    id = 125498,
    rewards = {Achievement({id = 12078, criteria = 37622})}
}) -- Overseer Y'Morna

map.nodes[61405040] = Rare({
    id = 126900,
    rewards = {
        Achievement({id = 12078, criteria = 37621}), Toy({item = 153179}), -- Blue Conservatory Scroll
        Toy({item = 153181}), -- Red Conservatory Scroll
        Toy({item = 153180}) -- Yellow Conservatory Scroll
    }
}) -- Instructor Tarahna

map.nodes[63902960] = Rare({
    id = 126908,
    rewards = {Achievement({id = 12078, criteria = 37620})},
    pois = {POI({63942956})}
}) -- Zul'tan the Numerous

map.nodes[70204600] = Rare({
    id = 126889,
    rewards = {Achievement({id = 12078, criteria = 37628})}
}) -- Sorolis the Ill-Fated

-------------------------------------------------------------------------------
---------------------------------- TREASURES ----------------------------------
-------------------------------------------------------------------------------

map.nodes[40205140] = Treasure({
    requires = ns.requirement.Quest(47994), -- Forming a Bond (Lightforged Warframe)
    note = L['lightforged_warframe_treasure_note'],
    rewards = {Achievement({id = 12074, criteria = 37598})}
}) -- Void-Tinged Chest

map.nodes[43400450] = Treasure({
    requires = ns.requirement.Quest(47994), -- Forming a Bond (Lightforged Warframe)
    note = L['lightforged_warframe_treasure_note'],
    rewards = {Achievement({id = 12074, criteria = 37595})}
}) -- Eredar Treasure Cache

map.nodes[50603840] = Treasure({
    requires = ns.requirement.Quest(47287), -- The Vindicaar Matrix Core (Light's Judgement)
    note = L['lights_judgement_treasure_note'],
    rewards = {Achievement({id = 12074, criteria = 37596})}
}) -- Chest of Ill-Gotten Gains

map.nodes[62207120] = Treasure({
    requires = ns.requirement.Quest(47287), -- The Vindicaar Matrix Core (Light's Judgement)
    note = L['lights_judgement_treasure_note'],
    rewards = {Achievement({id = 12074, criteria = 37597})}
}) -- Student's Surprising Surplus

map.nodes[40806980] = Treasure({
    requires = ns.requirement.Quest(48107), -- The Sigil of Awakening (Shroud of Arcane Echoes)
    note = L['shroud_of_arcane_echoes_treasures_note'],
    rewards = {Achievement({id = 12074, criteria = 37957})}
}) -- Augari Goods

map.nodes[62202240] = Treasure({
    requires = ns.requirement.Quest(48107), -- The Sigil of Awakening (Shroud of Arcane Echoes)
    note = L['shroud_of_arcane_echoes_treasures_note'],
    rewards = {Achievement({id = 12074, criteria = 37956})}
}) -- Secret Augari Chest

map.nodes[70602730] = Treasure({
    requires = ns.requirement.Quest(48107), -- The Sigil of Awakening (Shroud of Arcane Echoes)
    note = L['shroud_of_arcane_echoes_treasures_note'],
    rewards = {Achievement({id = 12074, criteria = 37955})}
}) -- Augari-Runed Chest

map.nodes[27304010] = Treasure({
    note = L['goblin_glider_treasure_note'],
    rewards = {Achievement({id = 12074, criteria = 37601})},
    pois = {POI({30204400}), Path({30204400, 27304010})}
}) -- Shattered House Chest

map.nodes[43395443] = Treasure({
    note = L['goblin_glider_treasure_note'],
    rewards = {Achievement({id = 12074, criteria = 37602})},
    pois = {POI({45105310}), Path({45105310, 43395443})}
}) -- Doomseeker's Treasure

map.nodes[70305976] = Treasure({
    note = L['goblin_glider_treasure_note'],
    rewards = {Achievement({id = 12074, criteria = 37599})},
    pois = {POI({68075723}), Path({68075723, 70305976})}
}) -- Augari Secret Stash

map.nodes[57027686] = Treasure({
    rewards = {Achievement({id = 12074, criteria = 37600})},
    pois = {POI({57087407}), Path({57087407, 57117525, 57627617, 57027686})}
}) -- Desperate Eredar's Cache