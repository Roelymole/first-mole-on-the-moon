#modloaded nuclearcraft

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import mods.nuclearcraft.SaltMixer;

val nak = <liquid:nak>;
val boron = <liquid:boron>;
val lithium = <liquid:lithium>;
val flibe = <liquid:flibe>;
val enderium = <liquid:enderium>;

val coal = <liquid:coal>;
val diamond = <liquid:diamond>;
val hard_carbon = <liquid:hard_carbon>;
val iron = <liquid:iron>;
val steel = <liquid:steel>;

/*
SaltMixer.removeRecipeWithOutput(nak * 144);
SaltMixer.removeRecipeWithOutput(boron * 192);
SaltMixer.removeRecipeWithOutput(lithium * 160);
SaltMixer.removeRecipeWithOutput(flibe * 72);
SaltMixer.removeRecipeWithOutput(enderium * 144);
*/

SaltMixer.addRecipe(coal * 100, diamond * 333, hard_carbon * 144);
SaltMixer.addRecipe(iron * 144, coal * 100, steel * 144);
