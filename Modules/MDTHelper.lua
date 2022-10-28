local W, F, L = unpack(select(2, ...))
local MH = W:NewModule("MDTHelper", "AceHook-3.0", "AceEvent-3.0")

local _G = _G
local format = format
local pairs = pairs

local CreateFrame = CreateFrame
local IsAddOnLoaded = IsAddOnLoaded
local ReloadUI = ReloadUI

local C_Timer_After = C_Timer.After

local currentPatchMaps = {
    -- Shadowlands S4
    [9] = true, -- Return to Karazhan: Lower
    [10] = true, -- Return to Karazhan: Upper
    [25] = true, -- Operation: Mechagon - Junkyard
    [26] = true, -- Operation: Mechagon - Workshop
    [37] = true, -- Tazavesh: Streets of Wonder
    [38] = true, -- Tazavesh: So'leah's Gambit
    [40] = true, -- Grimrail Depot
    [41] = true, -- Iron Docks

    -- Dragonflight S1
    [42] = true, -- Ruby Life Pools
    [43] = true, -- The Nokhud Offensive
    [44] = true, -- The Azure Vault
    [45] = true, -- Algeth’ar Academy
    [46] = true, -- Shadowmoon Burial Grounds x
    [47] = true, -- Temple of the Jade Serpent x
    [48] = true, -- Brackenhide Hollow
    [49] = true, -- Halls of Infusion
    [50] = true, -- Neltharus
    [51] = true, -- Uldaman: Legacy of Tyr
}

function MH:Translate()
    if not self.db or not self.db.enable or not self.db.translate then
        return
    end

    local MDT = _G.MDT

    if not MDT or not MDT.dungeonEnemies or not MDT.L then
        return
    end

    for mapID, NPCs in pairs(MDT.dungeonEnemies) do
        if mapID and currentPatchMaps[mapID] and NPCs then
            for _, NPC in pairs(NPCs) do
                if NPC.id and NPC.name then
                    F.HandleNPCNameByID(
                        NPC.id,
                        function(name)
                            MDT.L[NPC.name] = name
                        end
                    )
                end
            end
        end
    end
end

function MH:ProfileUpdate()
    self.db = W.db.mdtHelper

    if not self.db or not self.db.enable then
        return
    end

    if IsAddOnLoaded("MythicDungeonTools") then
        self:Translate()
    else
        self:RegisterEvent("ADDON_LOADED", "Translate")
    end
end

MH.OnInitialize = MH.ProfileUpdate
