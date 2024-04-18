import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import scripts.utils.patterns.fencepattern;

val blocks = {
    <ore:stoneCobble>: <minecraft:cobblestone_wall> * 6,
    <ore:blockMossy>: <minecraft:cobblestone_wall:1> * 6
} as IItemStack[IOreDictEntry];

val names = [
    "cobblestone_wall",
    "mossy_cobble_wall"
] as string[];

var i = 0;
for block, walls in blocks {
    recipes.remove(walls);
    fencepattern(names[i], walls, block);
    i += 1;
}
