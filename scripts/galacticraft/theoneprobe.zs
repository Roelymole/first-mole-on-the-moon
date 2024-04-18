#modloaded theoneprobe

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;

val probe = <theoneprobe:probe>;
val redstone = <minecraft:redstone>;
val comparator = <minecraft:comparator>;
val aluminium = <galacticraftcore:basic_item:5>;
val wafer = <galacticraftcore:basic_item:13>;

recipes.remove(probe);
recipes.addShapedMirrored("theoneprobe", probe,
    [[   null,     null,  comparator],
     [aluminium,   wafer,  aluminium],
     [aluminium, redstone, aluminium]]
);
