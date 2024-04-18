#modloaded appliedenergistics2
#priority 100

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IItemDefinition;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import scripts.utils.recolour.repaint;
import scripts.arrays.dyes.colours;

val cables = {
    <ore:cableGlass>: 0,
    <ore:cableCovered>: 20,
    <ore:cableCoveredDense>: 500,
    <ore:cableSmart>: 40,
    <ore:cableSmartDense>: 60
} as int[IOreDictEntry];

var item = <appliedenergistics2:part>;
var def = item.definition;

for cable, start in cables {
    for i, colour in colours {
        item = def.makeStack(start + i);
        cable.add(item);
        repaint(cable.name ~ "_redye_" ~ colour, item, cable, colour);
    }
}
