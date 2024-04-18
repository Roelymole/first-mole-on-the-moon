#modloaded nuclearcraft galacticraftcore galacticraftplanets
#priority 2

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import mods.nuclearcraft.Infuser;
import scripts.utils.patterns.alternate;
import scripts.utils.patterns.surround;

val ingredients = {
    "meteoric": [
        <nuclearcraft:solid_fission_sink2:10>,
        <galacticraftcore:item_basic_moon>],
    "desh": [
        <nuclearcraft:solid_fission_sink2:8>,
        <galacticraftplanets:item_basic_mars:2>],
    "titanium": [
        <nuclearcraft:solid_fission_sink2:9>,
        <galacticraftplanets:item_basic_asteroids>]
} as IItemStack[][string];

val display_names = {
    "meteoric": "Meteoric Iron",
    "desh": "Desh",
    "titanium": "Titanium"
} as string[string];

val empty_heat_sink = <nuclearcraft:part:14>;
val cheese_heat_sink = <nuclearcraft:solid_fission_sink2:11>;
val nitrogen_heat_sink = <nuclearcraft:solid_fission_sink2:12>;
val argon_heat_sink = <nuclearcraft:solid_fission_sink2:14>;
val cheese = <galacticraftcore:cheese_curd>;
val nitrogen = <liquid:liquidnitrogen>;
val argon = <liquid:liquidargon>;

argon_heat_sink.addShiftTooltip("Liquid Argon can be obtained using a Gas Liquefier with an Atmospheric Valve on Mars.");

for name, items in ingredients {
    recipes.remove(items[0]);
    alternate(name ~ "_heat_sink", items[0], null, items[1], empty_heat_sink);
}

recipes.remove(cheese_heat_sink);
surround("cheese_heat_sink", cheese_heat_sink, cheese, empty_heat_sink);

//recipes.remove(nitrogen_heat_sink);
//Infuser.removeRecipeWithOutput(nitrogen_heat_sink);
Infuser.removeRecipeWithOutput(argon_heat_sink);
Infuser.addRecipe(empty_heat_sink, nitrogen * 1000, nitrogen_heat_sink);
Infuser.addRecipe(empty_heat_sink, argon * 1000, argon_heat_sink);
