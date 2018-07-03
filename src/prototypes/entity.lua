-- entity.lua

local eiffelTower = {
    type = "assembling-machine",
    name = "eiffel-tower-site", 
    icon = "__Landmarks__/graphics/icons/eiffel-tower.png",
    icon_size = 64,
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "eiffel-tower"},
    -- fast_replaceable_group = "air-filter-machine",
    max_health = 1500,
    corpse = "big-remnants",
    collision_box = {{-1, -1}, {1, 1}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    --animation = {
    --    filename = "truc.png",
    --    priority = "high",
    --    width = 99,
    --    height = 102,
    --    frame_count = 32,
    --    line_length = 8,
    --    shift = {0.4, -0.06}
    --},
    open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
    working_sound = {
        sound = { { filename = "__base__/sound/electric-furnace.ogg", volume = 0.7 } },
        idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
        apparent_volume = 1.5,
    },
    crafting_categories = {"crafting-eiffel-tower"},
    source_inventory_size = 1,
    result_inventory_size = 1,
    crafting_speed = 1.0,
    energy_source =
    {
        type = "electric",
        usage_priority = "secondary-input",
        emissions = -0.06
    },
    energy_usage = "250kW",
    ingredient_count = 1,
    module_slots = 2
}

data:extend({eiffelTower})
