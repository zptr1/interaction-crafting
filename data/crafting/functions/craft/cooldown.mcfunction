execute if entity @s run tag @s add craft_cooldown
execute if entity @s run schedule function crafting:craft/cooldown 7t
execute unless entity @s as @e[type=interaction,tag=craft_cooldown] at @s align xyz positioned ~.5 ~ ~.5 run function crafting:craft/craft_item