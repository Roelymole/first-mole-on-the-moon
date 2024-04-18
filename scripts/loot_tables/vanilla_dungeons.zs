#modloaded toolbelt loottweaker

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import loottweaker.LootTweaker;
import loottweaker.vanilla.loot.LootTable;
import loottweaker.vanilla.loot.LootPool;
import loottweaker.vanilla.loot.Functions;

val lead = <nuclearcraft:ingot:2>;
val bronze = <nuclearcraft:alloy>;
val steel = <nuclearcraft:alloy:5>;
val graphite = <nuclearcraft:ingot:8>;
val pouch = <toolbelt:pouch>;

val dungeon = LootTweaker.getTable("minecraft:chests/simple_dungeon");
val pool1 = dungeon.getPool("pool1");

pool1.removeEntry("minecraft:gold_ingot");
pool1.removeEntry("minecraft:iron_ingot");
pool1.removeEntry("minecraft:redstone");
pool1.removeEntry("minecraft:coal");
pool1.addItemEntry(lead, 5, 1, [Functions.setCount(1, 4)], [], lead.name);
pool1.addItemEntry(bronze, 10, 1, [Functions.setCount(1, 4)], [], bronze.name);
pool1.addItemEntry(steel, 15, 1, [Functions.setCount(1, 4)], [], steel.name);
pool1.addItemEntry(pouch, 20, 1, "pouch");
