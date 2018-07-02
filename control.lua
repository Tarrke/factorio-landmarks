-- control.lua

require "mod-gui"
require "landmarks/landmarks"

-- when creating a new game, initialize data structure
script.on_init(landmarks.mod_init)

-- When a player is joining, create the UI for them
script.on_event(defines.events.on_player_created, function(event)
    local player = game.players[event.player_index]
    landmarks.mod_init()
end)

-- if the version of the mod or any other version changed
script.on_configuration_changed(function(_)
    landmarks.mod_init()
end)

-- on mod settings changed
script.on_event(defines.events.on_runtime_mod_setting_changed, function(event)
    local player = game.players[event.player_index]
    local key = event.setting
end)