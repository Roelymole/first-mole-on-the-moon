#modloaded biomesoplenty

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import scripts.utils.patterns.fullgrid;

val charcoal = <minecraft:coal:1>;
val ash = <biomesoplenty:ash>;

recipes.removeByRecipeName("biomesoplenty:coal_from_ash");

if (loadedMods has "galacticrafttweaker") {
    mods.GalacticraftTweaker.addCompressorShapelessRecipe(
        charcoal, ash, ash, ash, ash, ash, ash, ash, ash, ash
    );
} else {
    fullgrid("ash_to_charcoal", charcoal, ash);
}
