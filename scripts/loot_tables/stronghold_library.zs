#modloaded loottweaker

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import loottweaker.LootTweaker;
import loottweaker.vanilla.loot.LootTable;
import loottweaker.vanilla.loot.LootPool;
import loottweaker.vanilla.loot.Functions;

val web = <minecraft:web>;
val ink = <cfm:item_ink_cartridge>;

val library_chest = LootTweaker.getTable("minecraft:chests/stronghold_library");
val main = library_chest.getPool("main");

main.addItemEntry(web, 10, 1, web.name);
main.addItemEntry(ink, 10, 1, [Functions.setCount(1, 5)], [], ink.name);
