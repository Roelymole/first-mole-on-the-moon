#modloaded nuclearcraft loottweaker

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import loottweaker.LootTweaker;
import loottweaker.vanilla.loot.LootTable;
import loottweaker.vanilla.loot.LootPool;
import loottweaker.vanilla.loot.Functions;

val badge = <nuclearcraft:radiation_badge>;
val radaway = <nuclearcraft:radaway>;
val radaway_slow = <nuclearcraft:radaway_slow>;
val rad_x = <nuclearcraft:rad_x>;

val abandoned_mineshaft = LootTweaker.getTable("minecraft:chests/abandoned_mineshaft");
abandoned_mineshaft.addPool("radiation", 1.0, 2.0, 0.0, 0.0);
val radiation = abandoned_mineshaft.getPool("radiation");

radiation.addItemEntry(badge, 1, "radiation_badge");
radiation.addItemEntry(radaway, 5, 1, [Functions.setCount(1, 5)], [], "radaway");
radiation.addItemEntry(radaway_slow, 5, 1, [Functions.setCount(1, 5)], [], "radaway_slow");
radiation.addItemEntry(rad_x, 5, 1, [Functions.setCount(1, 5)], [], "rad_x");
