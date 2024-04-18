#modloaded cfm

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import scripts.utils.patterns.fencepattern;

val hedges = {
    <minecraft:leaves>: <cfm:hedge_oak>,
    <minecraft:leaves:1>: <cfm:hedge_spruce>,
    <minecraft:leaves:2>: <cfm:hedge_birch>,
    <minecraft:leaves:3>: <cfm:hedge_jungle>,
    <minecraft:leaves2>: <cfm:hedge_acacia>,
    <minecraft:leaves2:1>: <cfm:hedge_dark_oak>
} as IItemStack[IItemStack];

for leaves, hedge in hedges {
    fencepattern(hedge.name, hedge * 3, leaves);
}
