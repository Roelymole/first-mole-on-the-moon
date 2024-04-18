#modloaded buildingblocks

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;

val stones = {
    <minecraft:stone:1>: <buildingblocks:morestones>,
    <minecraft:stone:3>: <buildingblocks:morestones:2>,
    <minecraft:stone:5>: <buildingblocks:morestones:4>,
    <buildingblocks:morestones:6>: <buildingblocks:morestones:7>,
    <buildingblocks:morestones:10>: <buildingblocks:morestones:11>,
    <buildingblocks:morestones:14>: <buildingblocks:morestones:15>,
    <buildingblocks:morestones2:6>: <buildingblocks:morestones2:7>
} as IItemStack[IItemStack];

for stone, cobblestone in stones {
    furnace.remove(stone);
    furnace.addRecipe(stone, cobblestone, 0.2);
}

/*
val smooth_sandstone = <buildingblocks:morestones:14>;
val smooth_red_sandstone = <buildingblocks:morestones2:6>;
val sandstone = <minecraft:sandstone:*>;
val red_sandstone = <minecraft:red_sandstone:*>;

furnace.addRecipe(smooth_sandstone, sandstone, 0.2);
furnace.addRecipe(smooth_red_sandstone, red_sandstone, 0.2);
*/
