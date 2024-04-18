#modloaded nuclearcraft

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import mods.nuclearcraft.Extractor;

val water = <liquid:water>;
val wet_sponge = <minecraft:sponge:1>;
val dry_sponge = <minecraft:sponge>;

Extractor.addRecipe(wet_sponge, dry_sponge, water * 1000, 0.5, 1, 0);
