#modloaded loottweaker

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import loottweaker.LootTweaker;
import loottweaker.vanilla.loot.LootTable;
import loottweaker.vanilla.loot.LootPool;
import loottweaker.vanilla.loot.Functions;

val elytra = <minecraft:elytra>;
val skull = <minecraft:skull:5>;
val dragon = LootTweaker.getTable("minecraft:entities/ender_dragon");

val wings = dragon.addPool("elytra", 1, 1, 0, 0);
wings.addItemEntry(elytra, 1);

val head = dragon.addPool("head", 1, 1, 0, 0);
head.addItemEntry(skull, 1);
