#loadedmods buildingblocks galacticrafttweaker

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import mods.GalacticraftTweaker.addCompressorShapelessRecipe;

val marble = <buildingblocks:morestones:10>;
val limestone = <buildingblocks:morestones:6>;

addCompressorShapelessRecipe(marble, limestone, limestone);
