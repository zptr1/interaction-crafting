execute as @e[type=glow_item_frame,tag=crafting_place_table] at @s run function crafting:place/place
schedule function crafting:loop/create_table 2t