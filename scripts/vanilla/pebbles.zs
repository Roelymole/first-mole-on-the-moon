#modloaded buildingblocks

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import scripts.utils.patterns.fullgrid;

val cobblestone = <minecraft:cobblestone>;
val pebbles = <buildingblocks:pebbles>;

fullgrid("cobble_from_pebbles", cobblestone, pebbles, true);
