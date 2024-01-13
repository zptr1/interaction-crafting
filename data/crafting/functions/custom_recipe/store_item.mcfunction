data modify storage crafting:data tmp.craft_items append from entity @s data.stored_item
execute unless data entity @s data.stored_item.id run return run data modify storage crafting:data tmp.craft_item_ids append value ""

data modify storage crafting:data tmp.macro.id set string entity @s data.stored_item.id 10
data modify storage crafting:data tmp.macro.id set from entity @s data.stored_item.tag.custom_item_id
function crafting:custom_recipe/shapeless/store_item with storage crafting:data tmp.macro

execute if data entity @s data.stored_item.tag.custom_item_id run return run data modify storage crafting:data tmp.craft_item_ids append from entity @s data.stored_item.tag.custom_item_id
data modify storage crafting:data tmp.craft_item_ids append string entity @s data.stored_item.id 10