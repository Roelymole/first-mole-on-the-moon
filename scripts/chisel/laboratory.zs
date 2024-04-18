#modloaded chisel
#priority 98

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import mods.chisel.Carving;
import scripts.utils.patterns.alternate;
import scripts.utils.patterns.checkerboard;
import scripts.utils.patterns.fullgrid;
import scripts.utils.patterns.surround;

var block = <chisel:laboratory>;
val laboratory = block.definition;
val lab = <ore:blockLaboratory>;
val vents = <chisel:laboratory:4>;
val dark_medium = <chisel:laboratory:7>;
val checkered = <chisel:laboratory:8>;
val large_steel = <chisel:laboratory:11>;
val small_steel = <chisel:laboratory:12>;
val left = <chisel:laboratory:13>;
val right = <chisel:laboratory:14>;
val console = <chisel:laboratory:15>;

val bars = <ore:ironBars>;
val seamless = <chisel:stonebrick2:9>;
val panel = <chisel:stonebrick1:2>;
val tile = <chisel:stonebrick:7>;
val steel = <galacticraftcore:basic_item:9>;
val ingot = <nuclearcraft:alloy:5>;
val black = <ore:blockConcreteBlack>; //<ore:dyeBlack>;
val blue = <ore:blockConcreteBlue>; //<ore:dyeBlue>;
val orange = <ore:blockConcreteOrange>; //<ore:dyeOrange>;

val values = [0, 1, 2, 3, 5, 6, 9, 10] as int[];

recipes.replaceAllOccurrences(<minecraft:stone>, <ore:stoneDiorite>, <chisel:laboratory>);

surround("laboratory_vents", vents * 8, lab, bars);
fullgrid("dark_medium_tiles", dark_medium * 4, seamless, true);
checkerboard("checkered_tiles", checkered * 4, seamless, panel | tile, true);
alternate("large_steel", large_steel * 16, steel, ingot);

recipes.addShaped("laboratory_arrow_left", left * 8,
    [[lab, blue, lab],
     [blue, black, black],
     [lab, blue, lab]]
);
recipes.addShaped("laboratory_arrow_right", right * 8,
    [[lab, blue, lab],
     [black, black, blue],
     [lab, blue, lab]]
);
recipes.addShaped("laboratory_console", console * 8,
    [[lab, lab, lab],
     [black, orange, black],
     [lab, lab, lab]]
);

Carving.removeGroup("laboratory");
Carving.addGroup("laboratory");
for i in values {
    block = laboratory.makeStack(i);
    lab.add(block);
    Carving.addVariation("laboratory", block);
}

Carving.addGroup("laboratory_steel");
Carving.addVariation("laboratory_steel", large_steel);
Carving.addVariation("laboratory_steel", small_steel);

Carving.addGroup("laboratory_arrows");
Carving.addVariation("laboratory_arrows", left);
Carving.addVariation("laboratory_arrows", right);
