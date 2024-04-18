#modloaded nuclearcraft

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import mods.nuclearcraft.Melter;
import scripts.utils.patterns.fullgrid;

val diamonds = <minecraft:diamond> * 9;
val diamond_block = <ore:diamondBlock>;
diamond_block.addAll(<ore:blockDiamond>);
val dust = <nuclearcraft:gem_dust>;

recipes.remove(diamonds);

if (loadedMods has "chisel") {
    val crushed_block = <chisel:diamond:7>;
    diamond_block.remove(crushed_block);

    recipes.addShapeless("crushed_diamond", dust * 9, [crushed_block]);
    fullgrid("crushed_diamond_block", crushed_block, dust);

    mods.chisel.Carving.removeVariation("blockDiamond", crushed_block);
}

if (loadedMods has "opencomputers") {
    val chip = <opencomputers:material:29>;

    recipes.addShapeless("diamond_shards", chip * 6, [dust]);
    Melter.addRecipe(chip, <liquid:diamond> * 111, 0.2, 1, 0);
}
