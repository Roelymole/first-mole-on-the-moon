#modloaded chisel

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import scripts.utils.patterns.diagonal;

val diamond_chisel = <chisel:chisel_diamond>;
val iChisel = <chisel:chisel_hitech>;
val offset_tool = <chisel:offsettool>;
val stick = <ore:stickWood>;
val malachite = <biomesoplenty:gem:5>;
val wafer = <galacticraftcore:basic_item:14>;
val dust = <appliedenergistics2:material:46>;

offset_tool.maxStackSize = 1;

recipes.remove(diamond_chisel);
recipes.remove(iChisel);
recipes.remove(offset_tool);

diagonal("malachite_chisel", diamond_chisel, stick, malachite);
recipes.addShapeless("iChisel", iChisel,
    [diamond_chisel, wafer]
);
recipes.addShapedMirrored("ender_offset_wand", offset_tool,
    [[null, dust, null],
     [dust, null, dust],
     [stick, dust, null]]
);
