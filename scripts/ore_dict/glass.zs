#priority 100

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

if (loadedMods has "chisel") {
    val blocks = [
        <chisel:glass:1>,
        <chisel:glass:2>,
        <chisel:glass:3>,
        <chisel:glass:4>,
        <chisel:glass:6>,
        <chisel:glass:7>,
        <chisel:glass:8>,
        <chisel:glass:9>,
        <chisel:glass:10>,
        <chisel:glass:12>,
        <chisel:glass:13>,
        <chisel:glass:14>,
        <chisel:glass:15>,
        <chisel:glass1>,
        <chisel:glass1:1>
    ] as IItemStack[];

    val panes = [
        <chisel:glasspane:1>,
        <chisel:glasspane:2>,
        <chisel:glasspane:3>,
        <chisel:glasspane:4>,
        <chisel:glasspane:6>,
        <chisel:glasspane:7>,
        <chisel:glasspane:8>,
        <chisel:glasspane:9>,
        <chisel:glasspane:10>,
        <chisel:glasspane:12>,
        <chisel:glasspane:13>,
        <chisel:glasspane:14>,
        <chisel:glasspane:15>,
        <chisel:glasspane1>,
        <chisel:glasspane1:1>
    ] as IItemStack[];

    <ore:blockGlassColorless>.removeItems(blocks);
    <ore:blockGlass>.removeItems(blocks);

    <ore:paneGlassColorless>.removeItems(panes);
    <ore:paneGlass>.removeItems(panes);
}

if (loadedMods has "nuclearcraft") {
    <ore:blockGlassStrong>.addItems([
        <nuclearcraft:fission_glass>,
        <nuclearcraft:turbine_glass>
    ]);
}

val glass = <minecraft:glass>;
val glasses = <ore:blockGlass>;
val clear = <ore:blockGlassColorless>;
val colourless = [
    <biomesoplenty:jar_empty>,
    <minecraft:daylight_detector>,
    <galacticraftcore:basic_item>,
    <galacticraftplanets:basic_item_venus:5>
] as IItemStack[];
val colourful = [
    <minecraft:daylight_detector>,
    <appliedenergistics2:quartz_glass>
] as IItemStack[];

for item in colourless {
    recipes.replaceAllOccurences(glass, clear, item);
}
for item in colourful {
    recipes.replaceAllOccurences(glasses, clear, item);
}
