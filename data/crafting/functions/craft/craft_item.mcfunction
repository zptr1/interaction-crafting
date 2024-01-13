execute if function crafting:custom_recipe/craft run return 1

# fix
tag @s remove craft_cooldown
execute unless block ~ -64 ~ bedrock run return run function crafting:craft/cooldown
execute unless block ~ -64 ~-1 bedrock run return run function crafting:craft/cooldown
execute unless block ~ -64 ~-2 bedrock run return run function crafting:craft/cooldown

# TODO: temporary fix
execute unless dimension the_end run fill ~ -63 ~-1 ~ -63 ~1 bedrock

setblock ~ -64 ~ crafter{Lock:"me when ඞඞඞඞඞඞඞඞඞඞඞඞඞඞඞඞඞඞඞඞඞඞඞඞඞඞඞඞඞඞඞඞඞඞඞඞඞඞඞඞඞඞඞඞඞඞඞඞඞඞ"}
setblock ~ -64 ~-1 barrel{Lock:"when me ඞඞඞඞඞඞඞඞඞඞඞඞඞඞඞඞඞඞඞඞඞඞඞඞඞඞඞඞඞඞඞඞඞඞඞඞඞඞඞඞඞඞඞඞඞඞඞඞඞඞ",}

execute as @e[distance=..0.5,type=interaction,tag=crafter_slot] on passengers if data entity @s data.stored_item.id run data modify block ~ -64 ~ Items append from entity @s data.stored_item

setblock ~ -64 ~1 redstone_block

tag @s add craft_scheduled
schedule function crafting:craft/delay 6t