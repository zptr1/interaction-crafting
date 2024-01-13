execute on attacker run tag @s add craft_target
execute if entity @a[tag=craft_target] at @s align xyz positioned ~.5 ~ ~.5 run function crafting:craft/craft_item
tag @a remove craft_target
data remove entity @s attack