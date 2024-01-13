## Interaction Crafting v1.0.0
# Made by https://github.com/zptr1

data modify storage crafting:data recipes set value []
data modify storage crafting:data tmp set value {}

scoreboard objectives add crafting_temp dummy
scoreboard objectives add crafting_place_glow_item_frame minecraft.used:minecraft.glow_item_frame

scoreboard players set check crafting_temp 0
function crafting:misc/check_1_21
execute if score check crafting_temp matches 0 run tellraw @a {"text":"[InteractionCrafting] The experimental 1.21 datapack needs to be enabled in order for this datapack to work.","color":"red"}

schedule function #crafting:load 1t
schedule function crafting:misc/check_recipe_count 2t