#modloaded galacticraftcore galacticrafttweaker
#priority 99

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import mods.GalacticraftTweaker.removeCompressorRecipe;
import mods.GalacticraftTweaker.addCompressorShapelessRecipe;

val meteoric_ingot = <galacticraftcore:item_basic_moon>;
val compressed_meteoric = <galacticraftcore:item_basic_moon:1>;
val desh_ingot = <galacticraftplanets:item_basic_mars:2>;
val compressed_desh = <galacticraftplanets:item_basic_mars:5>;

removeCompressorRecipe(compressed_meteoric);
removeCompressorRecipe(compressed_desh);

addCompressorShapelessRecipe(compressed_meteoric, meteoric_ingot, meteoric_ingot);
addCompressorShapelessRecipe(compressed_desh, desh_ingot, desh_ingot);
