#modloaded jmc appliedenergistics2

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import scripts.utils.patterns.cakerecipe;

val tnt_cake = <jmc:tnt_cake>;
val poison_cake = <jmc:poison_cake>;
val gunpowder = <minecraft:gunpowder>;
val poison = <forge:bucketfilled>.withTag({FluidName: "poison", Amount: 1000});
val milk = <minecraft:milk_bucket>;
val sugar = <minecraft:sugar>;
val egg = <minecraft:egg>;
val flour = <appliedenergistics2:material:4>;

recipes.remove(tnt_cake);
recipes.remove(poison_cake);

cakerecipe("tnt_cake", tnt_cake, milk, gunpowder | egg, flour);
cakerecipe("poison_cake", poison_cake, milk | poison, sugar | egg, flour);
