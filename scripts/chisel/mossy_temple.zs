#modloaded chisel

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IItemDefinition;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import mods.chisel.Carving;

var temple = <chisel:temple>;
var mossy = <chisel:templemossy>;
val temple_def = temple.definition;
val mossy_def = mossy.definition;
val vines = <ore:vines>;

Carving.addGroup("templemossy");

for i in 0 to 16 {
    temple = temple_def.makeStack(i);
    mossy = mossy_def.makeStack(i);

    recipes.addShapeless("templemossy_" ~ i, mossy, [temple, vines]);

    Carving.removeVariation("temple", mossy);
    Carving.addVariation("templemossy", mossy);
}
