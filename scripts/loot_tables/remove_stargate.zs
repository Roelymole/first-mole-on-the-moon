#modloaded sgcraft loottweaker

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import loottweaker.LootTweaker;
import loottweaker.vanilla.loot.LootTable;
import loottweaker.vanilla.loot.LootPool;

val tables = {
    "minecraft:chests/simple_dungeon": ["sgcraft0"],
    "minecraft:chests/spawn_bonus_chest": ["sgcraft0", "sgcraft1", "sgcraft2", "sgcraft3"],
    "minecraft:chests/stronghold_library": ["sgcraft0"],
    "minecraft:chests/village_blacksmith": ["sgcraft0"]
} as string[][string];

var table as LootTable;
for name, pools in tables {
    table = LootTweaker.getTable(name);
    for pool in pools {
        table.removePool(pool);
    }
}
