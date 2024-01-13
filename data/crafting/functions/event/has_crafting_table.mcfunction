advancement revoke @s only crafting:has_crafting_table

summon item ~ ~ ~ {Tags:[crafting_init],Item:{id:"glow_item_frame",Count:1b,tag:{custom_item_id:"crafting_table",display:{Name:'{"translate":"block.minecraft.crafting_table","italic":false}'},EntityTag:{Invisible:1b,Silent:1b,Fixed:1b,Invulnerable:1b,Tags:[crafting_place_table]}}}}

execute store result score @s crafting_temp run clear @s crafting_table
execute store result entity @e[distance=..1,type=item,tag=crafting_init,limit=1] Item.Count byte 1 run scoreboard players get @s crafting_temp

tag @e[distance=..1,type=item,tag=crafting_init,limit=1] remove crafting_init
scoreboard players reset @s crafting_temp
