local jClass = {}
jClass.__index = jClass
jClass.__classType = "jClass"

setmetatable(jClass, {
	__call = function(cls, ...)
		return cls.new(...)
	end,
})

function jClass._init(classType)
	local self = setmetatable({}, jClass)
	self.__classType = classType
	
	self.getClassType = function()
		return self.__classType
	end
	
	return self

end

function jClass.new(classType)
	return jClass._init(classType);

end

return jClass