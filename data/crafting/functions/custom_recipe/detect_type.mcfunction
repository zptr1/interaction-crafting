execute store result score @s crafting_temp if data storage crafting:data tmp.craft_items[].id
execute if score @s crafting_temp matches 0 run return fail

execute unless data storage crafting:data tmp.craft_items[6].id unless data storage crafting:data tmp.craft_items[7].id unless data storage crafting:data tmp.craft_items[8].id run tag @s add craft_2x2_top
execute unless entity @s[tag=craft_2x2_top] unless data storage crafting:data tmp.craft_items[0].id unless data storage crafting:data tmp.craft_items[1].id unless data storage crafting:data tmp.craft_items[2].id run tag @s add craft_2x2_bottom

data modify storage crafting:data tmp.craft_items_2x2 set value []

execute if entity @s[tag=craft_2x2_top] unless data storage crafting:data tmp.craft_items[2].id unless data storage crafting:data tmp.craft_items[5].id run function crafting:custom_recipe/2x2/top_left
execute if entity @s[tag=craft_2x2_top] unless data storage crafting:data tmp.craft_items[0].id unless data storage crafting:data tmp.craft_items[3].id run function crafting:custom_recipe/2x2/top_right

execute if entity @s[tag=craft_2x2_bottom] unless data storage crafting:data tmp.craft_items[5].id unless data storage crafting:data tmp.craft_items[8].id run function crafting:custom_recipe/2x2/bottom_left
execute if entity @s[tag=craft_2x2_bottom] unless data storage crafting:data tmp.craft_items[3].id unless data storage crafting:data tmp.craft_items[6].id run function crafting:custom_recipe/2x2/bottom_right

return 1