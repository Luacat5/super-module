local class = require("class")
local module = {}

function module:getFunny()
    return self.funny
end

return class(module){
    funny = true
}