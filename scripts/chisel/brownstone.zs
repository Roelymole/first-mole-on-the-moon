#modloaded chisel

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import mods.chisel.Carving;

val brown = <chisel:brownstone>;
val half = <chisel:brownstone:8>;
val weathered = <chisel:brownstone:4>;

val groups = {
    "brownstone": [
        brown,
        <chisel:brownstone:1>,
        <chisel:brownstone:2>,
        <chisel:brownstone:3>
    ],
    "brownstone_half_weathered": [
        half,
        <chisel:brownstone:9>
    ],
    "brownstone_weathered": [
        weathered,
        <chisel:brownstone:5>,
        <chisel:brownstone:6>,
        <chisel:brownstone:7>
    ]
} as IItemStack[][string];

recipes.remove(brown * 4);
recipes.addShaped("brownstone_half_weathered", half * 4,
    [[    brown, brown    ],
     [weathered, weathered]]
);

Carving.removeGroup("brownstone");
for name, blocks in groups {
    Carving.addGroup(name);
    for block in blocks {
        Carving.addVariation(name, block);
    }
}
