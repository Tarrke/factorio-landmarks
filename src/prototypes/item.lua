-- item.lua

local eiffelTower = {}

eiffelTower.type = "item"
eiffelTower.name = "eiffel-tower"
eiffelTower.icon = "__landmarks__/graphics/icons/eiffel_tower.png"
eiffelTower.flags = {"goes-to-quickbar"}
eiffelTower.subgroup = "Landmarks"
eiffelTower.stack_size = 1

local eiffelTowerRevipe = {}

eiffelTowerRevipe.type = "recipe"
eiffelTowerRevipe.name = "eiffel-tower-recipe"
eiffelTowerRevipe.enabled = "true"
eiffelTowerRevipe.ingredients = { {"iron-stick", 100} }
eiffelTowerRevipe.result = "effeil-tower"

data:extend({eiffelTower, eiffelTowerRevipe})
