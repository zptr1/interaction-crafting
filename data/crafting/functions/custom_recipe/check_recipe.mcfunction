execute if data storage crafting:data tmp.iter[-1].3x3 if function crafting:custom_recipe/3x3/check run return run function crafting:custom_recipe/success
execute if data storage crafting:data tmp.iter[-1].2x2 if entity @s[tag=craft_2x2] if function crafting:custom_recipe/2x2/check run return run function crafting:custom_recipe/success
execute if data storage crafting:data tmp.iter[-1].shapeless if function crafting:custom_recipe/shapeless/check run return run function crafting:custom_recipe/success

data remove storage crafting:data tmp.iter[-1]
execute if data storage crafting:data tmp.iter[{}] run function crafting:custom_recipe/check_recipe