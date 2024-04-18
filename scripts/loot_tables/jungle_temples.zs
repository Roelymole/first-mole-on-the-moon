#modloaded nuclearcraft loottweaker

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import loottweaker.LootTweaker;
import loottweaker.vanilla.loot.LootTable;
import loottweaker.vanilla.loot.LootPool;
import loottweaker.vanilla.loot.Functions;

val remove = [
    "minecraft:emerald",
    "minecraft:bone",
    "minecraft:rotten_flesh"
] as string[];

val overgrowth = <buildingblocks:overgrowth>;
val emerald = <minecraft:emerald>;
val emerald_block = <minecraft:emerald_block>;
val totum = <minecraft:totem_of_undying>;
val sapling = <biomesoplenty:sapling_1:7>;

val pickaxe = <minecraft:diamond_pickaxe>;
val axe = <minecraft:diamond_axe>;
val hoe = <minecraft:diamond_hoe>;
val shovel = <minecraft:diamond_shovel>;
val sword = <minecraft:diamond_sword>;
val helmet = <minecraft:diamond_helmet>;
val chestplate = <minecraft:diamond_chestplate>;
val leggings = <minecraft:diamond_leggings>;
val boots = <minecraft:diamond_boots>;

val temple = LootTweaker.getTable("minecraft:chests/jungle_temple");
val main = temple.getPool("main");

val dispenser = LootTweaker.getTable("minecraft:chests/jungle_temple_dispenser").getPool("main");

for entryName in remove {
    main.removeEntry(entryName);
}

main.addItemEntry(overgrowth, 20, 1, overgrowth.name);
main.addItemEntry(emerald, 10, 1, [Functions.setCount(1, 5)], [], emerald.name);
main.addItemEntry(emerald_block, 2, 1, [Functions.setCount(1, 3)], [], emerald_block.name);
main.addItemEntry(totum, 1, 1, totum.name);
main.addItemEntry(sapling, 1, 1, sapling.name);

main.addItemEntry(pickaxe, 1, 1, pickaxe.name);
main.addItemEntry(sword, 1, 1, sword.name);
main.addItemEntry(helmet, 1, 1, helmet.name);
main.addItemEntry(chestplate, 1, 1, chestplate.name);
main.addItemEntry(leggings, 1, 1, leggings.name);
main.addItemEntry(boots, 1, 1, boots.name);

val arrow = function(effect as string) as IItemStack {
    return <minecraft:tipped_arrow>.withTag({Potion: effect});
};

val effects = {
    //"minecraft:slowness": 5,
    //"minecraft:long_slowness": 5,
    //"minecraft:harming": 20,
    "minecraft:strong_harming": 10,
    //"minecraft:poison": 20,
    "minecraft:long_poison": 10,
    "minecraft:strong_poison": 10,
    //"minecraft:weakness": 5,
    //"minecraft:long_weakness": 5
} as int[string];

for effect, weight in effects {
    dispenser.addItemEntry(arrow(effect), weight, 1, [Functions.setCount(2, 7)], [], effect);
}
