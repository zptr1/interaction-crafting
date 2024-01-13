tag @p[scores={crafting_place_glow_item_frame=1..}] add crafting_table_place_fail
scoreboard players reset @a crafting_place_glow_item_frame
schedule function crafting:place/give_back 1t

kill @s