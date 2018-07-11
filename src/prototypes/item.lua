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

local eiffelTowerPart = {
    type = "item",
    name = "eiffel-tower-part",
    icon = "__base__/graphics/icons/rocket-part.png",
    icon_size = 32,
    flags = {"goes-to-main-inventory", "hidden"},
    subgroup = "intermediate-product",
    order = "q[eiffel-tower-part]",
    stack_size = 5
  }

data:extend({eiffelTower, eiffelTowerPart})