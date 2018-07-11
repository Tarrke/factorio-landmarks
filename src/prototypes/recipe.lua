-- recipe.lua


local eiffelTowerRecipe = {
    type = "recipe",
    name = "eiffel-tower-recipe",
    enabled = "true",
    ingredients = { {"iron-stick", 100} },
    result = "eiffel-tower",
    --energy_required = 
}

local eiffelTowerPartRecipe = {
    type = "recipe",
    name = "eiffel-tower-part",
    energy_required = 3,
    enabled = true,
    hidden = false,
    category = "landmarks-crafting-eiffel-tower",
    ingredients =
    {
      {"steel-plate", 100},
      {"concrete", 10},
      {"iron-plate", 30}
    },
    result= "eiffel-tower-part"
}

data:extend({eiffelTowerRecipe, eiffelTowerPartRecipe})
