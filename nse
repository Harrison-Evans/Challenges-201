--The Head
local stdnse = require "stdnse"
local shortport = require "shortport"

description = [[
]]
---
-- @usage nmap --script http-webmin-helloworld.nse <target>


catagories = {"safe", "default"}
author = "Harrison E."

--The Rules
portrule = shortport.port_or_service ()

--The Action
action = function(host, port)

end
