-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local L = ns.locale

local Class = ns.Class
local Group = ns.Group

local Collectible = ns.node.Collectible
local Node = ns.node.Node

local Achievement = ns.reward.Achievement
local Currency = ns.reward.Currency
local Item = ns.reward.Item
local Mount = ns.reward.Mount
local Transmog = ns.reward.Transmog

-------------------------------------------------------------------------------

ns.expansion = 10

-------------------------------------------------------------------------------
----------------------------------- GROUPS ------------------------------------
-------------------------------------------------------------------------------

ns.groups.ANCESTOR = Group('ancestor', 135946, {defaults = ns.GROUP_HIDDEN})
ns.groups.BAKAR = Group('bakar', 930453, {defaults = ns.GROUP_HIDDEN})
ns.groups.CHISELED_RECORD = Group('chiseled_record', 134455,
    {defaults = ns.GROUP_HIDDEN})
ns.groups.DISTURBED_DIRT = Group('disturbed_dirt', 1060570,
    {defaults = ns.GROUP_HIDDEN})
ns.groups.DRAGONRACE =
    Group('dragonrace', 1100022, {defaults = ns.GROUP_HIDDEN})
ns.groups.DRAGON_GLYPH = Group('dragon_glyph', 4728198)
ns.groups.DREAMGUARD = Group('dreamguard', 341763, {defaults = ns.GROUP_HIDDEN})
ns.groups.DUCKLINGS = Group('ducklings', 4048818, {defaults = ns.GROUP_HIDDEN})
ns.groups.FLAG = Group('flag', 1723999, {defaults = ns.GROUP_HIDDEN})
ns.groups.FRAGMENT = Group('fragment', 134908, {defaults = ns.GROUP_HIDDEN})
ns.groups.HEMET_NESINGWARY_JR = Group('hemet_nesingwary_jr', 236444,
    {defaults = ns.GROUP_HIDDEN})
ns.groups.KITE = Group('kite', 133837, {defaults = ns.GROUP_HIDDEN})
ns.groups.LAYLINE = Group('layline', 1033908, {defaults = ns.GROUP_HIDDEN})
ns.groups.PROFESSION_TREASURES = Group('profession_treasures', 4620676,
    {defaults = ns.GROUP_HIDDEN})
ns.groups.SCOUT_PACK =
    Group('scout_pack', 4562583, {defaults = ns.GROUP_HIDDEN})
ns.groups.SQUIRRELS = Group('squirrels', 237182, {defaults = ns.GROUP_HIDDEN})
ns.groups.PRETTY_NEAT_SELFIE = Group('pretty_neat_selfie', 133707,
    {defaults = ns.GROUP_HIDDEN})
ns.groups.GRAND_THEFT_MAMMOTH = Group('grand_theft_mammoth', 4034836,
    {defaults = ns.GROUP_HIDDEN})

-------------------------------------------------------------------------------
----------------------------- PROFESSION TREASURES ----------------------------
-------------------------------------------------------------------------------

-- LuaFormatter off
local PROFESSIONS = {
    -- name, icon, skillID, variantID
    {'Alchemy', 4620669, 171, 2823},
    {'Blacksmithing', 4620670, 164, 2822},
    {'Enchanting', 4620672, 333, 2825},
    {'Engineering', 4620673, 202, 2827},
    {'Herbalism', 4620675, 182, 2832},
    {'Inscription', 4620676, 773, 2828},
    {'Jewelcrafting', 4620677, 755, 2829},
    {'Leatherworking', 4620678, 165, 2830},
    {'Mining', 4620679, 186, 2833},
    {'Skinning', 4620680, 393, 2834},
    {'Tailoring', 4620681, 197, 2831}
}
-- LuaFormatter on

local ProfessionMaster = Class('ProfessionMaster', ns.node.NPC, {
    scale = 0.9,
    group = ns.groups.PROFESSION_TREASURES
})

function ProfessionMaster:IsEnabled()
    if not ns.PlayerHasProfession(self.skillID) then return false end
    return ns.node.NPC.IsEnabled(self)
end

local ProfessionTreasure = Class('ProfessionTreasure', ns.node.Item, {
    scale = 0.9,
    group = ns.groups.PROFESSION_TREASURES
})

function ProfessionTreasure:IsEnabled()
    if not ns.PlayerHasProfession(self.skillID) then return false end
    return ns.node.Item.IsEnabled(self)
end

ns.node.ProfessionMasters = {}
ns.node.ProfessionTreasures = {}

local PM = ns.node.ProfessionMasters
local PT = ns.node.ProfessionTreasures

for i, ids in ipairs(PROFESSIONS) do
    local name, icon, skillID, variantID = unpack(ids)

    PM[name] = Class(name .. 'Master', ProfessionMaster, {
        icon = icon,
        skillID = skillID,
        requires = ns.requirement.Profession(skillID, variantID, 25)
    })

    PT[name] = Class(name .. 'Treasure', ProfessionTreasure, {
        icon = icon,
        skillID = skillID,
        requires = ns.requirement.Profession(skillID, variantID, 25)
    })
end

-------------------------------------------------------------------------------
-------------------------------- DRAGON GLYPHS --------------------------------
-------------------------------------------------------------------------------

local Dragonglyph = Class('Dragonglyph', Collectible, {
    icon = 4728198,
    label = L['dragon_glyph'],
    group = ns.groups.DRAGON_GLYPH,
    requires = ns.requirement.Quest(68795) -- Dragonriding
})

ns.node.Dragonglyph = Dragonglyph

-------------------------------------------------------------------------------
---------------------------- DRAGON CUSTOMIZATIONS ----------------------------
-------------------------------------------------------------------------------

-- This is a collection of all the open-world dragon customizations that are
-- obtainable. Many of these are available from multiple sources, so this
-- gives us a single easy spot to keep their data and reference it elsewhere.

-- TODO: Add other 3 drakes

ns.DRAGON_CUSTOMIZATIONS = {
    RenewedProtoDrake = {
        Armor = Item({item = 197357, quest = nil}),
        BeakedSnout = Item({item = 197401, quest = nil}),
        BlackAndRedArmor = Item({item = 197348, quest = nil}),
        BlackScales = Item({item = 197392, quest = nil}),
        BlueHair = Item({item = 197368, quest = nil}),
        BlueScales = Item({item = 197390, quest = nil}),
        BovineHorns = Item({item = 197377, quest = nil}),
        BronzeAndPinkArmor = Item({item = 197353, quest = nil}),
        BronzeScales = Item({item = 197391, quest = nil}),
        BrownHair = Item({item = 197369, quest = nil}),
        ClubTail = Item({item = 197403, quest = 69604}),
        CurledHorns = Item({item = 197375, quest = nil}),
        CurvedHorns = Item({item = 197380, quest = nil}),
        CurvedSpikedBrow = Item({item = 197358, quest = nil}),
        DualHornedCrest = Item({item = 197366, quest = nil}),
        Ears = Item({item = 197376, quest = nil}),
        FinnedCrest = Item({item = 197365, quest = nil}),
        FinnedJaw = Item({item = 197388, quest = nil}),
        FinnedTail = Item({item = 197404, quest = nil}),
        FinnedThroat = Item({item = 197408, quest = nil}),
        GoldAndBlackArmor = Item({item = 197346, quest = nil}),
        GoldAndRedArmor = Item({item = 197351, quest = nil}),
        GoldAndWhiteArmor = Item({item = 197349, quest = nil}),
        GradientHorns = Item({item = 197381, quest = nil}),
        GrayHair = Item({item = 197367, quest = nil}),
        GreenHair = Item({item = 197371, quest = nil}),
        GreenScales = Item({item = 192523, quest = nil}), -- also item=197389?
        HairyBack = Item({item = 197356, quest = nil}),
        HairyBrow = Item({item = 197359, quest = nil}),
        HarrierPattern = Item({item = 197395, quest = nil}),
        HeavyHorns = Item({item = 197383, quest = nil}),
        HeavyScales = Item({item = 197397, quest = nil}),
        Helm = Item({item = 197373, quest = nil}),
        HornedBack = Item({item = 197354, quest = nil}),
        HornedJaw = Item({item = 197385, quest = nil}),
        ImpalerHorns = Item({item = 197379, quest = nil}),
        ManedCrest = Item({item = 197363, quest = nil}),
        ManedTail = Item({item = 197405, quest = nil}),
        PredatorPattern = Item({item = 197394, quest = nil}),
        PurpleHair = Item({item = 197372, quest = 69573}),
        RazorSnout = Item({item = 197399, quest = nil}),
        RedHair = Item({item = 197370, quest = nil}),
        RedScales = Item({item = 192111, quest = nil}),
        SharkSnout = Item({item = 197400, quest = nil}),
        ShortSpikedCrest = Item({item = 197364, quest = nil}),
        SilverAndBlueArmor = Item({item = 197347, quest = nil}),
        SilverAndPurpleArmor = Item({item = 197350, quest = nil}),
        SkyterrorPattern = Item({item = 197396, quest = nil}),
        SnubSnout = Item({item = 197398, quest = nil}),
        SpikedClubTail = Item({item = 197402, quest = nil}),
        SpikedCrest = Item({item = 197361, quest = nil}),
        SpikedJaw = Item({item = 197386, quest = nil}),
        SpikedThroat = Item({item = 197407, quest = nil}),
        SpinedBrow = Item({item = 197360, quest = nil}),
        SpinedCrest = Item({item = 197362, quest = nil}),
        SpinedTail = Item({item = 197406, quest = nil}),
        SteelAndYellowArmor = Item({item = 197352, quest = nil}),
        SubtleHorns = Item({item = 197378, quest = nil}),
        SweptHorns = Item({item = 197374, quest = nil}),
        ThickSpinedJaw = Item({item = 197355, quest = nil}), -- also item=197384?
        ThinSpinedJaw = Item({item = 197387, quest = nil}),
        WhiteHorns = Item({item = 197382, quest = 69583}),
        WhiteScales = Item({item = 197393, quest = nil})
    }
}

-------------------------------------------------------------------------------
------------------ DRAGONSCALE EXPEDITION: THE HIGHEST PEAKS ------------------
-------------------------------------------------------------------------------

local Flag = Class('Flag', Collectible, {
    icon = 1723999,
    label = L['dragonscale_expedition_flag'], -- Dragonscale Expedition Flag
    rlabel = ns.status.LightBlue('+250 ' .. select(1, GetFactionInfoByID(2507))), -- Dragonscale Expedition
    group = ns.groups.FLAG,
    requires = {
        ns.requirement.Reputation(2507, 6, true), -- Dragonscale Expedition
        ns.requirement.GarrisonTalent(2164) -- Cartographer Flag
    },
    rewards = {
        Achievement({
            id = 15890,
            criteria = {id = 1, qty = true, suffix = L['flags_placed']}
        })
    },
    IsCompleted = function(self)
        return C_QuestLog.IsQuestFlaggedCompleted(self.quest[1])
    end
})

ns.node.Flag = Flag

-------------------------------------------------------------------------------
---------------------------- FRAGMENTS OF HISTORY -----------------------------
-------------------------------------------------------------------------------

local Fragment = Class('Fragment', Collectible, {
    icon = 134908,
    group = ns.groups.FRAGMENT,
    IsCollected = function(self)
        if ns.PlayerHasItem(self.rewards[2].item) then return true end
        return Collectible.IsCollected(self)
    end
})

function Fragment.getters:note()
    -- Ask Emilia Bellocq first
    return not C_QuestLog.IsQuestFlaggedCompleted(70231) and
               L['fragment_requirement_note']
end

ns.node.Fragment = Fragment

-------------------------------------------------------------------------------
------------------------------- DISTURBED DIRT --------------------------------
-------------------------------------------------------------------------------

local Disturbeddirt = Class('Disturbed_dirt', Node, {
    icon = 1060570,
    label = L['disturbed_dirt'],
    group = ns.groups.DISTURBED_DIRT,
    requires = {
        ns.requirement.Quest(70813), -- Digging Up Treasure
        ns.requirement.Item(191294) -- Small Expedition Shovel
    },
    rewards = {
        Item({item = 190453}), -- Spark of Ingenuity
        Item({item = 190454}), -- Primal Chaos
        Transmog({item = 201386, slot = L['cosmetic']}), -- Drakonid Defender's Pike
        Transmog({item = 201388, slot = L['cosmetic']}), -- Dragonspawn Wingtipped Staff
        Transmog({item = 201390, slot = L['cosmetic']}), -- Devastating Drakonid Waraxe
        Item({item = 194540, quest = 67046}), -- Nokhud Armorer's Notes
        Item({item = 199061, quest = 70527}), -- A Guide to Rare Fish
        Item({item = 199066, quest = 70535}), -- Letter of Caution
        Item({item = 199068, quest = 70537}), -- Time-Lost Memo
        Item({item = 199062, quest = 70528}), -- Ruby Gem Cluster Map
        Item({item = 199067, quest = 70536}), -- Precious Plans
        Item({item = 198852, quest = 70407}), -- Bear Termination Orders
        Item({item = 198843, quest = 70392}), -- Emerald Gardens Explorer's Notes
        Item({item = 192055}), -- Dragon Isles Artifact
        Currency({id = 2003}) -- Dragon Isles Supplies
    }
})

ns.node.Disturbeddirt = Disturbeddirt

-------------------------------------------------------------------------------
-------------------------- EXPEDITION SCOUT'S PACKS ---------------------------
-------------------------------------------------------------------------------

local Scoutpack = Class('Scoutpack', Node, {
    icon = 4562583,
    label = L['scout_pack'],
    group = ns.groups.SCOUT_PACK,
    requires = ns.requirement.Quest(70822), -- Lost Expedition Scouts
    rewards = {
        Item({item = 191784}), -- Dragon Shard of Knowledge
        Item({item = 190454}), -- Primal Chaos
        Mount({item = 192764, id = 1617}), -- Verdant Skitterfly
        Transmog({item = 201387, slot = L['cosmetic']}), -- Dragon Knight's Halberd
        Transmog({item = 201388, slot = L['cosmetic']}), -- Dragonspawn Wingtipped Staff
        Transmog({item = 201390, slot = L['cosmetic']}), -- Devastating Drakonid Waraxe
        Transmog({item = 201392, slot = L['cosmetic']}), -- Dragon Noble's Cutlass
        Transmog({item = 201395, slot = L['cosmetic']}), -- Dragon Wingcrest Scimitar
        Transmog({item = 201396, slot = L['cosmetic']}), -- Dracthyr Claw Extensions
        Item({item = 194540, quest = 67046}), -- Nokhud Armorer's Notes
        Item({item = 199061, quest = 70527}), -- A Guide to Rare Fish
        Item({item = 199066, quest = 70535}), -- Letter of Caution
        Item({item = 199068, quest = 70537}), -- Time-Lost Memo
        Item({item = 199062, quest = 70528}), -- Ruby Gem Cluster Map
        Item({item = 199067, quest = 70536}), -- Precious Plans
        Item({item = 198852, quest = 70407}), -- Bear Termination Orders
        Item({item = 198843, quest = 70392}), -- Emerald Gardens Explorer's Notes
        Item({item = 192055}), -- Dragon Isles Artifact
        Currency({id = 2003}) -- Dragon Isles Supplies
    }
})

ns.node.Scoutpack = Scoutpack

-------------------------------------------------------------------------------
--------------------------------- DRAGONRACES ---------------------------------
-------------------------------------------------------------------------------

local Dragonrace = Class('DragonRace', Collectible,
    {icon = 1100022, group = ns.groups.DRAGONRACE})

function Dragonrace.getters:sublabel()
    if self.normal then
        local ntime = C_CurrencyInfo.GetCurrencyInfo(self.normal[1]).quantity
        if self.advanced then
            local atime = C_CurrencyInfo.GetCurrencyInfo(self.advanced[1])
                              .quantity
            return L['dr_best']:format(ntime / 1000, atime / 1000)
        end
        return L['dr_best_dash']:format(ntime / 1000)
    end
end

function Dragonrace.getters:note()
    if self.normal then
        local silver = ns.color.Silver
        local gold = ns.color.Gold

        -- LuaFormatter off
        if self.advanced then
            return L['dr_note']:format(
                silver(self.normal[2]),
                gold(self.normal[3]),
                silver(self.advanced[2]),
                gold(self.advanced[3])
            ) .. L['dr_bronze']
        end

        return L['dr_note_dash']:format(
            silver(self.normal[2]),
            gold(self.normal[3])
        ) .. L['dr_bronze']
        -- LuaFormatter on
    end
end

ns.node.Dragonrace = Dragonrace

-------------------------------------------------------------------------------
--------------------- TO ALL THE SQUIRRELS HIDDEN TIL NOW ---------------------
-------------------------------------------------------------------------------

local Squirrel = Class('Squirrel', Collectible, {
    group = ns.groups.SQUIRRELS,
    icon = 237182,
    note = L['squirrels_note']
})

ns.node.Squirrel = Squirrel

-------------------------------------------------------------------------------
----------------------------- THAT'S PRETTY NEAT! -----------------------------
-------------------------------------------------------------------------------

local Selfie = Class('Selfie', Collectible, {
    icon = 133707,
    sublabel = L['pretty_neat_selfie_note'],
    group = ns.groups.PRETTY_NEAT_SELFIE
}) -- That's Pretty Neat!

ns.node.Selfie = Selfie

-- TODO / Checklist
-- Apex Blazewing
-- Blue Terror              Added to Rare - Unknown
-- Drakewing                Added to Rare - Unknown
-- Feasting Buzzard
-- Glade Ohuna              Added - Working
-- Horned Filcher           Added - Bugged
-- Liskron the Dazzling
-- Ohn'ahra                 Added as Separate Node - Unknown (probably bugged?)
-- Pine Flicker             Added - Bugged
-- Territorial Axebeak      Added - Working
-- Avis Gryphonheart        Added - Bugged
-- Chef Fry-Aerie
-- Eldoren the Reborn
-- Forgotten Gryphon        Added to Rare - Unknown
-- Halia Cloudfeather       Added - Bugged (counted as Drakewing)
-- Iridescent Peafowl
-- Nergazurai               Added to Rare - Unknown
-- Palla of the Wing        Added - Bugged (counted as Ohn'ahra)
-- Quackers the Terrible
-- Zenet Avis               Added to Rare - Unknown
