#modloaded nuclearcraft

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;

val electrolyser = <nuclearcraft:electrolyzer>;
val machine_chassis = <nuclearcraft:part:10>;
val cauldron = <minecraft:cauldron>;
val plating = <nuclearcraft:part>;
val solenoid = <nuclearcraft:part:4>;
val graphite = <nuclearcraft:ingot:8>;

recipes.addShaped("electrolyser", electrolyser,
    [[plating, solenoid, plating],
     [graphite, machine_chassis, graphite],
     [plating, cauldron, plating]]
);
