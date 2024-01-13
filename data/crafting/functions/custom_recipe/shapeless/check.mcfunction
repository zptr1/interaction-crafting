data modify storage crafting:data tmp.check set from storage crafting:data tmp.shapeless_items
execute store success score check crafting_temp run data modify storage crafting:data tmp.check set from storage crafting:data tmp.iter[-1].i
execute if score check crafting_temp matches 0 run return 1
