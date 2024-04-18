#modloaded nuclearcraft

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import mods.nuclearcraft.ChanceItemIngredient;
import mods.nuclearcraft.Extractor;

val poison_ivy = <biomesoplenty:plant_0:4>;
val green_dye = <biomesoplenty:green_dye>;
val poison = <liquid:poison>;

Extractor.addRecipe(poison_ivy,
    ChanceItemIngredient.create(green_dye, 20),
    poison * 100
);
