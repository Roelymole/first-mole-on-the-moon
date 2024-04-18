#modloaded jmc appliedenergistics2

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import scripts.utils.patterns.cakerecipe;

val apple_cake = <jmc:apple_cake>;
val golden_cake = <jmc:golden_apple_cake>;
val apple = <minecraft:apple>;
val golden_apple = <minecraft:golden_apple>;
val glowstone = <minecraft:glowstone_dust>;
val milk = <minecraft:milk_bucket>;
val sugar = <minecraft:sugar>;
val egg = <minecraft:egg>;
val flour = <appliedenergistics2:material:4>;

recipes.remove(apple_cake);
recipes.remove(golden_cake);

cakerecipe("apple_cake", apple_cake, milk | apple, sugar | egg, flour | apple);
cakerecipe("golden_apple_cake", golden_cake, golden_apple, sugar | egg, glowstone);
