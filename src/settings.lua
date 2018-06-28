-- settings.lua
-- holds our settings

--[[
Types:
* bool-setting
* int-setting
* double-setting
* string-setting
]]--

--[[
Setting_types :
* startup: This kind of setting is available in the prototype stage, and can not be changed runtime. 
           They have to be set to the same values for all players on a server.
* runtime-global: This kind of setting is global to an entire save game and can be changed runtime. 
                  On servers, only admins can change these settings.
* runtime-per-user: This kind of setting is only available runtime in the control.lua stage 
                    and each player has their own instance of this setting. When a player joins a 
                    server their local setting of "keep mod settings per save" determines if the 
                    local settings they have set are synced to the loaded save or if the save's 
                    settings are used.
]]--

data:extend({
    {
        type = "bool-setting", 
        name = "my-mod-test-setting",
        setting_type = "runtime-global",
        default_value = true,
        order = "a-b" --order in lexicographic order
    }
})