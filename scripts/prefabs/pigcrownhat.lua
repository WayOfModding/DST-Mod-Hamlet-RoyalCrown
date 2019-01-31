local MakeHat = require("modhats")

return MakeHat("pigcrown", function(inst)
  inst.components.equippable.dapperness = TUNING.DAPPERNESS_SUPERHUGE
  inst:AddTag("pigcrown")
  return inst
end)
