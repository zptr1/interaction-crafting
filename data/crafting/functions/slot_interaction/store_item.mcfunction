kill @e[distance=..0.1,type=item_display,tag=crafter_item]

execute on passengers run function crafting:slot_interaction/store_marker_item
execute unless data entity @a[tag=craft_target,limit=1] SelectedItem run return 1

summon item_display ~ ~ ~ {Tags:[crafting_init,crafter_item],transformation:{translation:[0f,0.01f,0f],left_rotation:[0.707f,0f,0f,0.707f],scale:[0.1f,0.1f,0.1f],right_rotation:[0f,0f,0f,1f]}}
data modify entity @e[distance=..1,type=item_display,tag=crafter_item,tag=crafting_init,limit=1] item set from entity @a[tag=craft_target,limit=1] SelectedItem
tag @e[distance=..0.1,type=item_display,tag=crafter_item] remove crafting_init

execute on target run item modify entity @s weapon.mainhand crafting:remove_one
