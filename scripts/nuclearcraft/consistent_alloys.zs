#modloaded galacticraftcore nuclearcraft
#priority 99

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import mods.GalacticraftTweaker.removeCompressorRecipe;
import mods.GalacticraftTweaker.addCompressorShapelessRecipe;
import mods.nuclearcraft.AlloyFurnace;

val bronze = <nuclearcraft:alloy>;
val steel = <nuclearcraft:alloy:5>;
val compressed_bronze = <galacticraftcore:basic_item:10>;
val compressed_steel = <galacticraftcore:basic_item:9>;
val iron = <ore:ingredientIron>;
val coal = <ore:ingredientCoal>;
val graphite = <ore:ingredientGraphite>;

val steel_block_def = <chisel:blocksteel>.definition;
val iron_block_def = <chisel:blockiron>.definition;
var steel_block = <chisel:blocksteel>;
var iron_block_rest = <ore:blockIronRest>;
val coal_block = <ore:blockCoal>;
val charcoal_block = <ore:blockCharcoal>;
val graphite_block = <nuclearcraft:ingot_block:8>;

iron.addAll(<ore:ingotIron>);
coal.add(<minecraft:coal:*>);
graphite.addAll(<ore:ingotGraphite>);

iron.addAll(<ore:dustIron>);
coal.add(<nuclearcraft:gem_dust:7>);
graphite.addAll(<ore:dustGraphite>);

iron_block_rest.addAll(<ore:blockIron>);

for i in 1 to 7 {
    iron_block_rest.remove(iron_block_def.makeStack(i));
}

removeCompressorRecipe(compressed_bronze);
removeCompressorRecipe(compressed_steel);

addCompressorShapelessRecipe(compressed_bronze, bronze, bronze);
addCompressorShapelessRecipe(compressed_steel, steel, steel);

AlloyFurnace.removeRecipeWithOutput(steel);
AlloyFurnace.removeRecipeWithOutput(steel_block);

AlloyFurnace.addRecipe(iron, coal, steel);
AlloyFurnace.addRecipe(iron, graphite, steel);

// Turn the rest of the Iron Block into the default Steel Block
AlloyFurnace.addRecipe(iron_block_rest, coal_block, steel_block);
AlloyFurnace.addRecipe(iron_block_rest, charcoal_block, steel_block);
AlloyFurnace.addRecipe(iron_block_rest, graphite_block, steel_block);

// Initialise variables
var sb as IItemStack;
var ib as IItemStack;

// Preserve the style of the Iron Blocks for which there is a Steel Block equivalent
for i in 1 to 7 {
    sb = steel_block_def.makeStack(i);
    ib = iron_block_def.makeStack(i);

    AlloyFurnace.addRecipe(ib, coal_block, sb);
    AlloyFurnace.addRecipe(ib, charcoal_block, sb);
    AlloyFurnace.addRecipe(ib, graphite_block, sb);
}
