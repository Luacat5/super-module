local class = require("class")
local module = {}


function module:damage()
    self.Health =  self.Health - 0.65
end


return class(module){
    Health = 100
}