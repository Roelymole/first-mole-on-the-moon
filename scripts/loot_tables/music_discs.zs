#modloaded galacticraftcore nuclearcraft loottweaker

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import loottweaker.LootTweaker;
import loottweaker.vanilla.loot.LootTable;
import loottweaker.vanilla.loot.LootPool;

val vanilla = [
    <minecraft:record_13>,
    <minecraft:record_cat>,
    <minecraft:record_blocks>,
    <minecraft:record_chirp>,
    <minecraft:record_far>,
    <minecraft:record_mall>,
    <minecraft:record_mellohi>,
    <minecraft:record_stal>,
    <minecraft:record_strad>,
    <minecraft:record_ward>,
    <minecraft:record_11>,
    <minecraft:record_wait>,
] as IItemStack[];

val nuclearcraft = {
    <nuclearcraft:record_wanderer>: [1],
    <nuclearcraft:record_end_of_the_world>: [2],
    <nuclearcraft:record_money_for_nothing>: [3],
    <nuclearcraft:record_hyperspace>: [0]
} as int[][IItemStack];

val treasure_chests = {
    0: LootTweaker.getTable("galacticraftcore:crashed_probe").getPool("crashed_probe"),
    1: LootTweaker.getTable("galacticraftcore:dungeon_tier_1").getPool("dungeon_tier_1"),
    2: LootTweaker.getTable("galacticraftcore:dungeon_tier_2").getPool("dungeon_tier_2"),
    3: LootTweaker.getTable("galacticraftcore:dungeon_tier_3").getPool("dungeon_tier_3")
} as LootPool[int];

val weights = {
    0: 3,
    1: 4,
    2: 4,
    3: 12
} as int[int];

val remove = {
    1: ["minecraft:record_blocks", "minecraft:record_far"],
    2: ["minecraft:record_mall", "minecraft:record_mellohi"],
    3: ["minecraft:record_chirp", "minecraft:record_wait", "minecraft:record_ward"]
} as string[][int];

for tier, names in remove {
    for name in names {
        treasure_chests[tier].removeEntry(name);
    }
}

for record, tiers in nuclearcraft {
    recipes.remove(record);

    for tier in tiers {
        treasure_chests[tier].addItemEntry(record, weights[tier]);
    }
}
