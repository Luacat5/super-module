local class = require("class")
local foo = require("testing.foo")
local bar = require("testing.bar")

local module = {}


function module:getAwesome()
    return self.awesome
end

function module:multiply()
    return self.Health * 20
end

return class(module, foo, bar)(
    {
        awesome = true
    }, function (self)
        self.funny = false
        return self
    end)