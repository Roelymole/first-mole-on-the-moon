#modloaded nuclearcraft loottweaker

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import loottweaker.LootTweaker;
import loottweaker.vanilla.loot.LootTable;
import loottweaker.vanilla.loot.LootPool;
import loottweaker.vanilla.loot.Functions;

val remove = [
    "minecraft:apple",
    "minecraft:bread",
    "minecraft:sapling"
] as string[];

val anvil = <minecraft:anvil>;
val charcoal = <minecraft:coal:1>;

val pickaxe = <galacticraftcore:steel_pickaxe>;
val axe = <galacticraftcore:steel_axe>;
val hoe = <galacticraftcore:steel_hoe>;
val shovel = <galacticraftcore:steel_shovel>;
val sword = <galacticraftcore:steel_sword>;
val helmet = <galacticraftcore:steel_helmet>;
val chestplate = <galacticraftcore:steel_chestplate>;
val leggings = <galacticraftcore:steel_leggings>;
val boots = <galacticraftcore:steel_boots>;

val steel = <nuclearcraft:alloy:5>;
val bronze = <nuclearcraft:alloy>;
val silver = <nuclearcraft:ingot:13>;
val copper = <galacticraftcore:basic_item:3>;
val compressed_iron = <galacticraftcore:basic_item:11>;
val compressed_steel = <galacticraftcore:basic_item:9>;
val compressed_bronze = <galacticraftcore:basic_item:10>;

val blacksmith = LootTweaker.getTable("minecraft:chests/village_blacksmith");
val main = blacksmith.getPool("main");
val mods = blacksmith.addPool("mods", 3, 8, 0, 0);

for entryName in remove {
    main.removeEntry(entryName);
}

main.addItemEntry(anvil, 1, 1, anvil.name);
main.addItemEntry(charcoal, 15, 1, [Functions.setCount(1, 5)], [], "minecraft:charcoal");

mods.addItemEntry(pickaxe, 5, 1, pickaxe.name);
mods.addItemEntry(sword, 5, 1, sword.name);
mods.addItemEntry(helmet, 5, 1, helmet.name);
mods.addItemEntry(chestplate, 5, 1, chestplate.name);
mods.addItemEntry(leggings, 5, 1, leggings.name);
mods.addItemEntry(boots, 5, 1, boots.name);

mods.addItemEntry(steel, 10, 1, [Functions.setCount(1, 5)], [], "nuclearcraft:steel_ingot");
mods.addItemEntry(bronze, 5, 1, [Functions.setCount(1, 5)], [], "nuclearcraft:bronze_ingot");
mods.addItemEntry(silver, 1, 1, [Functions.setCount(1, 3)], [], "nuclearcraft:silver_ingot");
mods.addItemEntry(copper, 15, 1, [Functions.setCount(1, 5)], [], "galacticraftcore:copper_ingot");
mods.addItemEntry(compressed_iron, 1, 1, [Functions.setCount(1, 5)], [], "galacticraftcore:compressed_iron");
mods.addItemEntry(compressed_steel, 5, 1, [Functions.setCount(1, 5)], [], "galacticraftcore:compressed_steel");
mods.addItemEntry(compressed_bronze, 3, 1, [Functions.setCount(1, 5)], [], "galacticraftcore:compressed_bronze");
