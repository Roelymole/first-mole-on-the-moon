#modloaded jei

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;

val paper = <minecraft:paper>;
val gunpowder = <minecraft:gunpowder>;
val flight_1 = <minecraft:fireworks>.withTag({Flight: 1 as byte});
val flight_2 = <minecraft:fireworks>.withTag({Flight: 2 as byte});
val flight_3 = <minecraft:fireworks>.withTag({Flight: 3 as byte});

// Add crafting recipes for common rockets to allow faster crafting
recipes.addShapeless("flight_duration_1", flight_1 * 3, [paper, gunpowder]);
recipes.addShapeless("flight_duration_2", flight_2 * 3, [paper, gunpowder, gunpowder]);
recipes.addShapeless("flight_duration_3", flight_3 * 3, [paper, gunpowder, gunpowder, gunpowder]);