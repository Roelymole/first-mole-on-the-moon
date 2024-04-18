import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import scripts.utils.patterns.plus;

val wall = <galacticraftcore:basic_block_core:4>;

val enclosed = {
    <galacticraftcore:enclosed:14>: <galacticraftcore:aluminum_wire>,
    <galacticraftcore:enclosed:15>: <galacticraftcore:aluminum_wire:1>,
    <galacticraftcore:enclosed:1>: <galacticraftcore:fluid_pipe>,
    <galacticraftcore:enclosed:8>: <buildcrafttransport:pipe_cobble_item>,
    <galacticraftcore:enclosed:7>: <buildcrafttransport:pipe_stone_item>,
    <galacticraftcore:enclosed:10>: <buildcrafttransport:pipe_cobble_fluid>,
    <galacticraftcore:enclosed:9>: <buildcrafttransport:pipe_stone_fluid>,
    <galacticraftcore:enclosed:11>: <buildcrafttransport:pipe_stone_power>,
    <galacticraftcore:enclosed:12>: <buildcrafttransport:pipe_gold_power>,
    <galacticraftcore:enclosed:13>: <appliedenergistics2:part:16>
} as IItemStack[IItemStack];

for block, pipe in enclosed {
    recipes.remove(block);
    plus("enclosed_" ~ block.metadata, block * 4, wall, pipe);
}
