#modloaded nuclearcraft

import crafttweaker.liquid.ILiquidStack;
import mods.nuclearcraft.Enricher;
import mods.nuclearcraft.Crystallizer;
import mods.nuclearcraft.ChemicalReactor;
import mods.nuclearcraft.Electrolyzer;
import mods.nuclearcraft.Melter;
import mods.nuclearcraft.Centrifuge;

val water = <liquid:water>;
val hydrofluoric_acid = <liquid:hydrofluoric_acid>;
val calcium_sulphate = <liquid:calcium_sulfate_solution>;
val ethanol = <liquid:ethanol>;
val ethylene = <liquid:ethene>;
val sulphur_dioxide = <liquid:sulfur_dioxide>;
val sulphur_trioxide = <liquid:sulfur_trioxide>;
val sulphuric_acid = <liquid:sulphuricacid>;
val fluorite_water = <liquid:fluorite_water>;
val oxygen_difluoride = <liquid:oxygen_difluoride>;
val fluoromethane = <liquid:fluoromethane>;

val potassium_fluoride_solution = <liquid:potassium_fluoride_solution>;
val potassium_fluoride = <nuclearcraft:compound:4>;
val potassium_hydroxide_solution = <liquid:potassium_hydroxide_solution>;
val molten_sodium_hydroxide = <liquid:naoh>;
val molten_potassium_hydroxide = <liquid:koh>;
val potassium_hydroxide = <nuclearcraft:compound:6>;

val boron = <liquid:boron>;
val lithium = <liquid:lithium>;
val boron_nitride = <liquid:boron_nitride_solution>;
val boron_arsenide = <liquid:bas>;
val lif = <liquid:lif>;
val bef2 = <liquid:bef2>;

val ammonia = <liquid:ammonia>;

// Remove recipes involving Nuclearcraft's Suphuric Acid
ChemicalReactor.removeRecipeWithOutput(hydrofluoric_acid * 1000, calcium_sulphate * 333);
ChemicalReactor.removeRecipeWithOutput(ethanol * 250, sulphur_trioxide * 250);
ChemicalReactor.removeRecipeWithInput(sulphur_trioxide * 250, water * 250);

// Allow Sulphuric Acid from Venus to be used instead
ChemicalReactor.addRecipe(fluorite_water * 333, sulphuric_acid * 500, calcium_sulphate * 333, hydrofluoric_acid * 1000, 1, 0.5, 0);
ChemicalReactor.addRecipe(ethylene * 250, sulphuric_acid * 250, ethanol * 250, sulphur_trioxide * 250, 0.5, 1, 0);
ChemicalReactor.addRecipe(sulphur_trioxide * 250, water * 250, sulphuric_acid * 250, null, 0.5, 0.5, 0);

// Remove recipes involving Fluorine
ChemicalReactor.removeRecipeWithInput(oxygen_difluoride * 250, water * 250);
ChemicalReactor.removeRecipeWithInput(oxygen_difluoride * 250, sulphur_dioxide * 250);
ChemicalReactor.removeRecipeWithOutput(oxygen_difluoride * 500, null);
ChemicalReactor.removeRecipeWithOutput(hydrofluoric_acid * 250, null);
Electrolyzer.removeRecipeWithInput(hydrofluoric_acid * 250);

// Remove recipes involving Sodium and Potassium
/*
ChemicalReactor.removeRecipeWithInput(potassium_fluoride_solution * 333, water * 500);
ChemicalReactor.removeRecipeWithInput(fluoromethane * 500, molten_potassium_hydroxide * 333);
Enricher.removeRecipeWithOutput(potassium_fluoride_solution * 666);
Enricher.removeRecipeWithOutput(potassium_hydroxide_solution * 666);
Electrolyzer.removeRecipeWithInput(molten_sodium_hydroxide * 333);
Electrolyzer.removeRecipeWithInput(molten_potassium_hydroxide * 333);
Crystallizer.removeRecipeWithOutput(potassium_fluoride);
Crystallizer.removeRecipeWithOutput(potassium_hydroxide);
Melter.removeRecipeWithInput(potassium_hydroxide);
*/

// Remove recipes involving Boron, Lithium and Beryllium
Centrifuge.removeRecipeWithInput(boron * 192);
Centrifuge.removeRecipeWithInput(lithium * 160);
ChemicalReactor.removeRecipeWithOutput(lif * 72, null);
ChemicalReactor.removeRecipeWithOutput(bef2 * 72, null);
ChemicalReactor.removeRecipeWithOutput(boron_arsenide * 333, null);
ChemicalReactor.removeRecipeWithOutput(boron_nitride * 333, water * 1000);
Crystallizer.removeRecipeWithInput(boron_nitride * 666);
Enricher.removeRecipeWithOutput(boron_nitride * 666);

// Remove random recipes
ChemicalReactor.removeRecipeWithOutput(ammonia * 500, null);
