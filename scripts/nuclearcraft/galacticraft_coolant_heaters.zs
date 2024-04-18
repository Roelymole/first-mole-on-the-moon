#modloaded nuclearcraft galacticraftcore galacticraftplanets
#priority 2

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import mods.nuclearcraft.Infuser;
import scripts.utils.patterns.alternate;
import scripts.utils.patterns.surround;

val ingredients = {
    "meteoric": [
        <nuclearcraft:salt_fission_heater2:10>,
        <nuclearcraft:fission_heater_port2:10>,
        <galacticraftcore:item_basic_moon>],
    "desh": [
        <nuclearcraft:salt_fission_heater2:8>,
        <nuclearcraft:fission_heater_port2:8>,
        <galacticraftplanets:item_basic_mars:2>],
    "titanium": [
        <nuclearcraft:salt_fission_heater2:9>,
        <nuclearcraft:fission_heater_port2:9>,
        <galacticraftplanets:item_basic_asteroids>]
} as IItemStack[][string];

val display_names = {
    "meteoric": "Meteoric Iron",
    "desh": "Desh",
    "titanium": "Titanium"
} as string[string];

val empty_coolant_heater = <nuclearcraft:salt_fission_heater>;
val empty_port = <nuclearcraft:fission_heater_port>;
val cheese_coolant_heater = <nuclearcraft:salt_fission_heater2:11>;
val cheese_port = <nuclearcraft:fission_heater_port2:11>;
val nitrogen_coolant_heater = <nuclearcraft:salt_fission_heater2:12>;
val nitrogen_port = <nuclearcraft:fission_heater_port2:12>;
val argon_coolant_heater = <nuclearcraft:salt_fission_heater2:14>;
val argon_port = <nuclearcraft:fission_heater_port2:14>;
val cheese = <galacticraftcore:cheese_curd>;
val nitrogen = <liquid:liquidnitrogen>;
val argon = <liquid:liquidargon>;

argon_coolant_heater.addShiftTooltip("Liquid Argon can be obtained using a Gas Liquefier with an Atmospheric Valve on Mars.");
argon_port.addShiftTooltip("Liquid Argon can be obtained using a Gas Liquefier with an Atmospheric Valve on Mars.");

for name, items in ingredients {
    recipes.remove(items[0]);
    recipes.remove(items[1]);
    alternate(name ~ "_coolant_heater", items[0], null, items[2], empty_coolant_heater);
    alternate(name ~ "_port", items[1], null, items[2], empty_port);
}

recipes.remove(cheese_coolant_heater);
recipes.remove(cheese_port);
surround("cheese_coolant_heater", cheese_coolant_heater, cheese, empty_coolant_heater);
surround("cheese_port", cheese_port, cheese, empty_port);

//recipes.remove(nitrogen_coolant_heater);
//Infuser.removeRecipeWithOutput(nitrogen_coolant_heater);
Infuser.removeRecipeWithOutput(argon_coolant_heater);
Infuser.removeRecipeWithOutput(argon_port);
Infuser.addRecipe(empty_coolant_heater, nitrogen * 1000, nitrogen_coolant_heater);
Infuser.addRecipe(empty_port, nitrogen * 1000, nitrogen_port);
Infuser.addRecipe(empty_coolant_heater, argon * 1000, argon_coolant_heater);
Infuser.addRecipe(empty_port, argon * 1000, argon_port);
