$execute store result score @s crafting_temp run data get storage crafting:data tmp.shapeless_items.$(id)
scoreboard players add @s crafting_temp 1
$execute store result storage crafting:data tmp.shapeless_items.$(id) int 1 run scoreboard players get @s crafting_temp
scoreboard players reset @s crafting_temp
