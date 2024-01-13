data modify entity @e[distance=..1,type=item,nbt={Item:{id:"minecraft:oak_planks",Count:1b}},limit=1] Item set value {id:"glow_item_frame",Count:1b,tag:{custom_item_id:"crafting_table",display:{Name:'{"translate":"block.minecraft.crafting_table","italic":false}'},EntityTag:{Invisible:1b,Silent:1b,Fixed:1b,Invulnerable:1b,Tags:[crafting_place_table]}}}

execute as @e[distance=..0.5,type=interaction,tag=crafter_slot] run function crafting:remove_table_slot
kill @e[distance=..0.5,type=block_display,tag=crafter_texture]
kill @e[distance=..0.5,type=item_display,tag=crafter_item]
kill @s