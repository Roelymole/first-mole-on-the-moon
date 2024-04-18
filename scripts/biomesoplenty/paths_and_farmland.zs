#modloaded biomesoplenty jei

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import mods.jei.JEI;

val blocks = [
	<biomesoplenty:grass_path:1>,
	<biomesoplenty:grass_path:2>,
	<biomesoplenty:farmland_0:1>,
] as IItemStack[];

for block in blocks {
	JEI.addItem(block);
}