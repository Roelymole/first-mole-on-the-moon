#modloaded galacticraftcore galacticraftplanets

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import scripts.utils.patterns.stairpattern;

val blocks = {
    <galacticraftcore:basic_block_core:3>: <galacticraftcore:tin_stairs_1> * 4,
    <galacticraftcore:basic_block_core:4>: <galacticraftcore:tin_stairs_2> * 4,
    <galacticraftcore:basic_block_moon:4>: <galacticraftcore:moon_stairs_stone> * 4,
    <galacticraftcore:basic_block_moon:14>: <galacticraftcore:moon_stairs_brick> * 4,
    <galacticraftplanets:mars:4>: <galacticraftplanets:mars_stairs_cobblestone> * 4,
    <galacticraftplanets:mars:7>: <galacticraftplanets:mars_stairs_brick> * 4
} as IItemStack[IItemStack];

for block, stairs in blocks {
    recipes.remove(stairs);
    stairpattern(stairs.name, stairs, block);
}
