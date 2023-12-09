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

local function instanceClass(vars, methods)
	methods.__index = methods
	return setmetatable(vars, methods)
end

local function combineMethods(methodsToAssignTo, classes)
	for _, currentClass in pairs(classes) do
		for methodName, method in pairs(currentClass._methods) do
			methodsToAssignTo[methodName] = method
		end
	end
	return methodsToAssignTo
end

local function combineVariables(variablesToAssignTo, classes)
	for _, currentClass in pairs(classes) do
		for variableName, variable in pairs(currentClass._variables) do
			variablesToAssignTo[variableName] = variable
		end
	end
	return variablesToAssignTo
end

local class = function(methods, ... )
	-- .. is the other class actuals we are stealing from :)
	local actual = {}
	actual._super = {
		...
	}
	actual._methods = combineMethods(methods, actual._super)
	return function(variables, constructor)

		actual._variables = combineVariables(variables,actual._super)

		actual.new = function (...)
			local object = instanceClass(actual._variables,actual._methods)
			
			if constructor then
				constructor(object, ...)
			end
			
			return object
		end

		return actual
	end
end

return class