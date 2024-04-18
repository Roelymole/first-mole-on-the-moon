#modloaded davincisvessels

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;

val anchor = <davincisvessels:anchorpoint>;
val block = <ore:blockIron>;
val iron = <minecraft:iron_ingot>;

recipes.remove(anchor);
recipes.addShaped("anchorpoint", anchor,
    [[null, iron, null],
     [iron, iron, iron],
     [block, block, block]]
);
