#modloaded nuclearcraft galacticrafttweaker

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import mods.nuclearcraft.Pressurizer;
import mods.GalacticraftTweaker.addCompressorShapelessRecipe;
import scripts.utils.removeAndHide.remove;

val remove_item = [
    <minecraft:coal>,
    <minecraft:diamond>,
    <minecraft:ender_pearl>,
    <minecraft:obsidian>,
    <nuclearcraft:graham_cracker>,
    <nuclearcraft:part:15>
] as IItemStack[];

val graphite_ingot = <nuclearcraft:ingot:8>;
val graphite_dust = <nuclearcraft:dust:8>;
val graham_cracker = <nuclearcraft:graham_cracker>;

var flour as IItemStack;
if (loadedMods has "appliedenergistics2") {
    flour = <appliedenergistics2:material:4>;
} else {
    flour = <nuclearcraft:flour>;
}

for item in remove_item {
    Pressurizer.removeRecipeWithOutput(item);
}

remove(<nuclearcraft:pressurizer>);

//addCompressorShapelessRecipe(graphite_ingot, graphite_dust);
addCompressorShapelessRecipe(graham_cracker, flour, flour);
