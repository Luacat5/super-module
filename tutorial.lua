local Super = require("superModule")
local superClass = require("foo") 
local class = {}
class.__index = class

Super.init(class,superClass){} 

function class.new()
    local self = Super.new(class) -- replace line
    return self
end

return class