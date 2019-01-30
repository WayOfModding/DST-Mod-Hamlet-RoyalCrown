local MakeHat = require("makehat")

return MakeHat("pigcrown", function(inst)
  inst:RemoveTag("_pigcrown")
  inst.components.equippable.dapperness = TUNING.DAPPERNESS_SUPERHUGE
  inst:AddTag("pigcrown")
  return inst
end, function(inst)
  inst:AddTag("_pigcrown")
end)
