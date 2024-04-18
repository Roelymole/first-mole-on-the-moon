#modloaded cfm

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;

val root = <biomesoplenty:plant_1:9>;
val sugar = <minecraft:sugar>;
val ethanol = <forge:bucketfilled>.withTag({FluidName: "ethanol", Amount: 1000});
val bucket = <minecraft:bucket>;

mods.cfm.Blender.addDrink("Root Beer", [root * 2, sugar * 4, ethanol], 2, [27, 18, 9]);
