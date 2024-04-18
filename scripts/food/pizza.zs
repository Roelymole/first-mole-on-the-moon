#modloaded nuclearcraft

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import scripts.utils.patterns.cakerecipe;

val pizza = <nuclearcraft:dominos>;
val bread = <minecraft:bread>;
val cheese = <jmc:cheese>;
val chicken = <minecraft:cooked_chicken>;
val pork = <minecraft:cooked_porkchop>;
val mushroom = <minecraft:brown_mushroom>;

recipes.remove(pizza * 4);
recipes.addShapedMirrored("pizza", pizza * 4,
    [[cheese, cheese, cheese],
     [pork, mushroom, chicken],
     [bread, bread, bread]]
);
recipes.addHiddenShaped("pizza_alt", pizza * 4,
    [[cheese, cheese, cheese],
     [mushroom, chicken, pork],
     [bread, bread, bread]],
    null, null, true
);
recipes.addHiddenShaped("pizza_alt2", pizza * 4,
    [[cheese, cheese, cheese],
     [chicken, pork, mushroom],
     [bread, bread, bread]],
    null, null, true
);
