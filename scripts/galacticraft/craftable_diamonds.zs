#modloaded chisel nuclearcraft galacticrafttweaker

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import mods.GalacticraftTweaker.addCompressorShapelessRecipe;

val blocks = [
    //<minecraft:coal_block>,
    //<chisel:block_charcoal2:1>,
    <nuclearcraft:ingot_block:8>
] as IItemStack[];
val diamond = <minecraft:diamond>;

for block in blocks {
    addCompressorShapelessRecipe(diamond,
        block, block, block,
        block, block, block,
        block, block, block
    );
}
