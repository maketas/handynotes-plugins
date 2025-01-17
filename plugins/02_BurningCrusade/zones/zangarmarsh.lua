-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local Map = ns.Map
local L = ns.locale

local Rare = ns.node.Rare

local Achievement = ns.reward.Achievement
local Transmog = ns.reward.Transmog

local POI = ns.poi.POI

-------------------------------------------------------------------------------

local map = Map({id = 102, settings = true})

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

map.nodes[86009120] = Rare({
    id = 18682,
    rewards = {
        Achievement({id = 1312, criteria = 4505}), -- Bloody Rare
        Transmog({item = 31250, slot = L['cloth']}), -- Bog Mantle
        Transmog({item = 31249, slot = L['leather']}), -- Bog Spaulders
        Transmog({item = 31248, slot = L['mail']}), -- Bog Epaulets
        Transmog({item = 31247, slot = L['plate']}) -- Bog Pauldrons
    },
    pois = {
        POI({
            23002140, 24402060, 28202320, 40206180, 44805900, 49205820,
            84807960, 86008420, 86008960
        })
    }
}) -- Bog Lurker

map.nodes[74807700] = Rare({
    id = 18681,
    rewards = {
        Achievement({id = 1312, criteria = 4507}), -- Bloody Rare
        Transmog({item = 31246, slot = L['cloth']}), -- Nagahide Leggings
        Transmog({item = 31244, slot = L['leather']}), -- Nagahide Pants
        Transmog({item = 31243, slot = L['mail']}), -- Nagascale Legguards
        Transmog({item = 31242, slot = L['plate']}) -- Nagascale Legplates
    },
    pois = {
        POI({
            25403740, 25403760, 25804240, 25804260, 26204660, 26404640,
            26604660, 59803640, 60003680, 62006920, 62006960, 63003800,
            63404380, 63806500, 64406940, 64406960, 64804140, 70407280,
            70607280, 72207600, 73408240
        })
    }
}) -- Coilfang Emissary

map.nodes[78805360] = Rare({
    id = 18680,
    rewards = {
        Achievement({id = 1312, criteria = 4516}), -- Bloody Rare
        Transmog({item = 31254, slot = L['cloak']}) -- Striderhide Cloak
    },
    pois = {
        POI({
            09805220, 10804720, 10805520, 11005040, 11204640, 13404540,
            14004460, 14604460, 14804440, 15004040, 15004340, 16003820,
            16803620, 17603460, 37803840, 38803380, 40403360, 41403320,
            42203360, 42603440, 43003460, 43603480, 44603420, 47003200,
            47403060, 47803000, 50003080, 52403240, 52803300, 54003300,
            54803380, 70203980, 70403740, 73603620, 73804660, 75204720,
            75804840, 77005140
        })
    }
}) -- Marticar
