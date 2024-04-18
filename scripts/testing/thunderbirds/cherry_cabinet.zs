#modloaded biomesoplenty cfm

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import scripts.utils.patterns.surround;

val cabinet = <cfm:cabinet_acacia>;
val cherry = <biomesoplenty:planks_0:1>;
val chest = <minecraft:chest>;

surround("cherry_cabinet", cabinet, cherry, chest);
