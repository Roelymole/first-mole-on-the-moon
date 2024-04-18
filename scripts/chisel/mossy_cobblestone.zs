#modloaded chisel

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IItemDefinition;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import mods.chisel.Carving;

val cobble = <chisel:cobblestone>.definition;
val cobble1 = <chisel:cobblestone1>.definition;
val mossy_cobble = <minecraft:mossy_cobblestone>;
val mossy = <chisel:cobblestonemossy>.definition;
val mossy1 = <chisel:cobblestonemossy1>.definition;
val vines = <ore:vines>;

val exceptions = {
    <chisel:cobblestone1:8>: <chisel:cobblestonemossy1:15>,
    <chisel:cobblestone1:9>: <chisel:cobblestonemossy2>,
    <chisel:cobblestone2>: <chisel:cobblestonemossy1:8>,
    <chisel:cobblestone2:1>: <chisel:cobblestonemossy1:9>,
    <chisel:cobblestone2:2>: <chisel:cobblestonemossy1:10>,
    <chisel:cobblestone2:3>: <chisel:cobblestonemossy1:11>,
    <chisel:cobblestone2:4>: <chisel:cobblestonemossy1:12>,
    <chisel:cobblestone2:5>: <chisel:cobblestonemossy1:13>,
    <chisel:cobblestone2:6>: <chisel:cobblestonemossy1:14>
} as IItemStack[IItemStack];

recipes.remove(mossy_cobble);
recipes.addShapeless(mossy_cobble, [<minecraft:cobblestone>, vines]);
recipes.addShapeless(<minecraft:cobblestone_wall:1>, [<minecraft:cobblestone_wall>, vines]);

for i in 0 to 16 {
    recipes.addShapeless("mossy_cobble_" ~ i, mossy.makeStack(i), [cobble.makeStack(i), vines]);
}

for i in 0 to 8 {
    recipes.addShapeless("mossy_cobble_" ~ (i + 16), mossy1.makeStack(i), [cobble1.makeStack(i), vines]);
}

var i = 24;
for cobblestone, mossy_cobblestone in exceptions {
    recipes.addShapeless("mossy_cobble_" ~ i, mossy_cobblestone, [cobblestone, vines]);
    i += 1;
}
