-- groups.lua

local landmarksGroup = {
    type = "item-group",
    name = "landmarks-group",
    order = "landmarks",
    icon = "__Landmarks__/graphics/item-group/landmarks.png",
    icon_size = 64
 }

 local landmarksSubgroup = {
    type = "item-subgroup",
    name = "landmarks-steel-subgroup",
    group = "landmarks-group",
    order = "a",
 }

local landmarksCraftEiffel = {
  type = "recipe-category",
  name = "landmarks-crafting-eiffel-tower",
}

  data:extend({landmarksGroup, landmarksSubgroup, landmarksCraftEiffel})