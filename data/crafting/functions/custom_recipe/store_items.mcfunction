data modify storage crafting:data tmp.craft_items set value []
data modify storage crafting:data tmp.craft_item_ids set value []

execute as @e[distance=..0.5,type=interaction,tag=crafter_slot_0] on passengers run function crafting:custom_recipe/store_item
execute as @e[distance=..0.5,type=interaction,tag=crafter_slot_1] on passengers run function crafting:custom_recipe/store_item
execute as @e[distance=..0.5,type=interaction,tag=crafter_slot_2] on passengers run function crafting:custom_recipe/store_item
execute as @e[distance=..0.5,type=interaction,tag=crafter_slot_3] on passengers run function crafting:custom_recipe/store_item
execute as @e[distance=..0.5,type=interaction,tag=crafter_slot_4] on passengers run function crafting:custom_recipe/store_item
execute as @e[distance=..0.5,type=interaction,tag=crafter_slot_5] on passengers run function crafting:custom_recipe/store_item
execute as @e[distance=..0.5,type=interaction,tag=crafter_slot_6] on passengers run function crafting:custom_recipe/store_item
execute as @e[distance=..0.5,type=interaction,tag=crafter_slot_7] on passengers run function crafting:custom_recipe/store_item
execute as @e[distance=..0.5,type=interaction,tag=crafter_slot_8] on passengers run function crafting:custom_recipe/store_item