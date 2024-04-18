#modloaded nuclearcraft chisel

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IItemDefinition;
import crafttweaker.liquid.ILiquidStack;
import mods.nuclearcraft.Infuser;

var sandstone = <minecraft:sandstone>.definition;
var endstone = <minecraft:end_stone>.definition;
val molten_ender = <liquid:ender> * 250;

val chisel_sandstone = {
    [<chisel:sandstoneyellow>, <chisel:endstone>]: 15,
    [<chisel:sandstoneyellow1>, <chisel:endstone1>]: 9,
    [<chisel:sandstoneyellow2>, <chisel:endstone2>]: 6
} as int[IItemStack[]];

recipes.remove(<minecraft:end_bricks> * 4);
recipes.remove(<minecraft:purpur_pillar>);

Infuser.removeRecipeWithOutput(<minecraft:end_stone>);

// Create normal End Stone from Cobblestone-like Sandstone
Infuser.addRecipe(<minecraft:sandstone>, molten_ender, <minecraft:end_stone>);
Infuser.addRecipe(<buildingblocks:morestones:15>, molten_ender, <minecraft:end_stone>);

// Create Chisel's End Stone from matching Sandstone
for items, n in chisel_sandstone {
    sandstone = items[0].definition;
    endstone = items[1].definition;
    for i in 0 to n + 1 {
        Infuser.addRecipe(sandstone.makeStack(i), molten_ender, endstone.makeStack(i));
    }
}

// Create End Stone Bricks from JEI's Sandstone
if (loadedMods has "buildingblocks") {
    val buildingblocks = {
        <buildingblocks:morestones2:1>: <buildingblocks:morestones2:13>,
        <buildingblocks:morestones2>: <minecraft:end_bricks>,
        <buildingblocks:bricksandstonestair>: <buildingblocks:brickendstonestair>,
        <buildingblocks:bricksandstoneslab>: <buildingblocks:brickendstoneslab>
    } as IItemStack[IItemStack];

    for sand, end in buildingblocks {
        Infuser.addRecipe(sand, molten_ender, end);
    }
}
