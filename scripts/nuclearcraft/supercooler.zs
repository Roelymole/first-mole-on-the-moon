#modloaded nuclearcraft biomesoplenty

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;

val supercooler = <nuclearcraft:supercooler>;
val plating = <nuclearcraft:part:1>;
val magnesium_diboride = <nuclearcraft:alloy:3>;
val gem = <biomesoplenty:gem:4>;
val chassis = <nuclearcraft:part:10>;
val servo = <nuclearcraft:part:7>;

recipes.remove(supercooler);
recipes.addShaped("supercooler", supercooler,
    [[plating, magnesium_diboride, plating],
     [gem, chassis, gem],
     [plating, servo, plating]]
);
