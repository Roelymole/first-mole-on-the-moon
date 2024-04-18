#modloaded chisel
#priority 100

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import mods.chisel.Carving;
import scripts.utils.patterns.surround;

val gold = <minecraft:gold_nugget>;
val stick = <ore:stickWood>;
val wood_framed = <chisel:lapis:3>;
val raw_lapis = <chisel:lapis:6>;

val blocks = {
    "diamond": [<chisel:diamond:11>, <chisel:diamond:10>],
    "emerald": [<chisel:emerald:4>, <chisel:emerald:5>],
    "lapis": [<chisel:lapis:7>, <chisel:lapis:2>]
} as IItemStack[][string];

for name, block in blocks {
    surround("gold_encrusted_" ~ name, block[0], gold, block[1]);
}

surround("wood_framed_lapis", wood_framed, stick, raw_lapis);

<ore:blockDiamond>.remove(<chisel:diamond:11>);
<ore:blockEmerald>.remove(<chisel:emerald:4>);
<ore:blockLapis>.removeItems([<chisel:lapis:7>, wood_framed]);
