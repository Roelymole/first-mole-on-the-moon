#priority 100

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import scripts.arrays.dyes.colours;
import scripts.arrays.concrete.concrete;

val def = <minecraft:concrete>.definition;

for i, colour in colours {
    concrete[colour].add(def.makeStack(i));
}
