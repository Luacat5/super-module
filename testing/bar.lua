local class = require("class")
local def = {}

local bar = class(def){
    funny = true
}

function def:getFunny()
    return self.funny
end


return bar