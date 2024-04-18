#modloaded nuclearcraft

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import mods.nuclearcraft.DecayHastener;
import mods.nuclearcraft.Enricher;

val brown_mushroom = <minecraft:brown_mushroom>;
val glowing_mushroom = <nuclearcraft:glowing_mushroom>;
val brown_mushroom_block = <minecraft:brown_mushroom_block>;
val glowing_mushroom_block = <nuclearcraft:glowing_mushroom_block>;
val yellow_dye = <minecraft:dye:11>;
val ethanol = <liquid:ethanol>;
val redstone_ethanol = <liquid:redstone_ethanol>;
val radaway = <liquid:radaway>;
val radaway_slow = <liquid:radaway_slow>;

recipes.removeShapeless(brown_mushroom);

furnace.addRecipe(yellow_dye, glowing_mushroom, 0.2);

DecayHastener.addRecipe(glowing_mushroom, brown_mushroom, 0.125, 0.5, 0);
DecayHastener.addRecipe(glowing_mushroom_block, brown_mushroom_block, 0.375, 0.5, 0);

Enricher.addRecipe(glowing_mushroom_block, ethanol * 250, radaway * 250, 1, 0.5, 0);
Enricher.addRecipe(glowing_mushroom_block, redstone_ethanol * 250, radaway_slow * 250, 1, 0.5, 0);
