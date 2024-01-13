summon item ~ ~ ~ {Tags:[crafting_init],Item:{Count:1b,id:"minecraft:stone"}}
data modify entity @e[distance=..1,type=item,tag=crafting_init,limit=1] Item set from storage crafting:data tmp.iter[-1].r
tag @e[distance=..1,type=item] remove crafting_init

playsound minecraft:entity.villager.work_fletcher master @a ~ ~ ~
kill @e[distance=..0.5,type=item_display,tag=crafter_item]
execute as @e[distance=..0.5,type=interaction,tag=crafter_slot] on passengers run data modify entity @s data.stored_item set value {}

return run function crafting:custom_recipe/finalize