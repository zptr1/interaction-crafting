execute store result score tmp crafting_temp if data storage crafting:data recipes[]
execute if score tmp crafting_temp matches 2000.. run tellraw @a ["",{"text":"[InteractionCrafting] There are too many custom recipes (","color":"yellow"},{"score":{"name":"tmp","objective":"crafting_temp"},"color":"yellow"},{"text":")! This might cause some lag...","color":"yellow"}]
