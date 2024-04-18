#modloaded nuclearcraft

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import mods.nuclearcraft.Melter;

val quartz = <minecraft:quartz>;
val quartz_dust = <appliedenergistics2:material:3>;
val pure_quartz = <appliedenergistics2:material:11>;
val lapis = <minecraft:dye:4>;
val lapis_ore = <minecraft:lapis_ore>;
val emerald = <minecraft:emerald>;
val emerald_ore = <minecraft:emerald_ore>;
val redstone_ore = <minecraft:redstone_ore>;
val coal_ore = <minecraft:coal_ore>;
val prismarine = <minecraft:prismarine>;

val molten_iron = <liquid:iron> * 288;
val molten_copper = <liquid:copper> * 288;
val molten_tin = <liquid:tin> * 288;
val molten_aluminium = <liquid:aluminum> * 288;
val molten_quartz = <liquid:quartz>;
val molten_end_stone = <liquid:end_stone> * 288;
val molten_purpur = <liquid:purpur> * 288;
val molten_nether_brick = <liquid:nether_brick> * 72;
val molten_coal = <liquid:coal>;

/*
Melter.removeRecipeWithOutput(molten_iron);
Melter.removeRecipeWithOutput(molten_copper);
Melter.removeRecipeWithOutput(molten_tin);
Melter.removeRecipeWithOutput(molten_aluminium);
Melter.removeRecipeWithOutput(molten_quartz * 1332);
Melter.removeRecipeWithOutput(molten_end_stone);
Melter.removeRecipeWithOutput(molten_purpur);
Melter.removeRecipeWithOutput(molten_nether_brick);
*/

Melter.addRecipe(<ore:oreIron>, molten_iron, 1.25, 1.5, 0);
Melter.addRecipe(<ore:oreCopper>, molten_copper, 1.25, 1.5, 0);
Melter.addRecipe(<ore:oreTin>, molten_tin, 1.25, 1.5, 0);
Melter.addRecipe(<ore:oreAluminum>, molten_aluminium, 1.25, 1.5, 0);
Melter.addRecipe(<ore:oreQuartz>, molten_quartz * 1332, 1.25, 1.5, 0);
Melter.addRecipe(quartz, molten_quartz * 666);
Melter.addRecipe(quartz_dust, molten_quartz * 666);
Melter.addRecipe(lapis, <liquid:lapis> * 666);
Melter.addRecipe(lapis_ore, <liquid:lapis> * 1332, 1.25, 1.5, 0);
Melter.addRecipe(emerald, <liquid:emerald> * 666);
Melter.addRecipe(emerald_ore, <liquid:emerald> * 1332, 1.25, 1.5, 0);
Melter.addRecipe(redstone_ore, <liquid:redstone> * 400, 1.25, 1.5, 0);
Melter.addRecipe(<minecraft:coal:1>, molten_coal * 100, 0.5, 1, 0);
Melter.addRecipe(<ore:blockCharcoal>, molten_coal * 900, 4.5, 1, 0);
Melter.addRecipe(coal_ore, molten_coal * 200, 1.25, 1.5, 0);
Melter.addRecipe(<ore:endstone>, molten_end_stone, 2, 2, 0);
Melter.addRecipe(<ore:purpur>, molten_purpur, 2, 2, 0);
Melter.addRecipe(<ore:netherrack>, molten_nether_brick, 1, 1.5, 0);
Melter.addRecipe(prismarine, <liquid:prismarine> * 576, 1.25, 1, 0);
Melter.addRecipe(<ore:prismarineBrick>, <liquid:prismarine> * 1296, 2.5, 1, 0);
