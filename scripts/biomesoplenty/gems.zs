#modloaded biomesoplenty

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;

val ruby = <biomesoplenty:gem:1>;
val topaz = <biomesoplenty:gem:3>;
val amber = <biomesoplenty:gem:7>;
val peridot = <biomesoplenty:gem:2>;
val emerald = <minecraft:emerald>;
val malachite = <biomesoplenty:gem:5>;
val sapphire = <biomesoplenty:gem:6>;
val tanzanite = <biomesoplenty:gem:4>;
val artifact = <biomesoplenty:terrestrial_artifact>;

recipes.remove(artifact);
recipes.addShaped("terrestrial_artifact", artifact,
    [[ruby, topaz, amber],
     [tanzanite, null, peridot],
     [sapphire, malachite, emerald]]
);
