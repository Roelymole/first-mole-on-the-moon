#modloaded nuclearcraft buildcraftfactory

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import mods.nuclearcraft.IngotFormer;
import mods.nuclearcraft.Extractor;
import mods.nuclearcraft.Centrifuge;
import mods.nuclearcraft.Supercooler;

val gelled_water = <buildcraftfactory:gel>;
val water = <liquid:water>;
val sludge = <liquid:bacterialsludge>;
val slime = <liquid:slime>;
val residue = <liquid:oil_residue>;
val high_pressure_steam = <liquid:high_pressure_steam>;
val exhaust_steam = <liquid:exhaust_steam>;

Extractor.addRecipe(gelled_water, null, water * 1000);
Centrifuge.addRecipe(sludge * 1000, slime * 72, residue * 100, water * 250,
    null, null, null, 1.5, 1, 0
);
Supercooler.addRecipe(high_pressure_steam * 288, water * 72, 0.5, 0.25, 0);
Supercooler.addRecipe(exhaust_steam * 288, water * 288, 0.25, 0.25, 0);
