#modloaded biomesoplenty

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import scripts.utils.removeAndHide.hideList;

val items = [
	<biomesoplenty:earth>,
	<biomesoplenty:grass>,
	<biomesoplenty:plant_1:1>,
	//<biomesoplenty:terrarium:15>,
	<biomesoplenty:flower_0:10>
] as IItemStack[];

hideList(items);

recipes.removeByRecipeName("biomesoplenty:ender_terrarium");
recipes.removeByRecipeName("biomesoplenty:black_dye_from_enderlotus");

<ore:grass>.remove(<biomesoplenty:grass>);
