execute on target run tag @s add craft_target
execute if entity @a[tag=craft_target] at @s run function crafting:slot_interaction/store_item
tag @a remove craft_target
data remove entity @s interaction