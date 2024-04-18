#modloaded chisel
#priority 100

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import mods.chisel.Carving;
import scripts.utils.patterns.checkerboard;

val voidstone = <chisel:voidstone>;
val obsidian = <minecraft:obsidian>;
val materials = {
    "diamond": <minecraft:diamond>,
    "gold": <minecraft:gold_ingot>,
    "iron": <minecraft:iron_ingot>
} as IItemStack[string];
val blocks = {
    "diamond": [<chisel:diamond:3>, <chisel:diamond:4>],
    "gold": [<chisel:gold:11>, <chisel:gold:12>],
    "iron": [<chisel:iron:11>, <chisel:iron:12>]
} as IItemStack[][string];
val entries = {
    "diamond": <ore:blockDiamond>,
    "gold": <ore:blockGold>,
    "iron": <ore:blockIron>
} as IOreDictEntry[string];

for name, material in materials {
    checkerboard("purple_space_" ~ name, blocks[name][0] * 4, voidstone, material);
    checkerboard("black_space_" ~ name, blocks[name][1] * 4, obsidian, material);

    for block in blocks[name] {
        entries[name].remove(block);
    }
}
