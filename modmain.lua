local _G = GLOBAL
local require = _G.require

local DEBUG = true

Assets =
{
}

PrefabFiles =
{
  "pigcrownhat",
}

require "modstrings"
require "modrecipes"

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
