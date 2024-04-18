#modloaded buildingblocks chisel

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import mods.chisel.Carving;

val outputs = [
    <minecraft:sandstone:1>,
    <minecraft:sandstone:2> * 4,
    <buildingblocks:morestones:14> * 4,
    <buildingblocks:morestones2> * 4,
    <buildingblocks:morestones2:1> * 4,
    <minecraft:red_sandstone:1>,
    <minecraft:red_sandstone:2> * 4,
    <buildingblocks:morestones2:6> * 4,
    <buildingblocks:morestones2:8> * 4,
    <buildingblocks:morestones2:9> * 4
] as IItemStack[];

for output in outputs {
    recipes.remove(output);
}

if (loadedMods has "biomesoplenty") {
    recipes.remove(<biomesoplenty:white_sandstone:1>);
    recipes.remove(<biomesoplenty:white_sandstone:2> * 4);
}

Carving.addGroup("sandstone_stairs");
Carving.addVariation("sandstone_stairs", <minecraft:sandstone_stairs>);
Carving.addVariation("sandstone_stairs", <buildingblocks:bricksandstonestair>);

Carving.addGroup("sandstone_slab");
Carving.addVariation("sandstone_slab", <minecraft:stone_slab:1>);
Carving.addVariation("sandstone_slab", <buildingblocks:bricksandstoneslab>);

Carving.addGroup("red_sandstone_stairs");
Carving.addVariation("red_sandstone_stairs", <minecraft:red_sandstone_stairs>);
Carving.addVariation("red_sandstone_stairs", <buildingblocks:brickredsandstonestair>);

Carving.addGroup("red_sandstone_slab");
Carving.addVariation("red_sandstone_slab", <minecraft:stone_slab2>);
Carving.addVariation("red_sandstone_slab", <buildingblocks:brickredsandstoneslab>);
