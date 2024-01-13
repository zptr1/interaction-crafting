data modify storage crafting:data tmp set value {craft_items:[],craft_item_ids:[],shapeless_items:{}}

function crafting:custom_recipe/store_items
execute unless function crafting:custom_recipe/detect_type run return fail

data modify storage crafting:data tmp.iter set from storage crafting:data recipes
execute if function crafting:custom_recipe/check_recipe run return 1

function crafting:custom_recipe/finalize
return fail