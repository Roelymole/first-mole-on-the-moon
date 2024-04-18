#modloaded buildingblocks chisel

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import mods.chisel.Carving;

val blocks = [
    <minecraft:stone:2>,
    <minecraft:stone:4>,
    <minecraft:stone:6>,
    <minecraft:stonebrick>,
    <buildingblocks:morestones:1>,
    <buildingblocks:morestones:3>,
    <buildingblocks:morestones:5>,
    <buildingblocks:morestones:8>,
    <buildingblocks:morestones:9>,
    <buildingblocks:morestones:12>,
    <buildingblocks:morestones:13>,
    <buildingblocks:morestones2:4>,
    <buildingblocks:morestones2:5>,
    <buildingblocks:morestones2:10>,
    <buildingblocks:morestones2:11>,
    <buildingblocks:morestones2:13>,
    <buildingblocks:morestones3:1>,
    <buildingblocks:morestones3:2>,
    <buildingblocks:morestones3:4>,
    <buildingblocks:morestones3:5>,
    <buildingblocks:agedbricks>,
    <buildingblocks:cotswoldbricks>
] as IItemStack[];

val vines = <minecraft:vine>;
val overgrowth = <buildingblocks:overgrowth>;
recipes.remove(overgrowth * 8);

for block in blocks {
    recipes.remove(block * 4);
}

Carving.addGroup("acherite");
Carving.addGroup("terminochite");
Carving.addGroup("vines");
Carving.addGroup("agedbrickstair");

Carving.addVariation("acherite", <buildingblocks:morestones3>);
Carving.addVariation("acherite", <buildingblocks:morestones3:1>);
Carving.addVariation("acherite", <buildingblocks:morestones3:2>);
Carving.addVariation("terminochite", <buildingblocks:morestones3:3>);
Carving.addVariation("terminochite", <buildingblocks:morestones3:4>);
Carving.addVariation("terminochite", <buildingblocks:morestones3:5>);
Carving.addVariation("vines", vines);
Carving.addVariation("vines", overgrowth);
Carving.addVariation("agedbrickstair", <minecraft:brick_stairs>);
Carving.addVariation("agedbrickstair", <buildingblocks:brickagedbrickstair>);
