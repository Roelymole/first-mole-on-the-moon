#modloaded nuclearcraft

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import mods.nuclearcraft.FissionIrradiator;

val hydrogen = <forge:bucketfilled>.withTag({FluidName: "hydrogen", Amount: 1000});
val deuterium = <forge:bucketfilled>.withTag({FluidName: "deuterium", Amount: 1000});
val tritium = <forge:bucketfilled>.withTag({FluidName: "tritium", Amount: 1000});
val helium_3 = <forge:bucketfilled>.withTag({FluidName: "helium_3", Amount: 1000});
val helium = <forge:bucketfilled>.withTag({FluidName: "helium", Amount: 1000});

// Add extra neutrons in the Fission Irradiator to create isotopes
FissionIrradiator.addRecipe(hydrogen, deuterium, 80000, 0.0, 0.0, 0.0);
FissionIrradiator.addRecipe(deuterium, tritium, 140000, 0.0, 0.0, 0.0);
FissionIrradiator.addRecipe(helium_3, helium, 120000, 0.0, 0.0, 0.0);
