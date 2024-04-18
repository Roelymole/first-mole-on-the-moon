#modloaded nuclearcraft
#priority 98

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import mods.nuclearcraft.ChanceItemIngredient;
import mods.nuclearcraft.Manufactory;

val remove_item = [
    <minecraft:quartz>,
    <minecraft:wheat>,
    <nuclearcraft:ingot:12>,
    <minecraft:gravel>,
    <minecraft:gold_ore>,
    <minecraft:iron_ore>,
    <appliedenergistics2:quartz_ore>,
    <appliedenergistics2:charged_quartz_ore>,
    <galacticraftcore:basic_block_core:5>,
    <galacticraftcore:basic_block_core:6>,
    <galacticraftcore:basic_block_core:7>,
    <nuclearcraft:ore:2>,
    <nuclearcraft:ore:3>,
    <nuclearcraft:ore:4>,
    <nuclearcraft:ore:5>,
    <nuclearcraft:ore:6>,
    <nuclearcraft:ore:7>,
    <nuclearcraft:gem_dust:9>
] as IItemStack[];

val remove_ore_dict = [
    <ore:sand>,
    <ore:obsidian>,
    <ore:cobblestone>
] as IOreDictEntry[];

val charcoal = <minecraft:coal:1>;
val aluminium = <galacticraftcore:basic_item:5>;
val quartz = <minecraft:quartz>;
val ender_pearl = <minecraft:ender_pearl>;
val wheat = <minecraft:wheat>;

val carbon = <galacticraftplanets:carbon_fragments>;
val aluminium_dust = <nuclearcraft:dust:12>;
val quartz_dust = <appliedenergistics2:material:3>;
val ender_dust = <appliedenergistics2:material:46>;
val flour = <appliedenergistics2:material:4>;
val end_stone_dust = <nuclearcraft:gem_dust:11>;

// Remove recipes
for item in remove_item {
    Manufactory.removeRecipeWithInput(item);
}

for entry in remove_ore_dict {
    Manufactory.removeRecipeWithInput(entry);
}

Manufactory.removeRecipeWithOutput(end_stone_dust);

// Add recipes
Manufactory.addRecipe(charcoal, ChanceItemIngredient.create(carbon * 4, 50, 1));
Manufactory.addRecipe(aluminium, aluminium_dust);
Manufactory.addRecipe(quartz, quartz_dust);
Manufactory.addRecipe(ender_pearl, ender_dust, 0.5, 1, 0);
Manufactory.addRecipe(wheat, flour, 0.25, 0.5, 0);
