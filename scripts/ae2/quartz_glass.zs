#modloaded appliedenergistics2

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import scripts.utils.patterns.checkerboard;

val vibrant = <appliedenergistics2:quartz_vibrant_glass>;
val quartz = <appliedenergistics2:quartz_glass>;
val glowstone = <minecraft:glowstone_dust>;

recipes.remove(vibrant);
checkerboard("vibrant_quartz_glass", vibrant * 4, glowstone, quartz);
