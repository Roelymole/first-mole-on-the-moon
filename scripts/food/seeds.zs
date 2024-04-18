#modloaded jmc appliedenergistics2
#priority 50

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

val cake = <jmc:seed_cake>;
val seeds = <ore:seed>;
val milk = <minecraft:milk_bucket>;
val sugar = <minecraft:sugar>;
val egg = <minecraft:egg>;
val flour = <appliedenergistics2:material:4>;

recipes.remove(cake);
recipes.addShaped("seed_cake", cake,
    [[milk, seeds, milk],
     [sugar, egg, sugar],
     [seeds, flour, seeds]]
);
