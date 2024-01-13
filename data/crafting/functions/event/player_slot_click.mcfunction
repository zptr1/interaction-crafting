advancement revoke @s only crafting:player_slot_click
execute as @e[distance=..3,type=interaction,tag=crafter_slot] run function crafting:slot_interaction/detect
