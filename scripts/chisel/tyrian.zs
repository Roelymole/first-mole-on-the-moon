#modloaded chisel galacticraftplanets nuclearcraft

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IItemDefinition;
import mods.chisel.Carving;
import scripts.utils.patterns.surround;

val moon_rock = <galacticraftcore:basic_block_moon:4>;

val tyrian = {
    <minecraft:iron_ingot>: [
        <chisel:tyrian:5>,
        <chisel:tyrian:4>,
        <chisel:tyrian:7>,
        <chisel:tyrian:15>
    ],
    <nuclearcraft:alloy:5>: [
        <chisel:tyrian>,
        <chisel:tyrian:1>,
        <chisel:tyrian:6>,
        <chisel:tyrian:10>
    ],
    <nuclearcraft:alloy:15>: [
        <chisel:tyrian:2>,
        <chisel:tyrian:3>
    ],
    <galacticraftplanets:item_basic_mars:2>: [
        <chisel:tyrian:12>,
        <chisel:tyrian:13>,
        <chisel:tyrian:14>
    ],
    <galacticraftplanets:item_basic_asteroids>: [
        <chisel:tyrian:8>,
        <chisel:tyrian:9>,
        <chisel:tyrian:11>
    ]
} as IItemStack[][IItemStack];

recipes.remove(<chisel:tyrian> * 32);
Carving.removeGroup("tyrian");

for ingot, blocks in tyrian {
    var groupName = "tyrian" ~ ingot.displayName.split(" ")[0];
    Carving.addGroup(groupName);
    for block in blocks {
        Carving.addVariation(groupName, block);
    }

    surround(groupName, blocks[0] * 8, moon_rock, ingot);
}
