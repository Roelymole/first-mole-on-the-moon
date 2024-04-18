#modloaded cableflux

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

val redstone = <minecraft:redstone>;
val glass = <ore:blockGlass>;
val certus = <ore:certusQuartz>;
val gold = <minecraft:gold_ingot>;
val diamond = <ore:blockDiamond>;
val eye = <minecraft:ender_eye>;

val first = <cableflux:fec_1>;
val second = <cableflux:fec_2>;
val third = <cableflux:fec_3>;

recipes.removeShaped(first);
recipes.removeShaped(second);
recipes.removeShaped(third);

recipes.addShaped("tier_1_cable", first * 6,
    [[redstone, glass, redstone],
     [redstone, glass, redstone],
     [redstone, glass, redstone]]
);
recipes.addShaped("tier_2_cable", second * 6,
    [[redstone, certus, redstone],
     [redstone, certus, redstone],
     [redstone, certus, redstone]]
);
recipes.addShaped("tier_3_cable", third * 6,
    [[gold, eye, gold],
     [gold, diamond, gold],
     [gold, eye, gold]]
);
