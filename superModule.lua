--[[
                                                                                                                                                 
                                                                                      
,--.                    ,-----.          ,--.  ,-----.,--.                            
|  |   ,--.,--. ,--,--.'  .--./ ,--,--.,-'  '-.|  .--'|  |,---.                       
|  |   |  ||  |' ,-.  ||  |    ' ,-.  |'-.  .-''--. `\`-'(  .-'                       
|  '--.'  ''  '\ '-'  |'  '--'\\ '-'  |  |  |  .--'  /   .-'  `)                      
`-----' `----'  `--`--' `-----' `--`--'  `--'  `----'    `----'                       
 ,---.                                   ,--.   ,--.          ,--.        ,--.        
'   .-' ,--.,--. ,---.  ,---. ,--.--.    |   `.'   | ,---.  ,-|  |,--.,--.|  | ,---.  
`.  `-. |  ||  || .-. || .-. :|  .--'    |  |'.'|  || .-. |' .-. ||  ||  ||  || .-. : 
.-'    |'  ''  '| '-' '\   --.|  |       |  |   |  |' '-' '\ `-' |'  ''  '|  |\   --. 
`-----'  `----' |  |-'  `----'`--'       `--'   `--' `---'  `---'  `----' `--' `----' 
                `--'


]]

local module = {}

function module.init(class,superClass)
    class._super = superClass
    -- to identify super class later
    -- so don't name anything _super inside your class please
    -- I would freeze this if I could..
    return function(inheritance)
        inheritance.new =  inheritance.new or false
        -- aint gonna happen, unless you specify.. 
        -- you creep

        for i,v in pairs(superClass) do
            if type(v) == "function" and inheritance[i] ~= false then
                class[i] = v
            end
        end
    end
end

function module.new(class)
    return setmetatable(class._super.new(),class)
end

setmetatable(module,{
    __call = function (_, self, methodName)
        return function (a, ...)
            self._super[methodName](self,a, ...)
        end
    end
}
)
-- shrimple

return module