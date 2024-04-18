#modloaded contenttweaker cfm

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;

val nuggets = <contenttweaker:raw_chicken_nuggets>;
val diced = <contenttweaker:diced_chicken>;
val flour = <appliedenergistics2:material:4>;
val egg = <minecraft:egg>;

// Potentially add breadcrumbs as another ingredient
recipes.addShapeless("chicken_nuggets", nuggets,
    [diced, flour, egg]
);
