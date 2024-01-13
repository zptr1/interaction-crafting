summon item ~ ~.1 ~ {Tags:[crafting_init],Item:{id:"minecraft:stone",Count:1b}}
data modify entity @e[distance=..2,type=item,tag=crafting_init,limit=1] Item set from entity @s data.stored_item
execute unless data entity @s data.stored_item run kill @e[distance=..2,type=item,tag=crafting_init]
tag @e[distance=..2,type=item,tag=crafting_init] remove crafting_init

data modify entity @s data.stored_item set value {}
data modify entity @s data.stored_item set from entity @a[tag=craft_target,limit=1] SelectedItem
data modify entity @s data.stored_item.Slot set from entity @s data.slot
data modify entity @s data.stored_item.Count set value 1b