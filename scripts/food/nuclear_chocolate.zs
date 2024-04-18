#modloaded jmc appliedenergistics2 nuclearcraft
#priority 50

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import scripts.utils.patterns.cakerecipe;

val cake = <jmc:chocolate_cake>;
val chocolate = <nuclearcraft:milk_chocolate>;
val cocoa = <nuclearcraft:cocoa_solids>;
val milk = <minecraft:milk_bucket>;
val sugar = <minecraft:sugar>;
val egg = <minecraft:egg>;
val flour = <appliedenergistics2:material:4>;

recipes.remove(cake);
cakerecipe("chocolate_cake", cake, chocolate | milk, sugar | egg, flour | cocoa);
