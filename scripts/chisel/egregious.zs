#modloaded chisel
#priority 100

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import mods.chisel.Carving;
import scripts.utils.patterns.surround;

val nugget = <minecraft:iron_nugget>;
val blocks = {
    <ore:blockAluminum>: <chisel:blockaluminum:4>,
    <ore:blockBronze>: <chisel:blockbronze:4>,
    <ore:blockCopper>: <chisel:blockcopper:4>,
    <ore:blockGold>: <chisel:blockgold:4>,
    <ore:blockIron>: <chisel:blockiron:4>,
    <ore:blockLead>: <chisel:blocklead:4>,
    <ore:blockSilver>: <chisel:blocksilver:4>,
    <ore:blockSteel>: <chisel:blocksteel:4>,
    <ore:blockTin>: <chisel:blocktin:4>,
    <ore:blockUranium>: <chisel:blockuranium:4>
} as IItemStack[IOreDictEntry];

for entry, block in blocks {
    entry.remove(block);
    surround("egregious_" ~ entry.name, block, nugget, entry);
}
