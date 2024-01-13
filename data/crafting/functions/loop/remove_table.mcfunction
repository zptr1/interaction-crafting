execute as @e[type=interaction,tag=crafter_base] at @s unless block ~ ~-1 ~ oak_planks run function crafting:remove_table
schedule function crafting:loop/remove_table 6t