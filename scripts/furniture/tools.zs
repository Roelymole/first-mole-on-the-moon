#modloaded cfm galacticraftcore nuclearcraft

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import scripts.utils.patterns.diagonal;

val knife = <cfm:item_knife>;
val spatula = <cfm:item_spatula>;
val crowbar = <cfm:item_crow_bar>;

val steel = <nuclearcraft:alloy:5>;
val bronze = <galacticraftcore:basic_item:10>;
val iron = <galacticraftcore:basic_item:11>;
val ingot = <minecraft:iron_ingot>;
val bars = <ore:ironBars>;

crowbar.maxStackSize = 1;

recipes.addShapedMirrored("knife", knife,
    [[null, null, iron],
     [null, iron, iron],
     [steel, iron, null]]
);
diagonal("spatula", spatula, ingot, ingot, bars);
recipes.addShapedMirrored("crowbar", crowbar,
    [[iron, bronze],
     [null, bronze],
     [null, iron]]
);
