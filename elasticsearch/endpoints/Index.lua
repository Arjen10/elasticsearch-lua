-------------------------------------------------------------------------------
-- Importing modules
-------------------------------------------------------------------------------
local Endpoint = require "endpoints.Endpoint"

-------------------------------------------------------------------------------
-- Declaring module
-------------------------------------------------------------------------------
local Index = Endpoint:new()

-------------------------------------------------------------------------------
-- Function to calculate the http request method
--
-- @return    string    The HTT request method
-------------------------------------------------------------------------------
function Index:getMethod()
  if self.id ~= nil then
    return "PUT"
  else
    return "POST"
  end
end

-------------------------------------------------------------------------------
-- Function to calculate the URI
--
-- @return    string    The URI
-------------------------------------------------------------------------------
function Index:getUri()
  local uri = "/" .. self.index .. "/" .. self.type .. "/"
  if self.id ~= nil then
    uri = uri .. self.id .. "/"
  end
  return uri
end

-------------------------------------------------------------------------------
-- Returns an instance of Index class
-------------------------------------------------------------------------------
function Index:new(o)
  o = o or {}
  setmetatable(o, self)
  self.__index = self
  return o
end

return Index
