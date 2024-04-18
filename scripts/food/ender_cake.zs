#modloaded jmc appliedenergistics2

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import scripts.utils.patterns.cakerecipe;

val cake = <jmc:ender_cake>;
val pearl = <minecraft:ender_pearl>;
val eye = <minecraft:ender_eye>;
val dust = <appliedenergistics2:material:46>;
val sugar = <minecraft:sugar>;
val egg = <minecraft:egg>;

recipes.remove(cake);
cakerecipe("ender_cake", cake, pearl | eye, sugar | egg, dust);
