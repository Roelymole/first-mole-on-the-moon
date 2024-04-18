#modloaded chisel

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import mods.chisel.Carving;

val raw_guts = [
    <chisel:netherrack:7>,
    <chisel:netherbrick:2>,
    <chisel:netherbrick:1>
] as IItemStack[];
val guts = [
    <chisel:netherrack:8>,
    <chisel:netherbrick:3>,
    <chisel:netherbrick:4>
] as IItemStack[];
val raw_meat = [
    <chisel:netherrack:10>,
    <chisel:netherbrick:10>,
    <chisel:netherbrick:11>
] as IItemStack[];
val meat = [
    <chisel:netherrack:9>,
    <chisel:netherbrick:9>,
    <chisel:netherbrick:12>
] as IItemStack[];
val nether_brick = [
    <minecraft:nether_brick>,
    <chisel:netherbrick:15>
] as IItemStack[];
val red_brick = [
    <minecraft:red_nether_brick>,
    <chisel:netherbrick:13>,
    <chisel:netherbrick:14>
] as IItemStack[];
val blue_netherrack = [
    <chisel:netherrack:3>,
    <chisel:netherrack:4>,
    <chisel:netherbrick>
] as IItemStack[];

Carving.removeGroup("netherrack");
Carving.removeGroup("netherbrick");

if (loadedMods has "buildingblocks") {
    Carving.addGroup("netherrack");
    Carving.addVariation("netherrack", <minecraft:netherrack>);
    Carving.addVariation("netherrack", <buildingblocks:morestones2:10>);
    Carving.addVariation("netherrack", <buildingblocks:morestones2:11>);
}

Carving.addGroup("raw_guts");
for block in raw_guts {
    Carving.addVariation("raw_guts", block);
}
Carving.addGroup("guts");
for block in guts {
    Carving.addVariation("guts", block);
}
Carving.addGroup("raw_meat");
for block in raw_meat {
    Carving.addVariation("raw_meat", block);
}
Carving.addGroup("meat");
for block in meat {
    Carving.addVariation("meat", block);
}
Carving.addGroup("nether_brick");
for block in nether_brick {
    Carving.addVariation("nether_brick", block);
}
Carving.addGroup("red_brick");
for block in red_brick {
    Carving.addVariation("red_brick", block);
}
Carving.addGroup("blue_netherrack");
for block in blue_netherrack {
    Carving.addVariation("blue_netherrack", block);
}

for i in 0 to 3 {
    furnace.addRecipe(guts[i], raw_guts[i], 0.1);
    furnace.addRecipe(meat[i], raw_meat[i], 0.1);
}

if (loadedMods has "nuclearcraft") {
    val blood = <liquid:blood> * 100;
    val lava = <liquid:lava> * 100;
    val bloody = {
        <chisel:netherrack:3>: <chisel:netherrack:13>,
        <minecraft:netherrack>: <chisel:netherrack>
    } as IItemStack[IItemStack];
    val lava_bricks = {
        <chisel:netherbrick>: <chisel:netherbrick:5>,
        <chisel:netherbrick:13>: <chisel:netherbrick:6>,
        <buildingblocks:morestones2:4>: <chisel:netherbrick:7>,
        <minecraft:stonebrick>: <chisel:netherbrick:8>
    } as IItemStack[IItemStack];

    for input, output in bloody {
        mods.nuclearcraft.Infuser.addRecipe(input, blood, output);
    }
    for input, output in lava_bricks {
        mods.nuclearcraft.Infuser.addRecipe(input, lava, output);
    }
}
