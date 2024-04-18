#priority 97

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

val iron = <minecraft:iron_ingot>;
val gold = <minecraft:gold_ingot>;
val redstone = <minecraft:redstone>;
val iron_ore = <ore:oreIron>;
val gold_ore = <minecraft:gold_ore>;
val redstone_ore = <minecraft:redstone_ore>;
val charcoal = <minecraft:coal:1>;
val logs = <ore:logWood>;
val planks = <ore:plankWood>;
val bread = <minecraft:bread>;

furnace.remove(iron);
furnace.remove(gold);
furnace.remove(redstone);
furnace.remove(charcoal);

furnace.addRecipe(iron, iron_ore, 0.7);
furnace.addRecipe(gold, gold_ore, 1.0);
furnace.addRecipe(redstone, redstone_ore, 0.3);
furnace.addRecipe(charcoal, logs, 0.15);

if (loadedMods has "appliedenergistics2") {
	val quartz = <appliedenergistics2:material:0>;
	val charged_quartz = <appliedenergistics2:material:1>;
	val quartz_ore = <appliedenergistics2:quartz_ore>;
	val charged_quartz_ore = <appliedenergistics2:charged_quartz_ore>;
	val sky_stone_block = <appliedenergistics2:smooth_sky_stone_block>;
	val sky_stone = <appliedenergistics2:sky_stone_block>;
	val flour = <appliedenergistics2:material:4>;
	val iron_dust = <appliedenergistics2:material:49>;
	val gold_dust = <appliedenergistics2:material:51>;

	furnace.remove(sky_stone_block);
	furnace.remove(bread);

	furnace.addRecipe(quartz, quartz_ore, 0.7);
	furnace.addRecipe(charged_quartz, charged_quartz_ore, 1.0);
	furnace.addRecipe(sky_stone_block, sky_stone, 0.5);
	furnace.addRecipe(bread, flour, 0.35);
	furnace.addRecipe(iron, iron_dust, 0.7);
	furnace.addRecipe(gold, gold_dust, 1.0);
}

if (loadedMods has "davincisvessels") {
	// Prevent the Anchor from being a fuel
	furnace.setFuel(<davincisvessels:anchorpoint>, 0);
	furnace.setFuel(<ore:balloon>, 100);
}

if (loadedMods has "chisel") {
	for wool in <ore:wool>.items {
		furnace.setFuel(wool, 100);
	}

	for carpet in <ore:carpet>.items {
		furnace.setFuel(carpet, 67);
	}

	if (loadedMods has "biomesoplenty") {
		val paper_wall = <chisel:paper:*>;
		val ash = <biomesoplenty:ash>;

		furnace.addRecipe(ash, paper_wall, 0.1);
	}
}

if (loadedMods has "biomesoplenty") {
	furnace.setFuel(<biomesoplenty:bamboo_thatching>, 500);
	furnace.setFuel(<biomesoplenty:bamboo>, 100);
	furnace.setFuel(<biomesoplenty:plant_1:5>, 100);

	val sugar_cane = <minecraft:reeds>;
	val river_cane = <biomesoplenty:plant_1:5>;

	furnace.addRecipe(river_cane, sugar_cane, 0.1);
}
