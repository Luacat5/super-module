local class = require("class")
local def = {}

local foo = class(def){
    Health = 100
}

function def:damage()
    self.Health =  self.Health - 0.65
end


return foo