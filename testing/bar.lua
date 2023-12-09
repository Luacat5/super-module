local class = require("class")
local def = {}

function def:getFunny()
    return self.funny
end


return class(def){
    funny = true
}