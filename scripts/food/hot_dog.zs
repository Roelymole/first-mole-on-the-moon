#modloaded cfm contenttweaker

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;

val hot_dog = <contenttweaker:hot_dog>;
val sausage = <cfm:item_sausage_cooked>;
var bun = <minecraft:bread>;
if (loadedMods has "galacticraftcore") {
    bun = <galacticraftcore:food:5>;
}

recipes.addShapeless("hot_dog", hot_dog, [bun, sausage]);
