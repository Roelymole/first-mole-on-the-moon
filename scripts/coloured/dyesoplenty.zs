#modloaded biomesoplenty

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;

val dyes = {
	<minecraft:dye:1>: [
		<biomesoplenty:flower_1:5>,
		<biomesoplenty:plant_1:10>,
		<biomesoplenty:flower_0:11>
	],
	<minecraft:dye:5>: [
		<biomesoplenty:flower_1>,
		<biomesoplenty:flower_0:8>
	],
	<minecraft:dye:6>: [
		<biomesoplenty:flower_0:1>,
		<biomesoplenty:flower_0:3>
	],
	<minecraft:dye:7>: [
		<biomesoplenty:flower_0>
	],
	<minecraft:dye:8>: [
		<biomesoplenty:flower_0:12>,
		<biomesoplenty:ash>
	],
	<minecraft:dye:9>: [
		<biomesoplenty:flower_0:13>,
		<biomesoplenty:flower_0:6>,
		<biomesoplenty:flower_1:3>
	],
	<minecraft:dye:10>: [
		<biomesoplenty:mushroom:3>
	],
	<minecraft:dye:11>: [
		<biomesoplenty:flower_1:1>
	],
	<minecraft:dye:12>: [
		<biomesoplenty:flower_1:4>,
		<biomesoplenty:double_plant>,
		<biomesoplenty:flower_0:4>
	],
	<minecraft:dye:13>: [
		<biomesoplenty:flower_0:7>
	],
	<minecraft:dye:14>: [
		<biomesoplenty:flower_0:5>,
		<biomesoplenty:flower_0:15>
	],
	<biomesoplenty:blue_dye>: [
		<biomesoplenty:mushroom:2>,
		<biomesoplenty:flower_1:2>
	],
	<biomesoplenty:brown_dye>: [
		<biomesoplenty:mushroom:4>,
		<biomesoplenty:plant_1:4>,
		<biomesoplenty:double_plant:1>
	],
	<biomesoplenty:white_dye>: [
		<biomesoplenty:flower_0:9>,
		<biomesoplenty:flower_0:14>,
		<biomesoplenty:mushroom:1>
	],
	<biomesoplenty:black_dye>: [
		<biomesoplenty:flower_0:2>
	]
} as IItemStack[][IItemStack];

val convert = {
	<biomesoplenty:blue_dye>: <minecraft:dye:4>,
	<biomesoplenty:brown_dye>: <minecraft:dye:3>,
	<biomesoplenty:green_dye>: <minecraft:dye:2>,
	<biomesoplenty:white_dye>: <minecraft:dye:15>,
	<biomesoplenty:black_dye>: <minecraft:dye>
} as IItemStack[IItemStack];

val shadow_shroom = <biomesoplenty:mushroom:5>;
val purple_dye = <minecraft:dye:5>;

for dye, plants in dyes {
	for plant in plants {
		recipes.removeShapeless(dye * 2, [plant]);

		if (plant.definition.id == "biomesoplenty:mushroom") {
			furnace.addRecipe(dye, plant, 0.2);
		} else {
			recipes.addShapeless(dye, [plant]);
		}
	}
}

furnace.addRecipe(<biomesoplenty:brown_dye>, <minecraft:brown_mushroom>, 0.2);
furnace.addRecipe(<minecraft:dye:1>, <minecraft:red_mushroom>, 0.2);

// If BiomeTweaker is loaded, then Shadow Shrooms will be generated in the End
// Otherwise they are unused, so they should be hidden
if (loadedMods has "biometweaker") {
	furnace.addRecipe(purple_dye, shadow_shroom, 0.2);
} else if (loadedMods has "jei") {
	mods.jei.JEI.hide(shadow_shroom);
}

for dye, vanilla in convert {
	recipes.addShapeless(dye, [vanilla]);
}
