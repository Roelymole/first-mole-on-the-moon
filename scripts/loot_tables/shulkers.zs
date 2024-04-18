#modloaded loottweaker

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import loottweaker.LootTweaker;
import loottweaker.vanilla.loot.LootTable;
import loottweaker.vanilla.loot.LootPool;
import loottweaker.vanilla.loot.Functions;

val shell = <minecraft:shulker_shell>;
val shulker = LootTweaker.getTable("minecraft:entities/shulker");

shulker.removePool("main");
val main = shulker.addPool("main", 1, 1, 0, 0);
main.addItemEntry(shell * 2, 1);
