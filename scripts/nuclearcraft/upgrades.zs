#modloaded appliedenergistics2 nuclearcraft

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;

val energy = <nuclearcraft:upgrade:1>;
val quartz = <appliedenergistics2:material:3>;
val certus = <appliedenergistics2:material:2>;

recipes.replaceAllOccurences(quartz, certus, energy);
