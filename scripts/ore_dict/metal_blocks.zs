#modloaded galacticraftcore nuclearcraft

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import scripts.utils.patterns.fullgrid;

val blocks = {
    <minecraft:iron_ingot>: <ore:blockIron>,
    <minecraft:gold_ingot>: <ore:blockGold>,
    <minecraft:emerald>: <ore:blockEmerald>,
    <minecraft:redstone>: <ore:blockRedstone>,
    <minecraft:coal>: <ore:blockCoal>,
    <galacticraftcore:basic_item:3>: <ore:blockCopper>,
    <galacticraftcore:basic_item:4>: <ore:blockTin>,
    <galacticraftcore:basic_item:5>: <ore:blockAluminum>,
    <nuclearcraft:ingot:2>: <ore:blockLead>,
    <nuclearcraft:ingot:4>: <ore:blockUranium>,
    <nuclearcraft:ingot:13>: <ore:blockSilver>,
    <nuclearcraft:alloy>: <ore:blockBronze>,
    <nuclearcraft:alloy:5>: <ore:blockSteel>
} as IOreDictEntry[IItemStack];

for item, block in blocks {
    recipes.remove(item * 9);
    recipes.addShapeless(item * 9, [block]);
}

val bronze = <nuclearcraft:alloy>;
val steel = <nuclearcraft:alloy:5>;

fullgrid("bronze_block", <chisel:blockbronze>, bronze);
fullgrid("steel_block", <chisel:blocksteel>, steel);

recipes.replaceAllOccurences(<minecraft:iron_block>, <ore:blockIron>, <minecraft:anvil>);
