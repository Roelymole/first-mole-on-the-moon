#modloaded chisel
#priority 50

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import scripts.utils.patterns.platepattern;
import scripts.arrays.dyes.colours;
import scripts.arrays.wool;
import scripts.arrays.carpets;

var vanilla_wool = <minecraft:wool>;
var vanilla_carpet = <minecraft:carpet>;
val wool_def = vanilla_wool.definition;
val carpet_def = vanilla_carpet.definition;

for i, colour in colours {
    vanilla_wool = wool_def.makeStack(i);
    vanilla_carpet = carpet_def.makeStack(i);

    recipes.remove(vanilla_carpet * 3);
    platepattern("carpet_" ~ colour, vanilla_carpet * 3, vanilla_wool);
    platepattern("legacy_carpet_" ~ colour, carpets.legacy[colour] * 3, wool.legacy[colour]);
    platepattern("llama_carpet_" ~ colour, carpets.llama[colour] * 3, wool.llama[colour]);
}
