#modloaded nuclearcraft

import crafttweaker.liquid.ILiquidStack;
import mods.nuclearcraft.ChemicalReactor;
import mods.nuclearcraft.Supercooler;

val water = <liquid:water>;
val hydrogen = <liquid:hydrogen>;
val carbon_dioxide = <liquid:carbon_dioxide>;
val methane = <liquid:methane>;
val fuel = <liquid:fuel>;

//ChemicalReactor.removeRecipe(hydrogen * 250, carbon_dioxide * 250);
//ChemicalReactor.addRecipe(hydrogen * 4000, carbon_dioxide * 250, methane * 500, water * 1000);
Supercooler.addRecipe(methane * 500, fuel * 250, 1, 0.5, 0);
