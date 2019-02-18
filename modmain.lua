local _G = GLOBAL
local require = _G.require

local DEBUG = false

Assets =
{
}

PrefabFiles =
{
  "modhats",
}

require "modstrings"
require "modrecipes"

local TUNING = _G.TUNING
TUNING.DAPPERNESS_PIGCROWNHAT = ({
  [0] = 0, -- None
  [1] = TUNING.DAPPERNESS_MED_LARGE, -- Normal
  [2] = TUNING.DAPPERNESS_LARGE, -- Large
  [1] = TUNING.DAPPERNESS_HUGE, -- Huge
  [2] = TUNING.DAPPERNESS_SUPERHUGE, -- Super Huge
})[GetModConfigData("SANITY_RATE") or 1]

--------------

if DEBUG then
  local SpawnPrefab = _G.SpawnPrefab

  local function giveitem(inst, item_name)
    if not inst then return end
    local item = SpawnPrefab(item_name)
    if item then
      inst.components.inventory:GiveItem(item)
    end
  end

  AddPlayerPostInit(function(inst)
    -- Spawn items in tester's inventory
    if inst.components.inventory then
      giveitem(inst, "pigcrownhat")
    end
  end)
end
