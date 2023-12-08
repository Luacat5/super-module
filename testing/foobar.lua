local class = require("class")
local foo = require("testing.foo")
local bar = require("testing.bar")

local def = {}

local foobar = class(def, foo, bar)(
    {
        awesome = true
    }, function (self)
        self.funny = false
        return self
    end)



function def:getAwesome()
    return self.awesome
end

function def:multiply()
    return self.Health * 20
end

local newfb = foobar.new()
print(newfb.Health)

newfb:damage()
print(newfb:multiply())
print(newfb:getFunny())

return foobar