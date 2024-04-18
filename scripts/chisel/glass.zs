#modloaded chisel

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import mods.chisel.Carving;
import scripts.utils.patterns.plus;

val glass = <minecraft:glass>;

val chisel_glass = {
    "chinese": <chisel:glass:1>,
    "japanese": <chisel:glass:2>,
    "dungeon": <chisel:glass:3>,
    "light_framed": <chisel:glass:4>,
    "ornate": <chisel:glass:6>,
    "screen": <chisel:glass:7>,
    "shale_framed": <chisel:glass:8>,
    "steel_framed": <chisel:glass:9>,
    "stone_framed": <chisel:glass:10>,
    "thick_grid": <chisel:glass:12>,
    "thin_grid": <chisel:glass:13>,
    "fence": <chisel:glass:14>,
    "leaded": <chisel:glass:15>
} as IItemStack[string];

val chisel_bars = {
    "chinese": <biomesoplenty:cherry_fence>,
    "japanese": <minecraft:spruce_fence>,
    "light_framed": <ore:stickWood>,
    "dungeon": <chisel:ironpane:2>,
    "ornate": <chisel:ironpane:6>,
    "screen": <chisel:ironpane:3>,
    "shale_framed": <buildingblocks:pebbles>,
    "steel_framed": <galacticraftcore:steel_pole>,
    "stone_framed": <ore:stone>,
    "thick_grid": <chisel:ironpane:4>,
    "thin_grid": <chisel:ironpane:5>,
    "fence": <chisel:ironpane:12>,
    "leaded": <nuclearcraft:dust:2>
} as IIngredient[string];

val glass_variations = {
    "": [
        <minecraft:glass>,
        <chisel:glass>,
        <chisel:glass:5>,
        <chisel:glass:11>
    ],
    "chinese": [<chisel:glass:1>, <chisel:glass1>],
    "japanese": [<chisel:glass:2>, <chisel:glass1:1>],
    "ironbars": [
        <chisel:glass:3>,
        <chisel:glass:6>,
        <chisel:glass:7>,
        <chisel:glass:12>,
        <chisel:glass:13>,
        <chisel:glass:14>
    ],
    "stone": [<chisel:glass:8>, <chisel:glass:10>]
} as IItemStack[][string];

val pane_variations = {
    "": [
        <minecraft:glass_pane>,
        <chisel:glasspane>,
        <chisel:glasspane:5>,
        <chisel:glasspane:11>
    ],
    "chinese": [<chisel:glasspane:1>, <chisel:glasspane1>],
    "japanese": [<chisel:glasspane:2>, <chisel:glasspane1:1>],
    "ironbars": [
        <chisel:glasspane:3>,
        <chisel:glasspane:6>,
        <chisel:glasspane:7>,
        <chisel:glasspane:12>,
        <chisel:glasspane:13>,
        <chisel:glasspane:14>
    ],
    "stone": [<chisel:glasspane:8>, <chisel:glasspane:10>]
} as IItemStack[][string];

for name, bars in chisel_bars {
    plus(name ~ "_glass", chisel_glass[name] * 5, bars, glass);
}

var groupName as string;
Carving.removeGroup("glass");
Carving.removeGroup("glasspane");

for name, blocks in glass_variations {
    groupName = "glass" ~ name;
    Carving.addGroup(groupName);

    for block in blocks {
        Carving.addVariation(groupName, block);
    }
}

for name, blocks in pane_variations {
    groupName = "glasspane" ~ name;
    Carving.addGroup(groupName);

    for block in blocks {
        Carving.addVariation(groupName, block);
    }
}
