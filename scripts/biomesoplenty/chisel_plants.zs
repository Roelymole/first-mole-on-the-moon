#modloaded biomesoplenty chisel

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import mods.chisel.Carving;

val grasses = [
	<minecraft:tallgrass:1>,
	<biomesoplenty:plant_0:3>,
	<biomesoplenty:plant_0:9>,
	<biomesoplenty:plant_1:7>
] as IItemStack[];

val lily_pads = [
	<minecraft:waterlily>,
	<biomesoplenty:waterlily>,
	<biomesoplenty:waterlily:1>,
	<biomesoplenty:waterlily:2>
] as IItemStack[];

val reeds = [
	<minecraft:reeds>,
	<biomesoplenty:plant_1:3>,
	<biomesoplenty:plant_1:5>,
	<biomesoplenty:plant_1:8>,
	//<biomesoplenty:plant_1:4>,
	<biomesoplenty:double_plant:1>
] as IItemStack[];

val bushes = [
	<minecraft:sapling>,
	<biomesoplenty:plant_0:2>,
	<biomesoplenty:plant_0:6>
] as IItemStack[];

/* for variation in grasses {
	Carving.addVariation("grass", variation);
} */

for variation in lily_pads {
	Carving.addVariation("waterlily", variation);
}

/* for variation in reeds {
	Carving.addVariation("reeds", variation);
} */

for variation in bushes {
	Carving.addVariation("bushes", variation);
}
