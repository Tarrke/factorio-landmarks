-- item.lua

local landmarksSubgroup = {}

landmarksSubgroup.type = "item-subgroup"
landmarksSubgroup.name = "landmarks-subgroup"
landmarksSubgroup.group = "production"
landmarksSubgroup.order = "e-a"

local eiffelTower = {}

eiffelTower.type = "item"
eiffelTower.name = "eiffel-tower"
eiffelTower.icon = "__Landmarks__/graphics/icons/eiffel-tower.png"
eiffelTower.icon_size = 64
eiffelTower.flags = {"goes-to-quickbar"}
eiffelTower.subgroup = "landmarks-subgroup"
eiffelTower.stack_size = 1

data:extend({landmarksSubgroup, eiffelTower})