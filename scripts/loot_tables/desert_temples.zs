#modloaded nuclearcraft loottweaker

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import loottweaker.LootTweaker;
import loottweaker.vanilla.loot.LootTable;
import loottweaker.vanilla.loot.LootPool;
import loottweaker.vanilla.loot.Functions;

val remove = [
    "minecraft:bone",
    //"minecraft:spider_eye",
    "minecraft:rotten_flesh"
] as string[];

val deadbush = <minecraft:deadbush>;
val speed = <nuclearcraft:upgrade>;
val energy = <nuclearcraft:upgrade:1>;
val chisel = <chisel:chisel_diamond>;
val persimmon = <biomesoplenty:persimmon>;

val temple = LootTweaker.getTable("minecraft:chests/desert_pyramid");
val main = temple.getPool("main");

for entryName in remove {
    main.removeEntry(entryName);
}

main.addItemEntry(deadbush, 15, 1, deadbush.name);
main.addItemEntry(speed, 10, 1, "nuclearcraft:speed_upgrade");
main.addItemEntry(energy, 10, 1, "nuclearcraft:energy_upgrade");
main.addItemEntry(chisel, 5, 1, "chisel:chisel_malachite");
main.addItemEntry(persimmon, 25, 1, [Functions.setCount(1, 5)], [], persimmon.name);
