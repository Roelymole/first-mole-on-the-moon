#modloaded davincisvessels nuclearcraft

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

val seat = <davincisvessels:seat>;
val steel = <nuclearcraft:alloy:5>;
val plate = <galacticraftcore:basic_item:9>;
val wool = <ore:blockWoolRed>;

recipes.remove(seat);
recipes.addShapedMirrored("passenger_seat", seat,
    [[steel,  wool,  null],
     [steel,  wool,  wool],
     [plate, plate, plate]]
);
