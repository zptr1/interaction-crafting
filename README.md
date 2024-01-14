# Interaction Crafting

This Minecraft datapack replaces the default and boring crafting table with a new interaction-based crafting system for 1.20.3+.

### Features

- Lightweight
- Supports all recipes (including modded)
- Supports custom data-driven NBT recipes

### Showcase

![](https://i.imgur.com/Z6Zgu0O.gif)

### Installation

⚠️ Make sure you have experimental 1.21 features enabled! ([here's how to enable them on existing worlds](https://www.youtube.com/watch?v=MmLHVI-U5xM))

## How?

The datapack uses the new crafter block (hence why it requires experimental features enabled).

When a crafting table is used, it places the crafter block at the bedrock level in the world, loads the used recipe into it, activates it and takes the result (and replaces it back to bedrock).

This allows to support any vanilla and custom recipes.

Unfortunately, this breaks a lot of custom recipes from datapacks, since a lot of datapacks use knowledge books and advancements to output NBT items.

## API (defining custom NBT recipes)

You can define your own recipes in your datapacks using the `data` command:
```elm
data modify storage crafting:data recipes append value {...}
```

### Initialization

While you can define custom recipes at any time, all defined recipes are reset every time the datapack is reloaded. Instead, add your own function to the `#crafting:load` function tag, and define custom recipes there. All functions from this tag will be called when the datapack is initialized so you can add your own recipes safely.

### Recipe data

Each recipe needs to have three properties: type (`3x3`, `2x2` or `shapeless`), `i` (ingredients) and `r` (result)

3x3 and 2x2 recipes take `i` as an array of item IDs, and shapeless recipes take `i` as an object of item IDs and the required amount.

Although, to optimize recipe checks, the type of the recipe needs to be provided with a key rather than a value; so instead of providing a separate `type` property, you need to provide either `3x3`, `2x2` or `shapeless` properties and set their values to `1b` (`true`)

Here's an example recipe:
```elm
data modify storage crafting:data recipes append value {\
  3x3: 1b, \
  i: [\
    "", "diamond", "", \
    "diamond", "nether_star", "diamond", \
    "", "diamond", "" \
  ], \
  r: {id: "minecraft:totem_of_undying", Count: 1b}\
}
```
For a shapeless recipe, you would define the ingredients with an object like `{diamond: 4, nether_star: 1}`

### Custom Items

You can define custom item IDs with the `custom_item_id` property. If that property is present, its value will be used instead of vanilla IDs.

Here's a different example using custom item IDs:
```elm
data modify storage crafting:data recipes append value {\
  shapeless: 1b, \
  i: {iron_ingot: 1, charcoal: 2}, \
  r: {\
    id: "minecraft:netherite_scrap", Count: 1b, \
    tag: {\
      custom_item_id: "steel_plate", \
      display:{Name:'{"text":"Steel Plate","italic":false}'} \
    }\
  }\
}

data modify storage crafting:data recipes append value {\
  2x2: 1b, \
  i: [\
    "steel_plate", "steel_plate", \
    "steel_plate", "steel_plate" \
  ], \
  r: {\
    id: "minecraft:netherite_ingot", Count: 1b, \
    tag: {\
      custom_item_id: "steel_ingot", \
      display:{Name:'{"text":"Steel Ingot","italic":false}'} \
    }\
  }\
}
```
