#modloaded chisel galacticraftcore

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

val chisel = <chisel:auto_chisel>;
val glass = <ore:paneGlassColorless>;
val iron = <galacticraftcore:basic_item:11>;
val wafer = <galacticraftcore:basic_item:13>;

recipes.remove(chisel);
recipes.addShaped("auto_chisel", chisel,
    [[glass, glass, glass],
     [iron, wafer, iron],
     [iron, iron, iron]]
);
