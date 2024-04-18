#modloaded galacticraftcore

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;

val burger = <galacticraftcore:food:8>;
val bun = <galacticraftcore:food:5>;
val cheese = <galacticraftcore:food:4>;
val ground_beef = <galacticraftcore:food:6>;
val patty = <galacticraftcore:food:7>;

if (loadedMods has "cfm") {
    recipes.remove(cheese * 6);
    recipes.remove(ground_beef * 2);
}

/*
recipes.remove(burger);
recipes.addShaped("cheeseburger", burger,
    [[bun],
     [cheese],
     [patty]]
);
*/
