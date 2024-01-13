tag @s remove craft_scheduled

execute store result score @s crafting_temp run data get block ~ -64 ~-1 Items
execute if score @s crafting_temp matches 0 run return run function crafting:craft/fail
scoreboard players reset @s crafting_temp

summon item ~ ~.1 ~ {Tags:[crafting_init],Item:{Count:1b,id:"minecraft:stone"}}
data modify entity @e[distance=..1,type=item,tag=crafting_init,limit=1] Item set from block ~ -64 ~-1 Items[0]
tag @e[distance=..1,type=item] remove crafting_init

playsound minecraft:entity.villager.work_fletcher master @a ~ ~ ~
kill @e[distance=..0.5,type=item_display,tag=crafter_item]
execute as @e[distance=..0.5,type=interaction,tag=crafter_slot] on passengers run data modify entity @s data.stored_item set value {}

function crafting:craft/return_bedrock