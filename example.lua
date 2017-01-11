--[[
	This is supposed to serve as a small example und tutorial for
	how to use this module. Thank you for using my little
	class library.

	- j1sh
]]--


-- top of your script, require the module
local jClass = require "jLuaClass"


-- this is where we start making our custom class

-- initialize an empty table, name it whatever
local Hamburger = {}


-- create a function named <class>.new()
-- add in the arguments you want this class to take
function Hamburger.new(condiment, cheese)

	-- declare self as a new jClass,
	-- with the argument being the class type
	local self = jClass.new("Hamburger")
	self.__index = Hamburger


	-- set the rest of your values here
	self.condiment = condiment
	self.cheese = cheese


	-- declare any functions you want here
	self.GetCondiments = function()
		return self.condiment
	end

	return self
end




--- Done ---
local whopper = Hamburger.new("Pickles & Onions", false)

print(whopper:GetCondiments())