#modloaded galacticraftplanets

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import scripts.utils.patterns.fullgrid;

val ice = <ore:ice>;
val dense_ice = <galacticraftplanets:dense_ice>;

fullgrid("dense_ice", dense_ice, ice, true);
