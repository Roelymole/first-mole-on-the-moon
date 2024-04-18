#modloaded galacticraftcore loottweaker

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import loottweaker.LootTweaker;
import loottweaker.vanilla.loot.LootTable;
import loottweaker.vanilla.loot.LootPool;

val mending = <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 70 as short}]});

val treasure_chests = {
    0: LootTweaker.getTable("galacticraftcore:dungeon_tier_1").getPool("dungeon_tier_1"),
    1: LootTweaker.getTable("galacticraftcore:dungeon_tier_2").getPool("dungeon_tier_2"),
    2: LootTweaker.getTable("galacticraftcore:dungeon_tier_3").getPool("dungeon_tier_3")
} as LootPool[int];

val weights = {
    0: 4,
    1: 8,
    2: 12
} as int[int];

for tier, weight in weights {
    treasure_chests[tier].addItemEntry(mending, weight);
}
