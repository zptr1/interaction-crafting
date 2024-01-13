advancement revoke @s only crafting:player_base_click
execute as @e[distance=..3,type=interaction,tag=crafter_base,tag=!craft_scheduled] run function crafting:craft/detect
