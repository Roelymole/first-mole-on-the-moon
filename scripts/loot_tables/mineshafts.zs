#modloaded nuclearcraft loottweaker

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import loottweaker.LootTweaker;
import loottweaker.vanilla.loot.LootTable;
import loottweaker.vanilla.loot.LootPool;
import loottweaker.vanilla.loot.Functions;

val probe = <theoneprobe:iron_helmet_probe>.withTag({theoneprobe: 1});
val pickaxe = <galacticraftcore:steel_pickaxe>;
val tnt = <minecraft:tnt>;

val abandoned_mineshaft = LootTweaker.getTable("minecraft:chests/abandoned_mineshaft");
val main = abandoned_mineshaft.getPool("main");
val pool1 = abandoned_mineshaft.getPool("pool1");

main.removeEntry("minecraft:iron_pickaxe");
main.addItemEntry(pickaxe, 5, 1, pickaxe.name);
main.addItemEntry(probe, 5, 1, probe.name);

pool1.removeEntry("minecraft:gold_ingot");
pool1.removeEntry("minecraft:iron_ingot");
pool1.removeEntry("minecraft:redstone");
pool1.removeEntry("minecraft:dye");
pool1.removeEntry("minecraft:coal");
pool1.addItemEntry(tnt, 15, 1, [Functions.setCount(1, 5)], [], tnt.name);
