execute align xyz positioned ~.5 ~.5 ~.5 unless block ~ ~ ~ #crafting:crafting_table_placeable run return run function crafting:place/fail

scoreboard players reset @a crafting_place_glow_item_frame
execute align xyz positioned ~.5 ~ ~.5 run function crafting:place/create_table
kill @s