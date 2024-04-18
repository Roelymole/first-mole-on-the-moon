#modloaded buildingblocks chisel
#priority 100

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import mods.chisel.Carving;

val blocks = {
    "granite": [
        <buildingblocks:morestones>,
        <chisel:granite>
    ],
    "diorite": [
        <buildingblocks:morestones:2>,
        <chisel:diorite>
    ],
    "andesite": [
        <buildingblocks:morestones:4>,
        <chisel:andesite>
    ],
    "limestone": [
        <buildingblocks:morestones:7>,
        <chisel:limestone>
    ],
    "marble": [
        <buildingblocks:morestones:11>,
        <chisel:marble>
    ],
    "basalt": [
        <buildingblocks:morestones2:3>,
        <chisel:basalt>
    ],
    "sandstoneyellow": [
        <buildingblocks:morestones:15>,
        <chisel:sandstoneyellow>
    ],
    "sandstonered": [
        <buildingblocks:morestones2:7>,
        <chisel:sandstonered>
    ]
} as IItemStack[][string];

val entries = {
    "granite": [
        <ore:cobbleGranite>,
        <ore:stoneGranite>
    ],
    "diorite": [
        <ore:cobbleDiorite>,
        <ore:stoneDiorite>
    ],
    "andesite": [
        <ore:cobbleAndesite>,
        <ore:stoneAndesite>
    ],
    "limestone": [
        <ore:cobbleLimestone>,
        <ore:stoneLimestone>
    ],
    "marble": [
        <ore:cobbleMarble>,
        <ore:stoneMarble>
    ],
    "basalt": [
        <ore:cobbleBasalt>,
        <ore:stoneBasalt>
    ],
    "sandstoneyellow": [
        <ore:cobbleSandstoneYellow>,
        <ore:stoneSandstoneYellow>
    ],
    "sandstonered": [
        <ore:cobbleSandstoneRed>,
        <ore:stoneSandstoneRed>
    ]
} as IOreDictEntry[][string];

var group_name = "";
for name, block in blocks {
    entries[name][0].addItems([block[0], block[1]]);
    entries[name][1].remove(block[1]);

    /*
    group_name = name ~ "_cobblestone";
    Carving.addGroup(group_name);
    Carving.addVariation(group_name, block[0]);
    Carving.addVariation(group_name, block[1]);
    Carving.removeVariation(name, block[1]);
    */
}
