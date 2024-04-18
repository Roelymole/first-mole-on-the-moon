#modloaded contenttweaker cfm galacticraftcore

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import scripts.utils.patterns.vertical;

val bread = <cfm:item_bread_slice>;
val cheese = <galacticraftcore:food:4>;
val cheese_sandwich = <contenttweaker:cheese_sandwich>;

recipes.addShapeless("cheese_sandwich", cheese_sandwich,
    [bread, cheese, bread]
);
