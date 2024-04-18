#modloaded nuclearcraft

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import mods.GalacticraftTweaker.addCompressorShapelessRecipe;

val compressed_lead = <nuclearcraft:part>;
val compressed_du = <nuclearcraft:part:2>;
val lead = <nuclearcraft:ingot:2>;
val graphite = <nuclearcraft:dust:8>;
val du = <nuclearcraft:depleted_fuel_uranium:*>;

recipes.remove(compressed_lead * 2);
recipes.remove(compressed_du);

addCompressorShapelessRecipe(compressed_lead, lead, lead);
addCompressorShapelessRecipe(compressed_du, du);

/*
recipes.addShapedMirrored("basic_plating", plating * 2,
    [[lead, graphite],
     [graphite, lead]]
);
*/
