#modloaded nuclearcraft

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import mods.nuclearcraft.Infuser;

val bottle = <minecraft:glass_bottle>;
val water_bottle = <minecraft:potion>.withTag({Potion: "minecraft:water"});
val water = <liquid:water>;

Infuser.addRecipe(bottle, water * 333, water_bottle, 0.25, 0.5, 0);
