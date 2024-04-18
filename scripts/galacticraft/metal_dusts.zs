#modloaded nuclearcraft galacticraftcore galacticraftplanets
#priority 50

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import mods.nuclearcraft.ChanceItemIngredient;
import mods.nuclearcraft.Manufactory;
import mods.nuclearcraft.Melter;
import mods.nuclearcraft.Pressurizer;

val ingots = {
    "Meteoric Iron": <galacticraftcore:item_basic_moon>,
    "Desh": <galacticraftplanets:item_basic_mars:2>,
    "Titanium": <galacticraftplanets:item_basic_asteroids>
} as IItemStack[string];

val dusts = {
    "Meteoric Iron": <nuclearcraft:gem_dust:2>,
    "Desh": <nuclearcraft:gem_dust:9>,
    "Titanium": <nuclearcraft:gem_dust:10>
} as IItemStack[string];

val xp = {
    "Meteoric Iron": 0.85,
    "Desh": 0.85,
    "Titanium": 1.0
} as float[string];

val raw_meteoric_iron = <galacticraftcore:meteoric_iron_raw>;

var ingot as IItemStack;
for material, dust in dusts {
    ingot = ingots[material];
    furnace.addRecipe(ingot, dust, xp[material]);
    Manufactory.addRecipe(ingot, dust);
}

Manufactory.addRecipe(raw_meteoric_iron, ChanceItemIngredient.create(dusts["Meteoric Iron"] * 2, 50, 1));

Pressurizer.removeRecipeWithInput(dusts["Meteoric Iron"]);
Melter.removeRecipeWithInput(dusts["Meteoric Iron"]);
Melter.removeRecipeWithInput(dusts["Titanium"]);
