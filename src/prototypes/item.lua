-- item.lua

local eiffelTower = {
    type = "item",
    name = "eiffel-tower",
    icon = "__Landmarks__/graphics/icons/eiffel-tower.png",
    icon_size = 64,
    flags = {"goes-to-quickbar"},
    subgroup = "landmarks-steel-subgroup",
    stack_size = 1,
    place_result = "eiffel-tower-site"
}

data:extend({eiffelTower})