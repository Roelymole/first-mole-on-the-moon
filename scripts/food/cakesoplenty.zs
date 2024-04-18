#modloaded jmc appliedenergistics2 biomesoplenty

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import scripts.utils.patterns.cakerecipe;

val christmas = <jmc:christmas_cake>;
val red_cake = <jmc:red_mushroom_cake>;
val brown_cake = <jmc:brown_mushroom_cake>;

val berry = <biomesoplenty:berries>;
val ethanol = <forge:bucketfilled>.withTag({FluidName: "ethanol", Amount: 1000});
val red_mushroom = <minecraft:red_mushroom>;
val brown_mushroom = <minecraft:brown_mushroom>;
val powder = <biomesoplenty:shroompowder>;
val milk = <minecraft:milk_bucket>;
val sugar = <minecraft:sugar>;
val egg = <minecraft:egg>;
val flour = <appliedenergistics2:material:4>;

recipes.remove(christmas);
recipes.remove(red_cake);
recipes.remove(brown_cake);

cakerecipe("christmas_cake", christmas, milk | berry, sugar | egg, flour | ethanol);
cakerecipe("red_mushroom_cake", red_cake, red_mushroom, sugar | egg, powder);
cakerecipe("brown_mushroom_cake", brown_cake, brown_mushroom, sugar | egg, powder);
