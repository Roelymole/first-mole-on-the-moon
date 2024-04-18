#modloaded biomesoplenty chisel
#priority 50

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import mods.chisel.Carving;

val dirt = [
    <minecraft:dirt>,
    <chisel:dirt:6>,
    <chisel:dirt:9>,
    <chisel:dirt:10>,
    <chisel:dirt:11>,
    <chisel:dirt:12>,
    <chisel:dirt:13>,
    <chisel:dirt:14>,
    <chisel:dirt:15>
] as IItemStack[];

val mud_bricks = [
    <biomesoplenty:mud_brick_block>,
    <chisel:dirt>,
    <chisel:dirt:1>,
    <chisel:dirt:2>,
    <chisel:dirt:3>,
    <chisel:dirt:4>,
    <chisel:dirt:5>,
    <chisel:dirt:7>,
    <chisel:dirt:8>
] as IItemStack[];

<ore:dirt>.removeItems(mud_bricks);
<ore:brickMud>.addItems(mud_bricks);

Carving.removeGroup("dirt");
Carving.addGroup("dirt");
Carving.addGroup("mudbricks");

for block in dirt {
    Carving.addVariation("dirt", block);
}

for block in mud_bricks {
    Carving.addVariation("mudbricks", block);
}
