#modloaded nuclearcraft

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.liquid.ILiquidStack;
import mods.nuclearcraft.Infuser;
import mods.nuclearcraft.Melter;
import mods.nuclearcraft.IngotFormer;

val ice = <ore:iceAll>;
val supercold_ice = <nuclearcraft:supercold_ice>;
val helium = <liquid:liquid_helium> * 500;
val water = <liquid:water> * 1000;
val crushed_ice = <liquid:ice>;

Infuser.removeRecipeWithOutput(supercold_ice);
Infuser.addRecipe(ice, helium, supercold_ice, 0.2, 0.5, 0);

Melter.removeRecipeWithOutput(water);
Melter.addRecipe(ice, water, 0.25, 0.5, 0);

IngotFormer.addRecipe(crushed_ice * 1000, ice);

if (loadedMods has "galacticraftplanets" && loadedMods has "galacticrafttweaker") {
    mods.GalacticraftTweaker.removeCompressorRecipe(<minecraft:ice>);
}
