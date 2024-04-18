#modloaded nuclearcraft
#priority 99

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import mods.nuclearcraft.Manufactory;
import mods.nuclearcraft.Pressurizer;
import mods.nuclearcraft.Melter;
import mods.nuclearcraft.IngotFormer;
import mods.nuclearcraft.Enricher;
import mods.nuclearcraft.Crystallizer;
import mods.nuclearcraft.ChemicalReactor;
import scripts.utils.removeAndHide.remove;
import scripts.utils.removeAndHide.removeList;

val gems = {
    "rhodochrosite": <nuclearcraft:gem>,
    "boron_nitride": <nuclearcraft:gem:1>,
    "fluorite": <nuclearcraft:gem:2>,
    "villiaumite": <nuclearcraft:gem:3>,
    "carobbiite": <nuclearcraft:gem:4>,
    "boron_arsenide": <nuclearcraft:gem:5>,
    "silicon": <nuclearcraft:gem:6>
} as IItemStack[string];

val boron_nitride_dust = <nuclearcraft:gem_dust:4>;

val crushed = [
    "rhodochrosite",
    "boron_nitride",
    "fluorite",
    "villiaumite",
    "carobbiite"
] as string[];

val molten = [
    "fluorite",
    "villiaumite",
    "carobbiite",
    "boron_arsenide"
] as string[];

removeList(gems.values);
remove(boron_nitride_dust);

for name in crushed {
    Manufactory.removeRecipeWithInput(gems[name]);
    Pressurizer.removeRecipeWithOutput(gems[name]);
}

for name in molten {
    Melter.removeRecipeWithInput(gems[name]);
    IngotFormer.removeRecipeWithOutput(gems[name]);
}
